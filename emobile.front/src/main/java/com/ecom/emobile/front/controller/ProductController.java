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
	
	
	@RequestMapping(value="/supplier", method=RequestMethod.GET)
	public ModelAndView suppiler() {
	ModelAndView mv=new ModelAndView("supplier");
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
	public ModelAndView addproduct(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView ("add","command",new Product());
		request.setAttribute("categories", categoryDao.findAll());
		request.setAttribute("supplier",supplierDao.findAll());
		return mv;
	}
	/*@RequestMapping(value="/newproduct", method=RequestMethod.GET)
  	public ModelAndView addProduct(){
		ModelAndView mv=new ModelAndView ("add","command",new Product());
		List<Product> products=productDao.findAll();
		mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		mv.getModelMap().addAttribute("suppliers", supplierDao.findAll());

		mv.getModelMap().addAttribute("products", products);
		return mv;
	}*/
	@RequestMapping(value="/newproduct", method=RequestMethod.POST)
	 	 public ModelAndView newProduct(HttpServletRequest request, HttpServletResponse response){
	 		//Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cid")));
	 		Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
	 		Product product =new Product();
	 		product.setPname(request.getParameter("pname"));
	 		product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
	 		product.setPdescrip(request.getParameter("pdescrip"));
	 		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
	 		product.setPimage(request.getParameter("pimage"));
	 		//product.setCid(category);
	 		product.setSid(supplier);
	 		productDao.save(product);
	 		ModelAndView mv=new ModelAndView("products");
	 		return mv;
	 	 }
	
	
	/*-------DELETE PAGE-----------*/
    @RequestMapping(value="/delete", method=RequestMethod.GET)
    			public ModelAndView delete(@RequestParam("id") int id){
    				ModelAndView mv=new ModelAndView("product","command", new Product());
    				productDao.delete(id);
    				mv.getModelMap().addAttribute("products", productDao.findAll());
    				return mv;
    			}	
	}


