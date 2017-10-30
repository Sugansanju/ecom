package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.CategoryDao;
import com.ecom.emobile.backend.Model.Category;
@Controller
public class CategoryController {
	@Autowired
	private CategoryDao categoryDao;
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
}
