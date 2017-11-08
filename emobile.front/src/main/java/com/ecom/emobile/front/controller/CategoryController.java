package com.ecom.emobile.front.controller;

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
import com.ecom.emobile.backend.Model.Category;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.Supplier;
@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
	/*------Category ADD-------*/
	@RequestMapping(value="admin/newcategory", method=RequestMethod.GET)
 	public ModelAndView addCategory(){
 		ModelAndView mv=new ModelAndView("add","command",new Category());
		return mv;

	}	
	@RequestMapping(value="admin/newcategory", method=RequestMethod.POST)
	public ModelAndView viewCategory(@ModelAttribute("category") Category category){
		ModelAndView mv=new ModelAndView("products");
		categoryDao.save(category);
		return mv;
}
	/*---------Update Category----------*/
	@RequestMapping(value="admin/updatecategory" , method=RequestMethod.GET) 
	public ModelAndView viewUpdateCategory(Model model,@RequestParam("id") int cid){
 		ModelAndView mv=new ModelAndView("update");
 		Category category=categoryDao.findById(cid);
  		mv.getModelMap().addAttribute("category", category);
  		//mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
  		return mv;
  }	
	@RequestMapping(value="admin/updatecategory", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:supplier");
		Category cat =new Category();
		cat.setCid(Integer.parseInt(request.getParameter("cid")));
		cat.setCname(request.getParameter("cname"));
		categoryDao.update(cat);
		mv.getModelMap().addAttribute("supplier", categoryDao.findAll());
		return mv;
		
	 }
	 @RequestMapping(value="admin/deletecategory", method=RequestMethod.GET)
		public ModelAndView delete(@RequestParam("id") int id){
			ModelAndView mv=new ModelAndView("redirect:supplier","command", new Category());
			categoryDao.delete(id);
			mv.getModelMap().addAttribute("supplier", categoryDao.findAll());
			return mv;
		}	
}
