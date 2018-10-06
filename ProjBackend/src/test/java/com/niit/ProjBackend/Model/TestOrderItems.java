package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Dao.OrderItemsDao;

public class TestOrderItems {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		OrderItems cat=(OrderItems)ctx.getBean("orderItems");
		OrderItemsDao catDao=(OrderItemsDao)ctx.getBean("orderItemsDao");
		Order ord=(Order)ctx.getBean("order");
		OrderDao ordDao=(OrderDao)ctx.getBean("orderDao");
		
		cat.setProductId("c101");
		cat.setOrderItemsId("orderItems1");
		ord=ordDao.getOrder("c101");
		cat.setOrder(ord);

		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("orderItems saved");
		}
		else
		{
			System.out.println("orderItems not saved");
		}
		
		cat.setProductId("c102");
		cat.setOrderItemsId("orderItems2");
		ord=ordDao.getOrder("c102");
		cat.setOrder(ord);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("orderItems saved");
		}
		else
		{
			System.out.println("orderItems not saved");
		}
		
		cat.setProductId("c103");
		cat.setOrderItemsId("orderItems3");
		ord=ordDao.getOrder("c103");
		cat.setOrder(ord);
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("orderItems saved");
		}
		else
		{
			System.out.println("orderItems not saved");
		}
		
		cat=catDao.getOrderItems("orderItems1");
		if(catDao.delete(cat)==true)
		{
			System.out.println("orderItems deleted");
		}
		else
		{
			System.out.println("orderItems not deleted");
		}
		
		cat=catDao.getOrderItems("c102");
		if(cat==null)
		{
			System.out.println("orderItems not found");
		}
		else
		{
			System.out.println(cat.getProductId());
			System.out.println(cat.getOrderItemsId());
		}
		List<OrderItems> catlist=catDao.list();
		if(catlist==null||catlist.isEmpty())
		{
			System.out.println("orderItems list empty");
		}
		else
		{
			for(OrderItems c:catlist)
			{
				System.out.println(c.getProductId());
				System.out.println(c.getOrderItemsId());
			}
		}
	}
	
}
