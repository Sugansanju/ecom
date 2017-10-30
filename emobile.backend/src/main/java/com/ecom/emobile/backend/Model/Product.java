package com.ecom.emobile.backend.Model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {
	@Id
	@GeneratedValue
	
	@Column(name="Product_pid")
	private int pid;
	
	@ManyToOne(cascade=CascadeType.ALL)
	private Supplier sid;
	
	@Column(name="Product_pimage")
    private String pimage;
	
	@Column(name="Product_pname")
    private String pname;
	
	@ManyToOne(cascade=CascadeType.ALL)
	private Category cid;
	
	@Column(name="Product_pdescrip")
    private String pdescrip;
	
	@Column(name="Product_pquantity")
    private int pquantity;
	
	@Column(name="Product_pprice")
    private float pprice;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Supplier getSid() {
		return sid;
	}
	public void setSid(Supplier sid) {
		this.sid = sid;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Category getCid() {
		return cid;
	}
	public void setCid(Category cid) {
		this.cid = cid;
	}
	public String getPdescrip() {
		return pdescrip;
	}
	public void setPdescrip(String pdescrip) {
		this.pdescrip = pdescrip;
	}
	public int getPquantity() {
		return pquantity;
	}
	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}
	public float getPprice() {
		return pprice;
	}
	public void setPprice(float pprice) {
		this.pprice = pprice;
	}

}
