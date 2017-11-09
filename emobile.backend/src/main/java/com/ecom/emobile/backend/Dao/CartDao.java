package com.ecom.emobile.backend.Dao;

import java.util.List;

import com.ecom.emobile.backend.Model.Cart;
import com.ecom.emobile.backend.Model.CartItem;

public interface CartDao {
/*	Cart create(Cart cart);
	 	
	 	Cart read(String cartId);
	 	
	 	void update(String cartId, Cart cart);
	 	
		void delete(String cartId);
		
	 	Cart validate(String cartId);*/
	public List<CartItem> list(int cartId);
	public CartItem get(int id);	
	public boolean add(CartItem cartLine);
	public boolean update(CartItem cartLine);
	public boolean delete(CartItem cartLine);

	// fetch the CartLine based on cartId and productId
	public CartItem getByCartAndProduct(int cartId, int productId);		
		
	// updating the cart
	boolean updateCart(Cart cart);
	
	// list of available cartLine
	public List<CartItem> listAvailable(int cartId);
	
	// adding order details
	//boolean addOrderDetail(OrderDetail orderDetail);
	
}
