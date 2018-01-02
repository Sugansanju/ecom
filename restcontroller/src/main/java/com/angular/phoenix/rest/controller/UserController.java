package com.angular.phoenix.rest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.angular.phoenix.backend.dao.RegDao;
import com.angular.phoenix.backend.model.Reg;

@RestController
public class UserController {
   @Autowired
   private RegDao regDao;
   @RequestMapping(value="/")
   	public ModelAndView index(){
   		ModelAndView mv=new ModelAndView("index");
   		return mv;
   	}
   	
/*   @GetMapping("/user/{userId}")	
   	public ResponseEntity<Reg> getUser(@PathVariable("userId") int regId){   
	   Reg entity=regDao.find(regId);
   		if (entity == null) {
   			return new ResponseEntity<Reg>(HttpStatus.NOT_FOUND);
   		}		
   		return new ResponseEntity<Reg>(entity, HttpStatus.OK);
   	}*/
 /*  	
   	@GetMapping(value="/register/{regId}")
   	public @ResponseBody Reg getRegister(@PathVariable("regId") int regId) {
   		Reg entity= regDao.find(regId);
   		if (entity == null) {
   			return null;
   		}		
   		return entity;
   	}
   */
   /*	@RequestMapping(value="/user/add", method=RequestMethod.POST)
   	public ResponseEntity<Void>  addUser(@RequestBody User user){
   		userDao.save(user);
   		return new ResponseEntity<Void>(HttpStatus.OK);
   	}
   	
   	//@RequestMapping(value="/demo",method=RequestMethod.GET)
   	public String demo(){
   		return "Hello World";
   	}	
   	*/
   }

