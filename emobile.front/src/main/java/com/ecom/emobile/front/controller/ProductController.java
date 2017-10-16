package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;



@Controller
public class ProductController {
@Autowired
private ProductDao productDao;
@RequestMapping(value="/suppiler", method=RequestMethod.GET)
public ModelAndView suppiler() {
ModelAndView mv=new ModelAndView("suppiler");
	return mv;
}

}
