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
@RequestMapping(value="/signup" , method=RequestMethod.GET)
public ModelAndView register() {
	ModelAndView mv=new ModelAndView ("signup","command",new User());
	return mv;
}


@RequestMapping(value="/signup", method=RequestMethod.POST)
public ModelAndView login(@ModelAttribute("user") User user){
	ModelAndView mv=new ModelAndView("login");
	userDao.save(user);
	return mv;
}

}
