package com.revshop.controller;

import java.io.File;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.revshop.entity.Order;
import com.revshop.entity.Product;
import com.revshop.entity.Retailer;
import com.revshop.service.RetailerServiceInterface;

@Controller
public class RetailerController {

	@Autowired
	private RetailerServiceInterface retailerService;
	
	@RequestMapping("registerRetailer")
	public ModelAndView registerRetailer(HttpServletRequest request,HttpServletResponse response,@RequestParam("name")String retailerName,@RequestParam("email")String retailerEmail,
	@RequestParam("password")String retailerPassword,@RequestParam("address")String address,@RequestParam("phNo")long ContactNo) {
		Retailer r = new Retailer();
		r.setRetailerName(retailerName);
		r.setRetailerEmail(retailerEmail);
		r.setRetailerPassword(retailerPassword);
		r.setAddress(address);
		r.setContactNo(ContactNo);
		
		int i=retailerService.registerRetailer(r);
		
		ModelAndView mv = new ModelAndView();
		HttpSession hs = request.getSession(true);
		if(i>0) {
    		String message="Registration Success";
    		hs.setAttribute("success-msg",message);
        	mv.setViewName("retailer-login.jsp");
    	}else {
            String message = "Customer registration fail";
            hs.setAttribute("fail-msg", message);
            mv.setViewName("register.jsp");
    	}
    	
    	return mv;
	}

	@RequestMapping("retailer-login")
	public ModelAndView loginRetailer(HttpServletRequest request, @RequestParam("email")String email,@RequestParam("password")String password) {
		
		ModelAndView mv = new ModelAndView();
		
		Retailer i=retailerService.loginRetailerService(email,password);
		
	    //creating session
		HttpSession hs=request.getSession();
		if(email !=null && password!=null) {
			if(i!=null) {
				hs.setAttribute("email", i.getRetailerEmail());
				
				mv.setViewName("retailerDashboard.jsp");
			}
			else {
			String message="wrong credentials";
			hs.setAttribute("credential", message);
			mv.setViewName("retailer-login.jsp");
			}
		} else {
			String message="email or password is null";
			hs.setAttribute("credential", message);
			mv.setViewName("retailer-login.jsp");
		}
		return mv;
		
	}

//	
//	 @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
//	    public ModelAndView addProduct(@RequestParam String name, 
//	    		                       @RequestParam String category,
//	                                   @RequestParam String description, 
//	                                   @RequestParam long productPrice) {
//	        Product product = new Product();
//	        product.setProductName(name);
//	        product.setProductCategory(category);
//	        product.setDescription(description);
//	        product.setProductPrice(productPrice);
//
//	        retailerService.addProduct(product);
//
//	        ModelAndView mv = new ModelAndView("manageProducts");
//	        mv.addObject("product", product);
//	        return mv;
//	    }

	 
	 @GetMapping("viewOrders")
	 public ModelAndView viewOrders(@PathVariable("retid") int retid) {
		// Fetch the orders for the given retailer ID
	     List<Order> orders = retailerService.getOrdersByRetailerId(retid);
	     
	     ModelAndView mv = new ModelAndView("viewOrders"); 
	     mv.addObject("orders", orders);
	     return mv;
	 }
	 
	 
	 private final String UPLOAD_DIRECTORY = "C:\\Users\\prasa\\git\\repository3\\revshop\\src\\main\\webapp\\images";

		
		
		@RequestMapping("addProducts")
		public ModelAndView addProducts(HttpServletRequest request) {
			//Path where all the images are stored
		   
			ModelAndView mv=new ModelAndView();
			 HttpSession session = request.getSession();
		        if (ServletFileUpload.isMultipartContent(request)) {
		            try {
		                //Taking all image requests
		                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest((RequestContext) request);
		                String imageName = null;
		                String productName = null;
		                String productQuantity = null;
		                String productPrice = null;
		                String descrip = null;
		                String mrp_price = null;
		                String status = null;
		                String category = null;

		                //SALTCHARS to generate unique code for product
		                String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		                StringBuilder salt = new StringBuilder();
		                Random rnd = new Random();
		                while (salt.length() < 3) { // length of the random string.
		                    int index = (int) (rnd.nextFloat() * SALTCHARS.length());
		                    salt.append(SALTCHARS.charAt(index));
		                }
		                String code = salt.toString();

		                for (FileItem item : multiparts) {
		                    if (!item.isFormField()) {
		                        //Getting image name
		                        imageName = new File(item.getName()).getName();
		                        //Storing in the specified directory
		                        item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));

		                        //Retrieving all information from frontend
		                        FileItem pName = (FileItem) multiparts.get(0);
		                        productName = pName.getString();

		                        FileItem price = (FileItem) multiparts.get(1);
		                        productPrice = price.getString();

		                        FileItem description = (FileItem) multiparts.get(2);
		                        descrip = description.getString();

		                        FileItem mprice = (FileItem) multiparts.get(3);
		                        mrp_price = mprice.getString();


		                        FileItem fstatus = (FileItem) multiparts.get(4);
		                        status = fstatus.getString();

		                        FileItem pcategory = (FileItem) multiparts.get(5);
		                        category = pcategory.getString();

		                    }
		                }
		                
		                
		                try {
		                    int id = 0;
		                    String imagePath = UPLOAD_DIRECTORY + imageName;
		                    Product product=new Product();
		                    product.setDescription(descrip);
		                    product.setImage(imagePath);
		                    product.setImage_name(imageName);
		                    product.setMrp_price(mrp_price);
		                    product.setProductName(productName);
		                    product.setPrice(productPrice);
		                    product.setProduct_category(category);
		                    
		                    System.out.println(code+" "+descrip+" "+id+" "+imagePath+" "+imageName+" ");
		                    
		                    int i=retailerService.addProductService(product);
		                      
		                    //If product inserted sucessfully in the database
		                    if (i > 0) {
		                        String success = "Product added successfully.";
		                        //Adding method in session.
		                        session.setAttribute("message", success);
		                        //Response send to the admin-add-product.jsp
		                        mv.setViewName("viewProducts.jsp");
		                    }
		                } catch (Exception e) {
		                    e.printStackTrace();
		                }
		            } catch (Exception ex) {
		                //If any occur occured
		                request.setAttribute("message", "File Upload Failed due to " + ex);
		            }
		        } 
		        else {
		            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
		        }
			
					
			return mv;
		}
		
		
		@RequestMapping("updateProfile")
		public ModelAndView manageProfile(HttpServletRequest request,@RequestParam("address") String address,@RequestParam("phno") long phNo) {

			ModelAndView mv=new ModelAndView();
			HttpSession hs=request.getSession();
			int up=retailerService.manageProfileService(address,phNo);
			if(up>0) {
				mv.setViewName("viewProfile.jsp");
			}else {
				mv.setViewName("manageProfile.jsp");
			}
			

		    return mv;
		}
		
		
		@RequestMapping("CustomerProductsOrderStatus")
		public ModelAndView CustomerProductsOrderStatus(HttpServletRequest request,HttpServletResponse response,@RequestParam("upass") String password,@RequestParam("email") String email) {
			ModelAndView mv=new ModelAndView();
			HttpSession hs = request.getSession();
			 int statusMode=retailerService.updateOrderStatusService(request.getParameter("orderId"));
	         // int statusMode = 0;
	          //Taking input from retailer order-id to get the order status from the database
	          
	          if (statusMode > 0) {
	              //Sending response back to vieworders.jsp page when sql query executed sucesfully
	        	  mv.setViewName("viewOrders.jsp");
	          } else {
	              //Sending response back to vieworders.jsp page
	        	  mv.setViewName("viewOrders.jsp");
	          }
	     
	       
			
			return mv;
		}
}
