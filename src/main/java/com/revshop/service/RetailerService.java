package com.revshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revshop.dao.RetailerDaoInterface;
import com.revshop.entity.Order;
import com.revshop.entity.Product;
import com.revshop.entity.Retailer;

@Service
public class RetailerService implements RetailerServiceInterface {
	
	@Autowired
	private RetailerDaoInterface retailerDao;
	
	@Override
	public int registerRetailer(Retailer r) {
		return retailerDao.registerRetailer(r);
	}

	@Override
	public Retailer loginRetailerService(String email, String password) {
		return retailerDao.retailerLoginDao(email,password);
	}

	@Override
	public int addProductService(Product product) {
		return retailerDao.addProductDao(product);
	}


	@Override
	public List<Order> getOrdersByRetailerId(int retid) {
		return retailerDao.getOrdersByRetailerId(retid);
	}

	@Override
	public int updateOrderStatusService(String parameter) {
		return retailerDao.updateOrderStatusDao(parameter);
	}

	




	

}
