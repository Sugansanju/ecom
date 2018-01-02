package com.angular.phoenix.backend.dao;

import java.util.List;

import com.angular.phoenix.backend.model.Reg;

public interface RegDao {
	public void save(Reg entity);//Student is the Model Class Name Not a Table Name
	public void delete(int id);
	public void update(Reg entity);
	public Reg find(int id);
	public Reg findById(String email);
	public boolean validate(String email,String password);
	public List<Reg> findAll();

}
