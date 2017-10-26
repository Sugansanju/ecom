package com.ecom.emobile.front.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
		public ModelAndView index() {
			ModelAndView mv=new ModelAndView("index");
			List<Product> products=productDao.findAll();
			mv.getModelMap().addAttribute("products", products);
			return mv;
		}	
}