package com.angular.phoenix.backend.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.angular.phoenix.backend.dao.BlogDao;
import com.angular.phoenix.backend.model.Blog;

@Repository("blogDAO")

public class BlogImpl implements BlogDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addBlog(Blog blog) {
		try {
			sessionFactory.getCurrentSession().save(blog);
			return true;
		} catch (Exception e) {

		}
		return false;

	}

	public boolean updateBlog(Blog blog) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(blog);
			return true;

		} catch (Exception e) {

		}
		return false;
	}

	public boolean deleteBlog(Blog blog) {
		// TODO Auto-generated method stub
		return false;
	}

	public Blog getBlog(int blogId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Blog> getAllBlogs() {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean approveBlog(Blog blog) {
		// TODO Auto-generated method stub
		return false;
	}

}
