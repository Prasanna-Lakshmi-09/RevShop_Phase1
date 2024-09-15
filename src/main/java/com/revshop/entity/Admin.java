package com.revshop.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	private String email;
	private String password;

}
