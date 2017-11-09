package com.ecom.emobile.backend.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.emobile.backend.Dao.CartDao;
import com.ecom.emobile.backend.Model.Cart;
import com.ecom.emobile.backend.Model.CartItem;

@Repository
@Transactional
public class CartImpl implements CartDao {
	@Autowired
	private SessionFactory sessionFactory;

	public List<CartItem> list(int cartId) {
		/*String query = "FROM CartItem WHERE cartId = :cartId";
		return sessionFactory.getCurrentSession()
								.createQuery("from CartItem");
									.setParameter("cartId", cartId)
										.getResultList();	*/
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		Query query=s.createQuery("from CartItem  WHERE cartId = :cartId");
		List<CartItem> list=query.list();
		System.out.println(list);
		s.getTransaction().commit();
		return list;
	}

	public CartItem get(int id) {
		return (CartItem)sessionFactory.openSession().get(CartItem.class,id);
	}

	public boolean add(CartItem entity) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.save(entity);
		s.getTransaction().commit();
		s.close();
		return true;
	}

	public boolean update(CartItem entity) {
		// TODO Auto-generated method stub
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.saveOrUpdate(entity);
		s.getTransaction().commit();
		s.close();	
		return true;
	}

	public boolean delete(CartItem cartLine) {
		sessionFactory.getCurrentSession().delete(cartLine);
		return true;
	}

	public CartItem getByCartAndProduct(int cartId, int productId) {
		/*String query = "FROM CartItem WHERE cartId = :cartId AND product.pid= :productId";
		try {
			return sessionFactory.getCurrentSession()
									.createQuery(query, CartItem.class)
										.setParameter("cartId", cartId)
										.setParameter("productId", productId)
											.getSingleResult();	
			}
		catch(Exception ex) {
			return null;
		}*/
		
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		Query query=s.createQuery("from CartItem  WHERE cartId = :cartId AND product.pid= :productId");
		List<CartItem> list=query.list();
		if(!list.isEmpty()) {
			return (CartItem)list.get(0);
		}else {
			return null;
		}
		/*System.out.println(list);
		s.getTransaction().commit();
		return list;*/
	}
  
	public boolean updateCart(Cart cart) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.saveOrUpdate(cart);
		s.getTransaction().commit();
		s.close();
		return true;
	}

	public List<CartItem> listAvailable(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	/*public Cart create(Cart cart) {
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
*/
	
		
}
