package com.revshop.dao;

import java.util.List;

import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.revshop.entity.Admin;
import com.revshop.entity.Order;

@Repository
public class AdminDao implements AdminDaoInterface{

	@Autowired
	private SessionFactory sf;
	
	@Override
	public Admin adminLoginDao(String email, String password) {
		Admin a=null;
		Session ss=sf.openSession();
		Query q=ss.createQuery("from com.revshop.entity.Admin a where a.email=:aid and a.password=:pid");
		q.setParameter("aid", email);
		q.setParameter("pid", password);
		List <Admin>al=q.getResultList();
		if(al.size()>0) {
			a=al.get(0);
		}
		return a;
	}

	@Override
	public int updateOrderStatusDao(String orderId) {
		int i=0;
		Session ss=sf.openSession();
		EntityTransaction et=ss.getTransaction();
		et.begin();
		Query q=ss.createQuery("from com.revshop.entity.Order o where o.order_no=:oid");
		q.setParameter("oid",orderId);
		List<Order> ol=q.getResultList();
		if(ol.size()>0) {
			if(ol.get(0).getOrder_status().equals("Deliver")) {
				Query q1=ss.createQuery("update com.revshop.entity.Order oo set oo.order_status='Pending' where oo.order_no=:oid");
				q1.setParameter("oid",orderId);
				i=q1.executeUpdate();
			}else {
				Query q2=ss.createQuery("update com.revshop.entity.Order oo set oo.order_status='Deliver' where oo.order_no=:oid");
				q2.setParameter("oid", orderId);
				
				i=q2.executeUpdate();
			}
		}
		et.commit();
		return i;
	}

}
