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
	 	private int cid;
	 	@Column(name="c_name")
	 	private String cname;
	 	@Column(name="c_desc")
	 	private String  cdesc;
	 	public int getcid() {
	 		return cid;
	 	}
	 	public void setcid(int cid) {
	 		this.cid = cid;
	 	}
	 	public String getcname() {
	 		return cname;
	 	}
	 	public void setcname(String cname) {
	 		this.cname = cname;
	 	}
	 	public String getcdesc() {
	 		return cdesc;
	 	}
	 	public void setcdesc(String cdesc) {
	 		this.cdesc = cdesc;
	 	}
	 
	 	
	 
	 }

