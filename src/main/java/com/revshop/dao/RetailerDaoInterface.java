package com.revshop.dao;


import java.util.List;

import com.revshop.entity.Order;
import com.revshop.entity.Product;
import com.revshop.entity.Retailer;

public interface RetailerDaoInterface  {

	int registerRetailer(Retailer r);
	
	Retailer retailerLoginDao(String email, String password);

	int addProductDao(Product product);

	List<Order> getOrdersByRetailerId(int retid);

	int updateOrderStatusDao(String parameter);


}
