package com.ecom.emobile.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
/*-----REGISTER--------*/
@RequestMapping(value="/register" , method=RequestMethod.GET)
public ModelAndView register() {
	ModelAndView mv=new ModelAndView ("register","command",new User());
	return mv;
}
@RequestMapping(value="/register", method=RequestMethod.POST)
public ModelAndView login(@ModelAttribute("user") User user){
	ModelAndView mv=new ModelAndView("login");
	userDao.save(user);
	return mv;
}
/*-------LOGIN--------*/
@RequestMapping(value="/login" , method=RequestMethod.GET)
public ModelAndView login() {
	ModelAndView mv=new ModelAndView ("login","command",new User());
	return mv;
}
@RequestMapping(value="/validate", method=RequestMethod.POST)
public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){		
	String email=request.getParameter("txtemail");
	String password=request.getParameter("txtpassword");
	User user=userDao.findById(request.getParameter("txtemail"));	
	ModelAndView mv=null;
	if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
		mv=new ModelAndView("index");
		mv.getModelMap().addAttribute("user", user);
	}
	else{
		mv=new ModelAndView("failure");		
		mv.getModelMap().addAttribute("user", user);
	}			
	return mv;
}
}
