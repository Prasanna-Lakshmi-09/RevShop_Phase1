package com.revshop.dao;

import com.revshop.entity.Admin;

public interface AdminDaoInterface {


	Admin adminLoginDao(String email, String password);

}
