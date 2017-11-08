package com.ecom.emobile.backend.Impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.emobile.backend.Dao.CartDao;
import com.ecom.emobile.backend.Model.Cart;

@Repository
public class CartImpl implements CartDao {
@Autowired
private SessionFactory sessionFactory;

	public Cart create(Cart cart) {
		// TODO Auto-generated method stub
		return null;
	}

	public Cart read(String cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void update(String cartId, Cart cart) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String cartId) {
		// TODO Auto-generated method stub
		
	}

	public Cart validate(String cartId) {
		// TODO Auto-generated method stub
		return null;
	}

}
