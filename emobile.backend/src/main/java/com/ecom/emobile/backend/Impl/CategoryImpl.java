package com.ecom.emobile.backend.Impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecom.emobile.backend.Dao.CategoryDao;
import com.ecom.emobile.backend.Model.Category;

@Repository
public class CategoryImpl implements CategoryDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void save(Category entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();		
		
	}

	public void delete(int id) {
		Session s=sessionFactory.openSession();
	 	String hql = "DELETE FROM Category c "  + 
	              "WHERE c.cid ='" + id +"'" ;
	 		Query query = s.createQuery(hql);
	 		query.executeUpdate();
	 		//s.getTransaction().commit();
	 		s.close();
	}

	public void update(Category entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.saveOrUpdate(entity);
		s.getTransaction().commit();
		s.close();		
		
	}

	public Category findById(int id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(Category.class);
		criteria.add(Restrictions.eq("cid", new Integer(id)));
		List list=criteria.list();
		session.getTransaction().commit();
		session.close();
		if(!list.isEmpty()){
			return (Category)list.get(0);
		}else{
			return null;
		}
	}

	public List<Category> findAll() {
		Session session=sessionFactory.openSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> results =  query.list();
		System.out.println(results);
		//session.getTransaction().commit();
		return results;
	}
	

}
