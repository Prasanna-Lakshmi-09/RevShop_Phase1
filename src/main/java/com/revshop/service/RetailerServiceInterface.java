package com.revshop.service;

import java.util.List;

import com.revshop.entity.Order;
import com.revshop.entity.Product;
import com.revshop.entity.Retailer;

public interface RetailerServiceInterface {

	int registerRetailer(Retailer r);

	Retailer loginRetailerService(String email, String password);

	int addProductService(Product product);


	List<Order> getOrdersByRetailerId(int retid);

	int updateOrderStatusService(String parameter);

	int manageProfileService(String address,long phNo);

}
