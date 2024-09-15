package com.revshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.revshop.dao.AdminDaoInterface;
import com.revshop.entity.Admin;

@Service
public class AdminService implements AdminServiceInterface {
	@Autowired
	private AdminDaoInterface adminDao;
	
	@Override
	public Admin adminLoginService(String email, String password) {
		return adminDao.adminLoginDao(email,password);
	}

	@Override
	public int updateOrderStatusService(String parameter) {
		return adminDao.updateOrderStatusDao(parameter);
	}

}
