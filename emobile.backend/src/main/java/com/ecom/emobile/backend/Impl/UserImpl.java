package com.ecom.emobile.backend.Impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.emobile.backend.Dao.UserDao;
import com.ecom.emobile.backend.Model.User;

@Repository
public class UserImpl implements UserDao{
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

	public User findById(String email) {
			
			Session session=sessionFactory.openSession();
			String hql = "FROM User u WHERE u.email = '" + email +"'" ;
			Query query = session.createQuery(hql);
			List results=null;
			results = query.list();
		/*	List results = query.list();*/
			if(results!=null)
				return (User) results.get(0);
			else
				return null;		
			
		}

	public boolean validate(String email, String password) {
		Session session=sessionFactory.openSession();
		String hql = "FROM User u WHERE u.email = '" + email +"' AND u.password ='" + password + "'" ;
		Query query = session.createQuery(hql);
		List results = query.list();
		if(results!=null)
			return true;
		
		else
			return false;		
		
	}
	
}
