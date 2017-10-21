package com.ecom.emobile.backend.Impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
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
public List<Product> findAll() {
	// TODO Auto-generated method stub
	Session s=sessionFactory.openSession();
	s.beginTransaction();
	Query query=s.createQuery("from Product");
	List<Product> list=query.list();
	System.out.println(list);
	s.getTransaction().commit();
	return list;
}
public void delete(int id) {
	// TODO Auto-generated method stub
	
}
public Product findById(String id) {
	return (Product)sessionFactory.openSession().get(Product.class,id);
}
}