package com.ecom.emobile.backend.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Suppiler")

public class Supplier {
	
@Id
@Column(name="s_id")
private String id;
@Column(name="s_name")
private String name;
@Column(name="s_email")
private int email;
@Column(name="s_cont")
private float contact;
@Column(name="s_add")
private String address;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getEmail() {
	return email;
}
public void setEmail(int email) {
	this.email = email;
}
public float getContact() {
	return contact;
}
public void setContact(float contact) {
	this.contact = contact;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}

}