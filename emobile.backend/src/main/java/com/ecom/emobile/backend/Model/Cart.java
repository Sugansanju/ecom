package com.ecom.emobile.backend.Model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable{
private static final long serialVersionUID = -4045729241960416615L;
	
	private String cartId;
	private Map<String,CartItem> cartItems;
	private BigDecimal grandTotal;
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}
	public Map<String, CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(Map<String, CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public BigDecimal getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(BigDecimal grandTotal) {
		this.grandTotal = grandTotal;
	}
	
	
}

