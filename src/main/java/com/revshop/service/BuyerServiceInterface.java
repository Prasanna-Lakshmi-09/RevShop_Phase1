package com.revshop.service;

import java.util.List;

import com.revshop.entity.Buyer;
import com.revshop.entity.Cart;
import com.revshop.entity.Order;

public interface BuyerServiceInterface {

	int addtoCartService(Cart sCart);

	int findMaxOrderService();

	List<Object> findTotalProductService(Object attribute, int order_no);

	int addOrderService(Order order);

	void deleteFromCartService(Object attribute);

	int updateProductService(String string, int productId, int quantity);

	int registerBuyer(Buyer b);


}
