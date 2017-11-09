package com.ecom.emobile.backend.Model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cart")
public class Cart implements Serializable{
private static final long serialVersionUID = -4045729241960416615L;
	@Id
	@GeneratedValue
	private int id;
	/*private int cartId;
	private Map<String,CartItem> cartItems;
	private BigDecimal grandTotal;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
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
	*/
	/*@OneToOne
	private User user;
		
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
*/
	/*--------*/

	
	@Column(name = "grand_total")	
	private double grandTotal;
	@Column(name = "cart_Item")
	private int cartItem;
	
	/*
	 * setter and getters for the fields
	 * */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	
	
	public int getCartItem() {
		return cartItem;
	}
	public void setCartItem(int cartItem) {
		this.cartItem = cartItem;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", grandTotal=" + grandTotal + ", cartItem=" + cartItem + "]";
	}
	
}


