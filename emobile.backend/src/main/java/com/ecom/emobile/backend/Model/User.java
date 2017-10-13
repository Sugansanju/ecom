package com.ecom.emobile.backend.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {
	@Id
	@GeneratedValue
	@Column(name="User_id")
	private int id;
	@Column(name="User_name")
	private String name;
	@Column(name="User_mail")
	private String email;
	@Column(name="User_pw")
	private String password;
	@Column(name="User_cpw")
	private String cfrmPassword;
	@Column(name="User_cont")
	private String contact;
	@Column(name="User_address")
	private String address;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCfrmPassword() {
		return cfrmPassword;
	}
	public void setCfrmPassword(String cfrmPassword) {
		cfrmPassword = cfrmPassword;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
