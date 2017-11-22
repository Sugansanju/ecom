package com.ecom.emobile.backend.Dao;

import java.util.List;

import com.ecom.emobile.backend.Model.CartItem;


	public interface CartDao {
		void addItem(CartItem item);
		void deleteItem(int id);
		List<CartItem> getAllItems();
		CartItem getItemById(int id);
	}
	

