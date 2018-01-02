package com.ecom.emobile.backend.Impl;

import java.util.List;


import com.ecom.emobile.backend.Dao.CartDao;
import com.ecom.emobile.backend.Model.Cart;
import com.ecom.emobile.backend.Model.CartItem;


	public class CartImpl implements CartDao{
		private static Cart cart=new Cart();
		public void addItem(CartItem item) {	
			cart.getItems().add(item);
		}

		public void deleteItem(int id) {
			cart.getItems().remove(getItemById(id));		
		}	

		public List<CartItem> getAllItems() {
			return cart.getItems();
		}

		public CartItem getItemById(int id) {
			List<CartItem> items=cart.getItems();
			CartItem item=null;
			for(CartItem c : items){
				if(c.getId()==id)
					item=c;			
			}
			return item;
		}

}
