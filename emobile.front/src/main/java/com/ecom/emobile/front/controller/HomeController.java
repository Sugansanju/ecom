package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.UserDao;
import com.ecom.emobile.backend.Model.User;

@Controller
public class HomeController {
	@Autowired
	private UserDao userDao;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("index");
		
		return mv;
	}
	
   }