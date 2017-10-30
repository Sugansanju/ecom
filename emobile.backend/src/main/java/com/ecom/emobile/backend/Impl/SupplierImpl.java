package com.ecom.emobile.backend.Impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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
public void delete(int id) {
	// TODO Auto-generated method stub	
}
public void update(Supplier entity) {
	// TODO Auto-generated method stub	
}
public Supplier findById(int id) {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	Criteria criteria=session.createCriteria(Supplier.class);
	criteria.add(Restrictions.eq("id", new Integer(id)));
	List list=criteria.list();
	session.getTransaction().commit();
	session.close();
	if(!list.isEmpty()){
		return (Supplier)list.get(0);
	}else{
		return null;
	}

}

public List<Supplier> findAll() {
	// TODO Auto-generated method stub
	Session session=sessionFactory.openSession();
	String hql = "FROM Supplier";
	Query query = session.createQuery(hql);
	List<Supplier> results =  query.list();
	System.out.println(results);
	//session.getTransaction().commit();
	return results;
}
}
