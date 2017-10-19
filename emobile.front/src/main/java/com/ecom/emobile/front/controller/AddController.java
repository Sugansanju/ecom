package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.Product;

public class AddController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value="/add" , method=RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView mv=new ModelAndView ("add","command",new Product());
		return mv;
	}


	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView add(@ModelAttribute("product") Product product){
		ModelAndView mv=new ModelAndView("products");
		productDao.save(product);
		return mv;
	}


}
