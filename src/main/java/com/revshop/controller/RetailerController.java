package com.revshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.revshop.service.RetailerServiceInterface;

@Controller
public class RetailerController {

	@Autowired
	private RetailerServiceInterface retailerService;
	
	
}
