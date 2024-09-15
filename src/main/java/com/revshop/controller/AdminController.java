package com.revshop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.revshop.entity.Admin;
import com.revshop.service.AdminServiceInterface;

@Controller
public class AdminController {
	@Autowired
	private AdminServiceInterface adminService;
	
	@RequestMapping("AdminLogin")
	public ModelAndView loginAdmin(HttpServletRequest request,HttpServletResponse response,@RequestParam("upass") String password,@RequestParam("email") String email) {
		
		HttpSession hs = request.getSession();

     
        Admin i=adminService.adminLoginService(email,password);
        
        ModelAndView mv=new ModelAndView();
        
        if (i!=null) {
            hs.setAttribute("uname", i);
            //Redirecting admin to dashboard page
            mv.setViewName("dashboard.jsp");
          

        } else {
            //If details are wrong
            String message = "You have enter wrong credentials";
            hs.setAttribute("credential", message);
            //Redirecting admin to admin login page
            mv.setViewName("admin-login.jsp");
        }
		
		return mv;
	}
	
	@RequestMapping("CustomerProductsOrderStatus")
	public ModelAndView CustomerProductsOrderStatus(HttpServletRequest request,HttpServletResponse response,@RequestParam("upass") String password,@RequestParam("email") String email) {
		ModelAndView mv=new ModelAndView();
		HttpSession hs = request.getSession();
		 int statusMode=adminService.updateOrderStatusService(request.getParameter("orderId"));
         // int statusMode = 0;
          //Taking input from admin order-id to get the order status from the database
          
          if (statusMode > 0) {
              //Sending response back to admin-all-orders.jsp page when sql query executed sucesfully
        	  mv.setViewName("admin-all-orders.jsp");
          } else {
              //Sending response back to admin-all-orders.jsp page
        	  mv.setViewName("admin-all-orders.jsp");
          }
     
       
		
		return mv;
	}
}

