package com.angular.phoenix.backend.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.angular.phoenix.backend.dao.RegDao;
import com.angular.phoenix.backend.model.Reg;

@Repository
public class RegImpl implements RegDao{
	@Autowired
	private SessionFactory sessionFactory;
	public void save(Reg entity) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();		
		
		
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	public void update(Reg entity) {
		// TODO Auto-generated method stub
		
	}
	public boolean validate(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Reg> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Reg find(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Reg findById(String email) {
		// TODO Auto-generated method stub
		return null;
	}


}
