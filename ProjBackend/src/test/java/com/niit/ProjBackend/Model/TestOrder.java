package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.BillingDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Dao.ShippingDao;
import com.niit.ProjBackend.Dao.UserDao;

public class TestOrder {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Order cat=(Order)ctx.getBean("order");
		OrderDao catDao=(OrderDao)ctx.getBean("orderDao");
		Billing bill=(Billing)ctx.getBean("billing");
		BillingDao billDao=(BillingDao)ctx.getBean("billingDao");
		Shipping ship=(Shipping)ctx.getBean("shipping");
		ShippingDao shipDao=(ShippingDao)ctx.getBean("shippingDao");
		User us=(User)ctx.getBean("user");
		UserDao usDao=(UserDao)ctx.getBean("userDao");
		
		cat.setOrderId("c101");
		cat.setOrderTime("order1");
		cat.setOrderDate("5-4-98");
		cat.setGrandTotal(555);
		bill=billDao.getBilling("c101");
		cat.setBilling(bill);
		ship=shipDao.getShipping("c101");
		cat.setShipping(ship);
		us=usDao.getUser("c101");
		cat.setUser(us);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("order saved");
		}
		else
		{
			System.out.println("order not saved");
		}
		
		cat.setOrderId("c102");
		cat.setOrderTime("order2");
		cat.setOrderDate("5-4-98");
		cat.setGrandTotal(555);
		bill=billDao.getBilling("c102");
		cat.setBilling(bill);
		ship=shipDao.getShipping("c102");
		cat.setShipping(ship);
		us=usDao.getUser("c102");
		cat.setUser(us);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("order saved");
		}
		else
		{
			System.out.println("order not saved");
		}
		
		cat.setOrderId("c103");
		cat.setOrderTime("order3");
		cat.setOrderDate("5-4-98");
		cat.setGrandTotal(555);
		bill=billDao.getBilling("c103");
		cat.setBilling(bill);
		ship=shipDao.getShipping("c103");
		cat.setShipping(ship);
		us=usDao.getUser("c103");
		cat.setUser(us);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("order saved");
		}
		else
		{
			System.out.println("order not saved");
		}
		
		cat=catDao.getOrder("c101");
		if(catDao.delete(cat)==true)
		{
			System.out.println("order deleted");
		}
		else
		{
			System.out.println("order not deleted");
		}
		
		cat=catDao.getOrder("c102");
		if(cat==null)
		{
			System.out.println("order not found");
		}
		else
		{
			System.out.println(cat.getOrderId());
			System.out.println(cat.getOrderTime());
		}
		List<Order> catlist=catDao.list();
		if(catlist==null||catlist.isEmpty())
		{
			System.out.println("order list empty");
		}
		else
		{
			for(Order c:catlist)
			{
				System.out.println(c.getOrderId());
				System.out.println(c.getOrderTime());
			}
		}
	}
	
}
