package com.ecom.emobile.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.UserDao;
import com.ecom.emobile.backend.Model.User;

@Controller
public class UserController {
@Autowired
private UserDao userDao;
@RequestMapping(value="/register" , method=RequestMethod.GET)
public ModelAndView register() {
	ModelAndView mv=new ModelAndView ("register","command",new User());
	return mv;
}

@RequestMapping(value="/register", method=RequestMethod.POST)
public ModelAndView register(@ModelAttribute("user") User user) {
   ModelAndView mv=new ModelAndView ("Login");
   userDao.save(user);
   return mv;
	
}
@RequestMapping(value="/login" , method=RequestMethod.GET)
public ModelAndView login() {
  ModelAndView mv=new ModelAndView("login","command",new User());
  
  return mv;
}


}
