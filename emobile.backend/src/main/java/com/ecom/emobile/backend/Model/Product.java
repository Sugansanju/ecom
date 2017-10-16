package com.ecom.emobile.backend.Model;

import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
public class Product {
	@Id
	private String pid;
	private String pimage;
	private String pname;
	private String pdescrip;
	private String pquantiy;
	private String pprice;

	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
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
	public String getPdescrip() {
		return pdescrip;
	}
	public void setPdescrip(String pdescrip) {
		this.pdescrip = pdescrip;
	}
	public String getPquantiy() {
		return pquantiy;
	}
	public void setPquantiy(String pquantiy) {
		this.pquantiy = pquantiy;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	
	
	

}
