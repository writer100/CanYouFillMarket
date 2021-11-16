package com.fill.market.cart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fill.market.cart.model.service.CartService;
import com.fill.market.cart.model.vo.Cart;

@Controller
public class CartController {
	
	@Autowired
	CartService cartService;
	
	// 1. 장바구니 추가
	@RequestMapping("/cart/cartInsert.do")
	public String cartInsert(@ModelAttribute Cart cart, HttpSession session) {
		String cartUserId = (String)session.getAttribute("cartUserId");
		cart.setCartUserId(cartUserId);
		
		// 장바구니에 추가하려는 상품이 이미 있는 지 확인
		int count = cartService.countCart(cart.getPNo(), cartUserId);
//		count == 0 ? cartService.updateCart(cart) : cartService.cartInsert(cart);
		if(count == 0) {
			// 없으면 insert
			cartService.cartInsert(cart);
		} else {
			// 있으면 update
			cartService.updateCart(cart);
		}
		return "cart/cartInsert";
	}
}
