package com.fill.market.cart.model.service;

import java.util.List;

import com.fill.market.cart.model.vo.Cart;

public interface CartService {
	
	int countCart(int pNo, String userId);

	int updateCart(Cart cart);

	int insertCart(Cart cart);

	List<Cart> listCart(String userId);

	int sumPrice(String userId);

	void deleteCart(int cNo);

	void modifyCart(Cart cart);


}
