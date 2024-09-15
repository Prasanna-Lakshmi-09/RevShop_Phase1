package com.revshop.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Retailer")
public class Retailer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int retailerId;
	private String retailerName;
	private String retailerEmail;
	private String retailerPassword;
	private String address;
	private long ContactNo;
	@OneToMany(mappedBy = "retailer",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<Product> plist;
	
	public String getRetailerName() {
		return retailerName;
	}
	public void setRetailerName(String retailerName) {
		this.retailerName = retailerName;
	}
	
	public String getRetailerEmail() {
		return retailerEmail;
	}
	public void setRetailerEmail(String retailerEmail) {
		this.retailerEmail = retailerEmail;
	}
	public String getRetailerPassword() {
		return retailerPassword;
	}
	public void setRetailerPassword(String retailerPassword) {
		this.retailerPassword = retailerPassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getContactNo() {
		return ContactNo;
	}
	public void setContactNo(long contactNo) {
		ContactNo = contactNo;
	}
	public List<Product> getPlist() {
		return plist;
	}
	public void setPlist(List<Product> plist) {
		this.plist = plist;
	}
	
	
	

}
