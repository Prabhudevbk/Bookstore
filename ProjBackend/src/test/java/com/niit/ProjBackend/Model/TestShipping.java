package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Dao.ShippingDao;
import com.niit.ProjBackend.Dao.UserDao;

public class TestShipping {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Shipping cat=(Shipping)ctx.getBean("shipping");
		ShippingDao catDao=(ShippingDao)ctx.getBean("shippingDao");
//		Order ord=(Order)ctx.getBean("order");
//		OrderDao ordDao=(OrderDao)ctx.getBean("orderDao");
		User us=(User)ctx.getBean("user");
		UserDao usDao=(UserDao)ctx.getBean("userDao");
		
		cat.setShipId("c101");
		cat.setName("shipping1");
		cat.setCity("bengaluru");
		cat.setAddress("bbb");
		cat.setPhone("11");
//		ord=ordDao.getOrder("c101");
//		cat.setOrder(ord);
		us=usDao.getUser("c101");
		cat.setUser(us);
		
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("shipping1 saved");
		}
		else
		{
			System.out.println("shipping not saved");
		}
		
		cat.setShipId("c102");
		cat.setName("shipping2");
		cat.setCity("bengaluru");
		cat.setAddress("bbb");
		cat.setPhone("12");
//		ord=ordDao.getOrder("c102");
//		cat.setOrder(ord);
		us=usDao.getUser("c102");
		cat.setUser(us);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("shipping saved");
		}
		else
		{
			System.out.println("shipping not saved");
		}
		
		cat.setShipId("c103");
		cat.setName("shipping3");
		cat.setCity("bengaluru");
		cat.setAddress("bbb");
		cat.setPhone("13");
//		ord=ordDao.getOrder("c103");
//		cat.setOrder(ord);
		us=usDao.getUser("c103");
		cat.setUser(us);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("shipping saved");
		}
		else
		{
			System.out.println("shipping not saved");
		}
		
		cat=catDao.getShipping("c101");
		if(catDao.delete(cat)==true)
		{
			System.out.println("shipping deleted");
		}
		else
		{
			System.out.println("shipping not deleted");
		}
		
		cat=catDao.getShipping("c102");
		if(cat==null)
		{
			System.out.println("shipping not found");
		}
		else
		{
			System.out.println(cat.getShipId());
			System.out.println(cat.getName());
		}
		List<Shipping> catlist=catDao.list();
		if(catlist==null||catlist.isEmpty())
		{
			System.out.println("shipping list empty");
		}
		else
		{
			for(Shipping c:catlist)
			{
				System.out.println(c.getShipId());
				System.out.println(c.getName());
			}
		}
	}
	
}
