package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.CartDao;
import com.niit.ProjBackend.Dao.CartItemsDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;

public class TestCartItems {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		CartItems cat=(CartItems)ctx.getBean("cartItems");
		CartItemsDao catDao=(CartItemsDao)ctx.getBean("cartItemsDao");
		Cart cart=(Cart)ctx.getBean("cart");
		CartDao cartDao=(CartDao)ctx.getBean("cartDao");
		Product prod=(Product)ctx.getBean("product");
		ProductDao prodDao=(ProductDao)ctx.getBean("productDao");
		
		cat.setCartItemId("c101");
		cat.setPrice(221);
		cart=cartDao.getCart("c101");
		cat.setCart(cart);
		prod=prodDao.getProduct("c101");
		cat.setProduct(prod);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("cartItems saved");
		}
		else
		{
			System.out.println("cartItems not saved");
		}
		
		cat.setCartItemId("c102");
		cat.setPrice(112);
		cart=cartDao.getCart("c102");
		cat.setCart(cart);
		prod=prodDao.getProduct("c102");
		cat.setProduct(prod);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("cartItems saved");
		}
		else
		{
			System.out.println("cartItems not saved");
		}
		
		cat.setCartItemId("c103");
		cat.setPrice(55);
		cart=cartDao.getCart("c103");
		cat.setCart(cart);
		prod=prodDao.getProduct("c103");
		cat.setProduct(prod);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("cartItems saved");
		}
		else
		{
			System.out.println("cartItems not saved");
		}
		
		cat=catDao.getCartItems("c101");
		if(catDao.delete(cat)==true)
		{
			System.out.println("cartItems deleted");
		}
		else
		{
			System.out.println("cartItems not deleted");
		}
		
		cat=catDao.getCartItems("c102");
		if(cat==null)
		{
			System.out.println("cartItems not found");
		}
		else
		{
			System.out.println(cat.getCartItemId());
			System.out.println(cat.getPrice());
		}
		List<CartItems> catlist=catDao.list();
		if(catlist==null||catlist.isEmpty())
		{
			System.out.println("category list empty");
		}
		else
		{
			for(CartItems c:catlist)
			{
				System.out.println(c.getCartItemId());
				System.out.println(c.getPrice());
			}
		}
	}
	
}
