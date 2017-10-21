package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.Product;

@Controller
public class DeleteController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value="/delete" , method=RequestMethod.GET)
	public ModelAndView delete() {
		ModelAndView mv=new ModelAndView ("delete"/*,"command",new Product()*/);
		return mv;
	}


	/*@RequestMapping(value="/delete", method=RequestMethod.POST)
	public ModelAndView delete(@ModelAttribute("product") Product product){
		ModelAndView mv=new ModelAndView("products");
		
		return mv;
	}*/
}
