package com.ecom.emobile.backend.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Category")

	 public class Category {
	 	@Id
	 	@GeneratedValue(strategy=GenerationType.AUTO)
	 	@Column(name="c_id")//,unique=true
	 	private int id;
	 	@Column(name="c_name")
	 	private String name;
	 	@Column(name="c_desc")
	 	private String  desc;
	 	public int getid() {
	 		return id;
	 	}
	 	public void setid(int id) {
	 		this.id = id;
	 	}
	 	public String getname() {
	 		return name;
	 	}
	 	public void setname(String name) {
	 		this.name = name;
	 	}
	 	public String getdesc() {
	 		return desc;
	 	}
	 	public void setdesc(String desc) {
	 		this.desc = desc;
	 	}
	 
	 	
	 
	 }

