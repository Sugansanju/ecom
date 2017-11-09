package com.ecom.emobile.front.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Dao.UserDao;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.User;

@Controller
public class HomeController {
		@Autowired
		private UserDao userDao;
		@Autowired
		private ProductDao productDao;
		@RequestMapping(value="/", method=RequestMethod.GET)
		public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
			ModelAndView mv=new ModelAndView("index");
			Principal principal=request.getUserPrincipal();
			User user=null;
			if(principal!=null){
				user=userDao.findById(principal.getName());
			}
			mv.getModelMap().addAttribute("user", user);
			HttpSession session=request.getSession(false);
			 		if(session!=null)
			 		session.setAttribute("user", user);
			List<Product> products=productDao.findAll();
			mv.getModelMap().addAttribute("products", products);
			return mv;
		}	
}