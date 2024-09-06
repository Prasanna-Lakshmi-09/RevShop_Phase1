package com.revshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revshop.dao.RetailerDaoInterface;

@Service
public class RetailerService implements RetailerServiceInterface {
	
	@Autowired
	private RetailerDaoInterface retailerDao;

}
