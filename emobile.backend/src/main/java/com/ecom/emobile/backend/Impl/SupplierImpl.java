package com.ecom.emobile.backend.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.emobile.backend.Dao.SupplierDao;
import com.ecom.emobile.backend.Model.Supplier;

@Repository
public class SupplierImpl implements SupplierDao {
@Autowired
private SessionFactory sessionFactory;
	public void save(Supplier entity) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();
		session.close();
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public void update(Supplier entity) {
		// TODO Auto-generated method stub
		
	}

	public Supplier findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Supplier> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
