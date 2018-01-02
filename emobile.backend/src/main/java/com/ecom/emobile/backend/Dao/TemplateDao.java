package com.ecom.emobile.backend.Dao;

import java.util.List;

public interface TemplateDao<T> {
	 	public void save(T entity);
	 	public void delete(int id);
	 	public void update(T entity);
	 	public T findById(int id);
	 	public List<T> findAll();
	 }