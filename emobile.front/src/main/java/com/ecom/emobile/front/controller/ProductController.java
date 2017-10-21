package com.ecom.emobile.front.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping(value="/products" , method=RequestMethod.GET)
	public ModelAndView products() {
		ModelAndView mv=new ModelAndView ();
		List<Product> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") String productId) {
		ModelAndView mv=new ModelAndView("product");
		Product product =productDao.findById(productId);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
}
