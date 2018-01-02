package com.ecom.emobile.front.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ecom.emobile.backend.Dao.ProductDao;
import com.ecom.emobile.backend.Model.Cart;
import com.ecom.emobile.backend.Model.CartItem;
import com.ecom.emobile.backend.Model.Product;

@Controller
public class CartController {
@Autowired
private ProductDao productDao;

@RequestMapping(value="/cart", method=RequestMethod.GET)
public ModelAndView getCartItems(Model model,HttpServletRequest request,HttpServletResponse response) {
	ModelAndView mv=new ModelAndView("cart");
	return mv;
}
@RequestMapping(value="/checkout", method=RequestMethod.GET)
public ModelAndView check(Model model,HttpServletRequest request,HttpServletResponse response) {
	ModelAndView mv=new ModelAndView("checkout");
	return mv;
}
@RequestMapping(value="/addToCart", method=RequestMethod.GET)
public ModelAndView getProductById(Model model,@RequestParam("id") int pid, @RequestParam("txtQuantity") int quantity, HttpServletRequest request, HttpServletResponse response) {
	ModelAndView mv=new ModelAndView("redirect:products");
	Product product =productDao.findById(pid);
	HttpSession session=request.getSession(false);
	Cart cart=null;
	if(session!=null){
		cart=(Cart) session.getAttribute("cart");
		CartItem item=new CartItem();
		item.setProduct(product);
		item.setQuantity(quantity);			
		if(cart==null){				
			cart=new Cart();	
		}
		boolean state=false;
		for(CartItem c : cart.getItems()){
			if(c.getProduct().getPname().equals(product.getPname())){
				c.setQuantity(item.getQuantity());
				state=true;
			}
		}
		if(!state)
		cart.getItems().add(item);
	}	
	session.setAttribute("cart", cart);
	return mv;
}
@RequestMapping(value="/deleteitem", method=RequestMethod.GET)
public ModelAndView delete(Model model,@RequestParam("id") int pid, HttpServletRequest request, HttpServletResponse response) {
	ModelAndView mv=new ModelAndView("redirect:products");
	Product product =productDao.findById(pid);
	HttpSession session=request.getSession(false);
	Cart cart=null;
	if(session!=null){
		cart=(Cart) session.getAttribute("cart");
		CartItem item=new CartItem();
		try {
		for(CartItem c : cart.getItems()){
			if(c.getProduct().getPname().equals(product.getPname())){
				item=cart.getItems().set(c.getId(), c);
				cart.getItems().remove(item);					
			}
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	}session.setAttribute("cart", cart);
		return mv;
}

}




