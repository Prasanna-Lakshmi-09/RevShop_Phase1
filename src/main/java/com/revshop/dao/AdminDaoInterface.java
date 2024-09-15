package com.revshop.dao;

import com.revshop.entity.Admin;

public interface AdminDaoInterface {


	int updateOrderStatusDao(String parameter);

	Admin adminLoginDao(String email, String password);

}
