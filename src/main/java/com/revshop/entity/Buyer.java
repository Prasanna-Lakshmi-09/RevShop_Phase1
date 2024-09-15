package com.revshop.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Buyer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int buyerId;
	private String buyerName;
	private String buyerEmail;
	private String buyerPassword;
	private String address;
	private long phNo;
	
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public String getBuyerEmail() {
		return buyerEmail;
	}
	public void setBuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}
	public String getBuyerPassword() {
		return buyerPassword;
	}
	public void setBuyerPassword(String buyerPassword) {
		this.buyerPassword = buyerPassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getPhNo() {
		return phNo;
	}
	public void setPhNo(long phNo) {
		this.phNo = phNo;
	}
	
	

}
