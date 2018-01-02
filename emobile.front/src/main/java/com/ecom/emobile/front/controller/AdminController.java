package com.ecom.emobile.front.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecom.emobile.backend.Dao.CategoryDao;
import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Dao.SupplierDao;
import com.ecom.emobile.backend.Model.Category;
import com.ecom.emobile.backend.Model.Product;
import com.ecom.emobile.backend.Model.Supplier;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;
	
	@RequestMapping(value="/supplier", method=RequestMethod.GET)
	public ModelAndView suppiler() {
	ModelAndView mv=new ModelAndView("supplier");
	List<Product> products=productDao.findAll();
	List<Category> category=categoryDao.findAll();
	List<Supplier> supplier=supplierDao.findAll();
	mv.getModelMap().addAttribute("products", products);
	mv.getModelMap().addAttribute("category", category);
	mv.getModelMap().addAttribute("supplier",supplier);	
	return mv;
	}
	@RequestMapping(value="/newproduct" , method=RequestMethod.GET)
	public ModelAndView addproduct(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("add");
		request.setAttribute("categories", categoryDao.findAll());
		request.setAttribute("supplier",supplierDao.findAll());
		return mv;
	}
	@RequestMapping(value="/newproduct", method=RequestMethod.POST)
	 	 public ModelAndView newProduct(HttpServletRequest request, HttpServletResponse response){
	 	Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cid")));
		Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
	 		Product product =new Product();
	 		product.setPname(request.getParameter("pname"));
	 		product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
	 		product.setPdescrip(request.getParameter("pdescrip"));
	 		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
	 		product.setPimage(request.getParameter("pimage"));
	 		product.setCategory(category);
	 		product.setSid(supplier);
	 		productDao.save(product);
	 		ModelAndView mv=new ModelAndView("redirect:../products");
	 		return mv;
	 	 }
	/*----------UPDATE PAGE-------------*/
	@RequestMapping(value="/updateproduct" , method=RequestMethod.GET) 
			public ModelAndView viewUpdate(Model model,@RequestParam("id") int pid){
		 		ModelAndView mv=new ModelAndView("update");
		 		Product product=productDao.findById(pid);
		 		mv.getModelMap().addAttribute("product", product);
		  		mv.getModelMap().addAttribute("categories", categoryDao.findAll());
		  		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		  		return mv;
		  }	
	@RequestMapping(value="/updateproduct", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:/");
		Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cid")));
		Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
		Product product =new Product();
		product.setPid(Integer.parseInt(request.getParameter("pid")));
		product.setPname(request.getParameter("pname"));
		product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
		product.setPdescrip(request.getParameter("pdescrip"));
		product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
		product.setPimage(request.getParameter("pimage"));
		product.setCategory(category);
		product.setSid(supplier);
		productDao.update(product);
		mv.getModelMap().addAttribute("supplier", productDao.findAll());
		return mv;
		
	 }
	

	
	
	/*-------DELETE PAGE-----------*/
    @RequestMapping(value="/deleteproduct", method=RequestMethod.GET)
    			public ModelAndView delete(@RequestParam("id") int id){
    				ModelAndView mv=new ModelAndView("supplier","command", new Product());
    				productDao.delete(id);
    				mv.getModelMap().addAttribute("products", productDao.findAll());
    				return mv;
    			}	
	@RequestMapping(value="/newcategory", method=RequestMethod.GET)
 	public ModelAndView addCategory(){
 		ModelAndView mv=new ModelAndView("add","command",new Category());
		return mv;

	}	
	@RequestMapping(value="/newcategory", method=RequestMethod.POST)
	public ModelAndView viewCategory(@ModelAttribute("category") Category category){
		ModelAndView mv=new ModelAndView("products");
		categoryDao.save(category);
		return mv;
}
	/*---------Update Category----------*/
	@RequestMapping(value="/updatecategory" , method=RequestMethod.GET) 
	public ModelAndView viewUpdateCategory(Model model,@RequestParam("id") int cid){
 		ModelAndView mv=new ModelAndView("update");
 		Category category=categoryDao.findById(cid);
  		mv.getModelMap().addAttribute("category", category);
  		//mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
  		return mv;
  }	
	@RequestMapping(value="/updatecategory", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updatecategory(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:supplier");
		Category cat =new Category();
		cat.setCid(Integer.parseInt(request.getParameter("cid")));
		cat.setCname(request.getParameter("cname"));
		categoryDao.update(cat);
		mv.getModelMap().addAttribute("supplier", categoryDao.findAll());
		return mv;
		
	 }
	 @RequestMapping(value="/deletecategory", method=RequestMethod.GET)
		public ModelAndView deletecat(@RequestParam("id") int id){
			ModelAndView mv=new ModelAndView("redirect:../supplier","command", new Category());
			categoryDao.delete(id);
			mv.getModelMap().addAttribute("supplier", categoryDao.findAll());
			return mv;
		}	
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
	    /*-----------Update Supplier---------*/
	    @RequestMapping(value="/updatesupplier" , method=RequestMethod.GET) 
		public ModelAndView viewSupplier(Model model,@RequestParam("id") int sid){
	 		ModelAndView mv=new ModelAndView("update");
	 		Supplier supplier=supplierDao.findById(sid);
	  		mv.getModelMap().addAttribute("sup", supplier);
	  		return mv;
	  }	
	    @RequestMapping(value="/updatesupplier", method=RequestMethod.POST)
		// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
		public ModelAndView updateSupplier(HttpServletRequest request, HttpServletResponse response){
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
	    @RequestMapping(value="/deletesupplier", method=RequestMethod.GET)
		public ModelAndView deletesup(@RequestParam("id") int id){
			ModelAndView mv=new ModelAndView("supplier","command", new Supplier());
			supplierDao.delete(id);
			mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
			return mv;
		}	
	    @RequestMapping(value="/logout", method=RequestMethod.GET)
	    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response){
	    	HttpSession session=request.getSession(false);
	    	SecurityContextHolder.clearContext();
	    	if(session!=null)
	    		session.invalidate();
	    	ModelAndView mv=new ModelAndView("redirect:../");
	    	return mv;
	    }
}

