package com.revshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.revshop.service.AdminServiceInterface;

@Controller
public class AdminController {
	@Autowired
	private AdminServiceInterface adminService;
	
	

}
