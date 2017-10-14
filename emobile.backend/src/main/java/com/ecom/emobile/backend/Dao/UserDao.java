package com.ecom.emobile.backend.Dao;

import java.util.Set;

import com.ecom.emobile.backend.Model.User;


public interface UserDao {
	public void save(User entity);//Student is the Model Class Name Not a Table Name
	public void delete(int id);
	public void update(User entity);
	public User findById(String email);
	public boolean validate(String email,String password);
	public Set<User> findAll();

}
