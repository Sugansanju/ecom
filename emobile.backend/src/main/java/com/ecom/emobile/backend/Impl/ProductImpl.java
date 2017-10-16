package com.ecom.emobile.backend.Impl;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.User;

@Repository
public class ProductImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	public void save(User entity) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();		
		
}
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}
	public void update(User entity) {
		// TODO Auto-generated method stub
		
	}
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	public Set<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}