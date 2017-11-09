package com.ecom.emobile.front.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Dao.UserDao;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.User;

@Controller
public class UserController {
@Autowired
private UserDao userDao;
@Autowired
private ProductDao productDao;
/*-----REGISTER--------*/
@RequestMapping(value="/register" , method=RequestMethod.GET)
public ModelAndView register() {
	ModelAndView mv=new ModelAndView ("register","command",new User());
	return mv;
}
@RequestMapping(value="/register", method=RequestMethod.POST)
public ModelAndView login(HttpServletRequest request, HttpServletResponse response){
	User user=new User();
	user.setName(request.getParameter("name"));
	user.setEmail(request.getParameter("email"));
	user.setPassword(request.getParameter("password"));
	user.setContact(request.getParameter("contact"));
	user.setAddress(request.getParameter("address"));
	user.setRole("ROLE_USER");
	user.setEnabled(true);
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
		HttpSession session=request.getSession(true);
		session.setAttribute("email", email);
		mv=new ModelAndView();
		mv=new ModelAndView("redirect:./");
 		
	
	}
	else{
		mv=new ModelAndView("failure");		
		mv.getModelMap().addAttribute("user", user);
	}			
	return mv;
}
/*@RequestMapping(value="/admin" , method=RequestMethod.GET)
public ModelAndView admin() {
	ModelAndView mv=new ModelAndView ("supplier");
	return mv;
}*/
@RequestMapping(value="/logout", method=RequestMethod.GET)
public ModelAndView logout(HttpServletRequest request, HttpServletResponse response){
	HttpSession session=request.getSession(false);
	if(session!=null)
		session.invalidate();
	ModelAndView mv=new ModelAndView("redirect:./");
	return mv;
}
@RequestMapping(value="/failure", method=RequestMethod.GET)
public ModelAndView failure(HttpServletRequest request, HttpServletResponse response){
	ModelAndView mv=new ModelAndView("failure");
	return mv;
}
}
