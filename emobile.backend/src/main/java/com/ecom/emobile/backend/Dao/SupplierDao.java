package com.ecom.emobile.backend.Dao;

import java.util.List;

import com.ecom.emobile.backend.Model.Supplier;

public interface SupplierDao{
	public void save(Supplier entity);
	public void delete(String id);
	public void update(Supplier entity);
	public Supplier findById(String id);
	public List<Supplier> findAll();

}
