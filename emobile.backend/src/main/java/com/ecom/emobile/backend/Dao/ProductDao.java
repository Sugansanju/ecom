package com.ecom.emobile.backend.Dao;

import java.util.List;
import java.util.Set;

import com.ecom.emobile.backend.Model.Product;


public interface ProductDao {
	public void save(Product entity );//User is the Model Class Name Not a Table Name
	public void delete(int id);
	public void update(Product entity);
	public Product findById(String id);
	//public boolean validate(String email,String password);
	public List<Product> findAll();
}
