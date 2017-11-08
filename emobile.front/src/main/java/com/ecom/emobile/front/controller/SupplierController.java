package com.ecom.emobile.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.SupplierDao;
import com.ecom.emobile.backend.Model.Category;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	private SupplierDao supplierDao;
	/*------Supplier ADD-------*/
	@RequestMapping(value="admin/newsupplier", method=RequestMethod.GET)
 	public ModelAndView addSupplier(){
 		ModelAndView mv=new ModelAndView("add","command",new Supplier());
		return mv;

	}	
    @RequestMapping(value="admin/newsupplier", method=RequestMethod.POST)
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
    /*-----------Update Supplier---------*/
    @RequestMapping(value="admin/updatesupplier" , method=RequestMethod.GET) 
	public ModelAndView viewUpdate(Model model,@RequestParam("id") int sid){
 		ModelAndView mv=new ModelAndView("update");
 		Supplier supplier=supplierDao.findById(sid);
  		mv.getModelMap().addAttribute("sup", supplier);
  		return mv;
  }	
    @RequestMapping(value="admin/updatesupplier", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:supplier");
		Supplier supplier =new Supplier();
		supplier.setSid(Integer.parseInt(request.getParameter("sid")));
		supplier.setSname(request.getParameter("sname"));
		supplier.setSemail(request.getParameter("semail"));
		supplier.setScontact(request.getParameter("scontact"));
		supplier.setSaddress(request.getParameter("saddress"));
		supplierDao.update(supplier);
		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		return mv;
		
	 }
    @RequestMapping(value="admin/deletesupplier", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("supplier","command", new Supplier());
		supplierDao.delete(id);
		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		return mv;
	}	
}
