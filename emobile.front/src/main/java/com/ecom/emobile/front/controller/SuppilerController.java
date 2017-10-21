package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.User;



@Controller
public class SuppilerController {
@Autowired
private ProductDao productDao;
@RequestMapping(value="/suppiler", method=RequestMethod.GET)
public ModelAndView suppiler() {
ModelAndView mv=new ModelAndView("suppiler");
	return mv;
}
/*@RequestMapping(value="/add", method=RequestMethod.GET)
public ModelAndView add() {
ModelAndView mv=new ModelAndView("add");
	return mv;
}

@RequestMapping(value="/add", method=RequestMethod.POST)
public ModelAndView add(@ModelAttribute("product") Product product){
	ModelAndView mv=new ModelAndView("products");
	productDao.save(product);
	return mv;
}*/
}