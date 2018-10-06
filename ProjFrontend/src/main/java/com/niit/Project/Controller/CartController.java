package com.niit.Project.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ProjBackend.Dao.CartDao;
import com.niit.ProjBackend.Dao.CartItemsDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Dao.UserDao;
import com.niit.ProjBackend.Model.Cart;
import com.niit.ProjBackend.Model.CartItems;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Product;
import com.niit.ProjBackend.Model.User;


@Controller 
public class CartController {

	@Autowired
	Category category;
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	User user;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	Product product;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	Cart cart;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	CartItems cartItems;
	
	@Autowired
	CartItemsDao cartItemsDao;
	
	@RequestMapping("/addtocart/{prodId}")
	public ModelAndView cart(@PathVariable("prodId") String id, HttpSession session)
	{
		Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
		if(!(authentication instanceof AnonymousAuthenticationToken))
		{
	String currusername=authentication.getName();
	User u=userDao.getEmail(currusername);
	
	if(u==null)
	{    
//		int items=0;
//		Product product1=productDao.getProduct(id);
//		CartItems cartItem=new CartItems();
////		cartItem.setCart(cart);
//		cartItem.setProduct(product1);
//		cartItem.setPrice(product1.getPrice());
//		cartItemsDao.saveorupdate(cartItem);
////		cart.setGrand_total(cart.getGrand_total()+product1.getPrice());
////		cart.setTotal_items(cart.getTotal_items()+1);
////		cartDao.saveorupdate(cart);
////		session.setAttribute("items",cart.getTotal_items());
////		session.setAttribute("gd",cart.getGrand_total());
//		items=items+1;
//		session.setAttribute("items",items);
//		
		return new ModelAndView("redirect:/");
	}
	else
	{
		cart=u.getCart();
//		ModelAndView mv= new ModelAndView();
//		Cart cart= new Cart();
//		mv.addObject("cart", cart);
		Product product1=productDao.getProduct(id);
		CartItems cartItem=new CartItems();
		cartItem.setCart(cart);
		cartItem.setProduct(product1);
		cartItem.setPrice(product1.getPrice());
		cartItemsDao.saveorupdate(cartItem);
		cart.setGrandTotal(cart.getGrandTotal()+product1.getPrice());
		cart.setTotalPrice(cart.getTotalPrice()+1);
		cartDao.saveorupdate(cart);
		session.setAttribute("items",cart.getTotalPrice());
		session.setAttribute("gd",cart.getGrandTotal());
		return new ModelAndView("redirect:/");
		
	}}else {
		return new ModelAndView("redirect:/");
	}
	}
		
			@RequestMapping(value="/checkout")
			public String viewcart(Model model,HttpSession session)
			{
				System.out.println(1223);
				Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
				if(!(authentication instanceof AnonymousAuthenticationToken))
				{

					String currusername=authentication.getName();
					User u=userDao.getEmail(currusername);
					Cart cart= u.getCart();
					List<CartItems> cartItem=cartItemsDao.getlist(u.getCart().getCartId());
					if(cartItem==null||cartItem.isEmpty())
					{
					session.setAttribute("items",0);
					model.addAttribute("gtotal",0.0);
					model.addAttribute("msg","no items is added to cart");
					return "checkout";
				}
				model.addAttribute("cartItems",cartItem);
				model.addAttribute("gtotal",cart.getGrandTotal());
				session.setAttribute("items",cart.getTotalPrice());
				session.setAttribute("cartId", cart.getCartId());
				List<Category> categories=categoryDao.list();
				model.addAttribute("lcat",categories);
				
				return "checkout";
				}
				else {
					model.addAttribute("msg", "Please login");
				return "redirect:/";
				}
			}
			
			@RequestMapping(value="/Remove/{cartItemId}")
			public ModelAndView RemoveFromCart(@PathVariable("cartItemId")String id)
			{
				ModelAndView mv= new ModelAndView("redirect:/checkout");
				cartItems= cartItemsDao.getCartItems(id);
				Cart c= cartItems.getCart();
				c.setGrandTotal(c.getGrandTotal()-cartItems.getPrice());
				c.setTotalPrice(c.getTotalPrice()-1);
				cartDao.saveorupdate(c);
				cartItemsDao.delete(cartItems);
				return mv;
			}
			
			
			@RequestMapping(value="/RemoveAll")
			public String RemoveAllFromCart(Model model, HttpSession session)
			{
				Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
				if(!(authentication instanceof AnonymousAuthenticationToken))
				{
					String currusername=authentication.getName();
					User u=userDao.getEmail(currusername);
					Cart c= cartDao.getCart(u.getCart().getCartId());
				List<CartItems> cartItem=cartItemsDao.getlist(u.getCart().getCartId());
				for(CartItems c1:cartItem)
				{
					cartItemsDao.getCartItems(c1.getCartItemId());
					cartItemsDao.delete(c1);
				}
				c.setGrandTotal(0.0);
				c.setTotalPrice(0);
				cartDao.saveorupdate(c);
				session.setAttribute("items", c.getTotalPrice());
				return "redirect:/checkout";
			}
				
				else
				{
					return "redirect:/";
				}
				
				}
		}