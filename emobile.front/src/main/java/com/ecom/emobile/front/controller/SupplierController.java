package com.ecom.emobile.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.SupplierDao;
import com.ecom.emobile.backend.Model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	private SupplierDao supplierDao;
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

}
