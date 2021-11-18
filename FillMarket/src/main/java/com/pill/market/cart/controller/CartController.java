package com.pill.market.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fill.market.cart.model.service.CartService;
import com.fill.market.cart.model.vo.Cart;

@Controller
public class CartController {

	@Autowired
	CartService cartService;

	@RequestMapping("cartInsert.do")
	public String cartInsert(@ModelAttribute Cart cart, HttpSession session) {
		String userId = (String)session.getAttribute("userId");
		cart.setCartUserId(userId);
		// 추가하려는 상품이 장바구니에 있는지 검사
		int count = cartService.countCart(cart.getPNo(), userId);
		count = false ? cartService.updateCart(cart) : cartService.insertCart(cart);
		if(count == 0) {
			// 없으면 isnert
			cartService.insertCart(cart);
		} else {
			// 있으면 update
			cartService.updateCart(cart);
		}
		
		return "cart/cartList";
	}
	
	@RequestMapping("cartList.do")
	public ModelAndView cartList(HttpSession session, ModelAndView mav) {
		String userId = (String)session.getAttribute("userId");	// 세션에 저장된 userId
		Map<String, Object> map = new HashMap<String, Object>();
		
			
			List<Cart> list = cartService.listCart(userId);	//장바구니 정보
			int sumPrice = cartService.sumPrice(userId);
			int fee = sumPrice >= 100000 ? 0 : 3000;
			// 장바구니 전체 금액에 따라 배송비 구분
			// 10만원 이상 => 무료, 미만 => 3,000원
			
			map.put("list", list);				// 장바구니 정보를 map에 저장
			map.put("count", list.size());		// 장바구니 안 상품의 유무
			map.put("sumPrice", sumPrice);		// 장바구니 전체 금액
			map.put("fee", fee);				// 배송비
			map.put("allSum", sumPrice+fee);	// 전체 주문 금액
			mav.setViewName("cart/cartList"); 	// view(jsp)의 이름 저장
			mav.addObject("map", map);			// map의 변수 저장
			
			return mav;
	
	}
	
	@RequestMapping("cartDelete.do")
	public String cartDelete(@RequestParam int cNo) {
		cartService.deleteCart(cNo);
		
		return "cart/cartList.do";
	}
	
	@RequestMapping("cartUpdate.do")
	public String cartUpdate(@RequestParam int[] amount, @RequestParam int[] pNo, HttpSession session) {
		String userId = (String)session.getAttribute("userId");
		// 레코드의 갯수만큼 반복문 실행
		for(int i = 0; i < pNo.length; i++) {
			Cart cart = new Cart();
			cart.setCartUserId(userId);
			cart.setAmount(amount[i]);
			cart.setPNo(pNo[i]);
			cartService.modifyCart(cart);
		}
		
		return "cart/cartList"; 
	}
	

}











