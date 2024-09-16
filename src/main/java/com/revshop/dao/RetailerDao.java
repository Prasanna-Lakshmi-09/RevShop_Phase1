package com.revshop.dao;

import java.util.List;

import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.revshop.entity.Order;
import com.revshop.entity.Product;
import com.revshop.entity.Retailer;

@Repository
public class RetailerDao implements RetailerDaoInterface {

    @Autowired
    private SessionFactory sf;
    
    @Override
    @Transactional
	public int registerRetailer(Retailer r) {
    	int addRetailer=0;
        Session ss=sf.openSession();
		
		EntityTransaction et = ss.getTransaction();
		et.begin();
		ss.save(r);
		et.commit();
		addRetailer=1;
		return addRetailer;
	}

	@Override
	@Transactional
	public Retailer retailerLoginDao(String email, String password) {
		Retailer r= null;
		Session ss=sf.openSession();
		Query q=ss.createQuery("from com.revshop.entity.Retailer r where r.retailerEmail=:rid AND r.retailerPassword=:pid");
		q.setParameter("rid", email);
		q.setParameter("pid", password);
		List<Retailer> rl=q.getResultList();
		
		if(rl.size()>0) {
			r=rl.get(0);
		}
		return r;
	}

	@Override
	@Transactional
	public int addProductDao(Product product) {
		System.out.println(product.getDescription());
	    int addProduct=0;
	    Session ss= sf.openSession();
	    EntityTransaction et=ss.getTransaction();
	    et.begin();
	    ss.save(product);
	    et.commit();
	    
	    addProduct=1;
	    return addProduct;
	}
  

	@Override
	@Transactional
	public List<Order> getOrdersByRetailerId(int retid) {
		Session ss= sf.openSession();
		Query q=ss.createQuery("from com.revshop.entity.Order o where o.retailer_id=:retailer_id");
		q.setParameter("retailerId", retid);
		List<Order> ol=q.getResultList();
		return ol;
		
	}

	@Override
	public int updateOrderStatusDao(String orderId) {
		int i=0;
		Session ss=sf.openSession();
		EntityTransaction et=ss.getTransaction();
		et.begin();
		Query q=ss.createQuery("from com.revshop.entity.Order oo where oo.order_no=:oid");
		q.setParameter("oid", orderId);
		List<Order> ll=q.getResultList();
		if(ll.size()>0) {
			 if (ll.get(0).getOrder_status().equals("Deliver")) {
				 Query q1=ss.createQuery("update com.revshop.entity.Order oo set oo.order_status='Pending' where oo.order_no=:oid");
		    		q1.setParameter("oid", orderId);
                	
       			 	i=q1.executeUpdate();
                    } else {
                    	Query q2=ss.createQuery("update com.revshop.entity.Order oo set oo.order_status='Deliver' where oo.order_no=:oid");
        	    		q2.setParameter("oid", orderId);
                	
       			 	i=q2.executeUpdate();
                    }
		}
		et.commit();
		return i;
	}

}
