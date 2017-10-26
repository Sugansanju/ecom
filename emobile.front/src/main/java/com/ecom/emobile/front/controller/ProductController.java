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

import com.ecom.emobile.backend.Dao.CategoryDao;
import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Dao.SupplierDao;
import com.ecom.emobile.backend.Model.Category;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.Supplier;

@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;
	
	
	/*--------SUPPILER PAGE---------*/
	
	
	@RequestMapping(value="/suppiler", method=RequestMethod.GET)
	public ModelAndView suppiler() {
	ModelAndView mv=new ModelAndView("suppiler");
	List<Product> products=productDao.findAll();
	mv.getModelMap().addAttribute("products", products);
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
	/*------Product ADD-------*/
	@RequestMapping(value="/newproduct" , method=RequestMethod.GET)
	public ModelAndView addproduct() {
		ModelAndView mv=new ModelAndView ("add","command",new Product());
		return mv;
	}
	@RequestMapping(value="/newproduct", method=RequestMethod.POST)
  	public ModelAndView viewproduct(@ModelAttribute("product") Product product){
  		ModelAndView mv=new ModelAndView("products");
  		productDao.save(product);
  		return mv;
	}
	/*------Category ADD-------*/
	@RequestMapping(value="/newcategory", method=RequestMethod.GET)
	 	public ModelAndView viewCategory(){
	 		ModelAndView mv=new ModelAndView("add","command",new Category());
			return mv;
	
	}
	@RequestMapping(value="/newcategory", method=RequestMethod.POST)
	 	 public ModelAndView addCategory(@ModelAttribute("category") Category category){
	 	    categoryDao.save(category);
	 		ModelAndView mv=new ModelAndView("products");
	 		return mv;
	 	 }
	/*------Supplier ADD-------*/
	@RequestMapping(value="/newsupplier", method=RequestMethod.GET)
 	public ModelAndView addSupplier(){
 		ModelAndView mv=new ModelAndView("add","command",new Supplier());
		return mv;

	}	
    @RequestMapping(value="/newsupplier", method=RequestMethod.POST)
 	 public ModelAndView newsupplier (HttpServletRequest request, HttpServletResponse response){
	     Supplier supplier=new Supplier();
	     supplier.setSname(request.getParameter("sname"));
	     supplier.setSemail(request.getParameter("semail"));
	     supplier.setScontact(request.getParameter("scontact"));
	     supplier.setSaddress(request.getParameter("saddress"));
	     supplierDao.save(supplier);
	ModelAndView mv=new ModelAndView("products");
	    return mv;
 	 }
	/*-------DELETE PAGE-----------*/
 	
	
	
/*	@RequestMapping(value="/delete" , method=RequestMethod.GET)
	public ModelAndView delete() {
		ModelAndView mv=new ModelAndView ("delete","command",new Product());
		return mv;
	}
	@RequestMapping(value="/del" , method=RequestMethod.POST)
	public ModelAndView del(HttpServletRequest request, HttpServletResponse response){
		 		int pid=Integer.parseInt(request.getParameter("pid"));
		 		//Product product=productDao.delete(id);	
		 		productDao.delete(pid);
		 		ModelAndView mv=new ModelAndView("products");
		 		return mv;
		 	 }*/
	}


