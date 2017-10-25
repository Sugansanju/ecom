package com.ecom.emobile.backend.Dao;

import java.util.List;

import com.ecom.emobile.backend.Model.Category;

public interface CategoryDao {
	public void save(Category entity);
	public void delete(int cid);
	public void update(Category entity);
	public Category findById(int cid);
	public List<Category> findAll();

}
