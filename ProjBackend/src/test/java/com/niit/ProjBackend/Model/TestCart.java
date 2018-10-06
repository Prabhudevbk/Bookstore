package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.CartDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;

public class TestCart {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Cart cat=(Cart)ctx.getBean("cart");
		CartDao catDao=(CartDao)ctx.getBean("cartDao");
//		Product prod=(Product)ctx.getBean("product");
//		ProductDao prodDao=(ProductDao)ctx.getBean("productDao");
		
		cat.setCartId("c101");
		cat.setGrandTotal(2346);
		cat.setTotalPrice(55);
//		prod=prodDao.getProduct("c101");
//		cat.setProduct(prod);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("cart saved");
		}
		else
		{
			System.out.println("cart not saved");
		}
		
		cat.setCartId("c102");
		cat.setGrandTotal(2236);
		cat.setTotalPrice(55);
//		prod=prodDao.getProduct("c102");
//		cat.setProduct(prod);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("cart saved");
		}
		else
		{
			System.out.println("cart not saved");
		}
		
		cat.setCartId("c103");
		cat.setGrandTotal(22346);
		cat.setTotalPrice(55);
//		prod=prodDao.getProduct("c103");
//		cat.setProduct(prod);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("cart saved");
		}
		else
		{
			System.out.println("cart not saved");
		}
		
		cat=catDao.getCart("c101");
		if(catDao.delete(cat)==true)
		{
			System.out.println("cart deleted");
		}
		else
		{
			System.out.println("cart not deleted");
		}
		
		cat=catDao.getCart("c102");
		if(cat==null)
		{
			System.out.println("cart not found");
		}
		else
		{
			System.out.println(cat.getCartId());
			System.out.println(cat.getGrandTotal());
		}
		List<Cart> catlist=catDao.list();
		if(catlist==null||catlist.isEmpty())
		{
			System.out.println("cart list empty");
		}
		else
		{
			for(Cart c:catlist)
			{
				System.out.println(c.getCartId());
				System.out.println(c.getGrandTotal());
			}
		}
	}
	
}
