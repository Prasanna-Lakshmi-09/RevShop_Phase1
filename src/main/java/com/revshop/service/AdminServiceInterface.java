package com.revshop.service;

import com.revshop.entity.Admin;

public interface AdminServiceInterface {

	Admin adminLoginService(String email, String password);

	int updateOrderStatusService(String parameter);

}
