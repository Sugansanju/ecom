package com.ecom.emobile.backend.Model;

import java.util.ArrayList;
import java.util.List;


	public class Cart {
		private int id;
		private static List<CartItem> items=null;
		private double grandTotal;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public List<CartItem> getItems() {
			if(items==null)
				items=new ArrayList<CartItem>();
			return items;
		}
		public void setItems(List<CartItem> items) {
			this.items = items;
		}
		public double getGrandTotal() {
			double grand=0.0;
			for(CartItem c : items){
				grand+=c.getCost();
			}
			this.grandTotal=grand;
			return grand;
		}
}


