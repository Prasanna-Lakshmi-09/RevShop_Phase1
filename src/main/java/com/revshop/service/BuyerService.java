package com.revshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revshop.dao.BuyerDaoInterface;
import com.revshop.entity.Buyer;
import com.revshop.entity.Cart;
import com.revshop.entity.Order;

@Service
public class BuyerService implements BuyerServiceInterface {

	@Autowired
	private BuyerDaoInterface buyerDao;
	
	@Override
	public int registerBuyer(Buyer b) {
		return buyerDao.registerBuyer(b);
	}

	@Override
	public int addtoCartService(Cart sCart) {
		return buyerDao.addToCartDao(sCart);
	}

	@Override
	public int findMaxOrderService() {
		return buyerDao.findMaxOrderDao();
	}

	@Override
	public List<Object> findTotalProductService(Object attribute, int order_no) {
		return buyerDao.findTotalProductDao(attribute,order_no);
	}

	@Override
	public int addOrderService(Order order) {
		return buyerDao.addOrderDao(order);
	}

	@Override
	public void deleteFromCartService(Object attribute) {
		buyerDao.deleteFromCartDao(attribute);
	}

	@Override
	public int updateProductService(String string, int productId, int quantity) {
		return buyerDao.updateProductDao(string,productId,quantity);
	}
	

}
