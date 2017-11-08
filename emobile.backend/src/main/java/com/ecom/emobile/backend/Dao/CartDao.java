package com.ecom.emobile.backend.Dao;

import com.ecom.emobile.backend.Model.Cart;

public interface CartDao {
	Cart create(Cart cart);
	 	
	 	Cart read(String cartId);
	 	
	 	void update(String cartId, Cart cart);
	 	
		void delete(String cartId);
		
	 	Cart validate(String cartId);
}
