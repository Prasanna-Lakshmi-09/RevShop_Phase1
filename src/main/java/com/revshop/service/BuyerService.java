package com.revshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revshop.dao.BuyerDaoInterface;
import com.revshop.entity.Buyer;

@Service
public class BuyerService implements BuyerServiceInterface {

	@Autowired
	private BuyerDaoInterface buyerDao;
	

}
