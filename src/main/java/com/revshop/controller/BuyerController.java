package com.revshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.revshop.entity.Buyer;
import com.revshop.service.BuyerServiceInterface;

@Controller
public class BuyerController {
	@Autowired
	private BuyerServiceInterface buyerService;
	
	

}
