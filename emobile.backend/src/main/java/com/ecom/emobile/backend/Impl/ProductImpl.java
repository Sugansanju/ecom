package com.ecom.emobile.backend.Impl;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.Product;
@Repository
public class ProductImpl implements ProductDao {
@Autowired
private SessionFactory sessionFactory;
public void save(Product entity) {
Session session=sessionFactory.openSession();
session.beginTransaction();
session.save(entity);
session.getTransaction().commit();
session.close();		
}

public void update(Product entity) {
	// TODO Auto-generated method stub
}
public Set<Product> findAll() {
	// TODO Auto-generated method stub
	return null;
}
public void delete(int id) {
	// TODO Auto-generated method stub
	
}
public Product findById(int id) {
	// TODO Auto-generated method stub
	return null;
}
}