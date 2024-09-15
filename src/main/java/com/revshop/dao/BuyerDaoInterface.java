package com.revshop.dao;

import java.util.List;

import com.revshop.entity.Buyer;
import com.revshop.entity.Cart;
import com.revshop.entity.Order;

public interface BuyerDaoInterface {
	int registerBuyer(Buyer b);

	int addToCartDao(Cart sCart);

	int findMaxOrderDao();

	List<Object> findTotalProductDao(Object attribute, int order_no);

	int addOrderDao(Order order);

	void deleteFromCartDao(Object attribute);

	int updateProductDao(String attribute, int productId, int quantity);



}
