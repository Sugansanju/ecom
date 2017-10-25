package com.ecom.emobile.front.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	
	/*--------SUPPILER PAGE---------*/
	
	
	@RequestMapping(value="/suppiler", method=RequestMethod.GET)
	public ModelAndView suppiler() {
	ModelAndView mv=new ModelAndView("suppiler");
		return mv;
	}
	
	
	
	/*------PRODUCT PAGE---------*/
	
	
	@RequestMapping(value="/products" , method=RequestMethod.GET)
	public ModelAndView products() {
		ModelAndView mv=new ModelAndView ("products");
		List<Product> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int productId) {
		ModelAndView mv=new ModelAndView("product");
		Product product =productDao.findById(productId);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
	
	
	
/*----------ADD PAGE------------*/
	
	
	
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
	
	
	
	/*-------DELETE PAGE-----------*/
	
	
	
	@RequestMapping(value="/delete" , method=RequestMethod.GET)
	public ModelAndView delete() {
		ModelAndView mv=new ModelAndView ("delete"/*,"command",new Product()*/);
		return mv;
	}
	@RequestMapping(value="/del" , method=RequestMethod.POST)
	public ModelAndView del(HttpServletRequest request, HttpServletResponse response){
		 		int pid=Integer.parseInt(request.getParameter("pid"));
		 		//Product product=productDao.delete(id);	
		 		productDao.delete(pid);
		 		ModelAndView mv=new ModelAndView("products");
		 		return mv;
		 	 }
	}


