package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.BillingDao;
import com.niit.ProjBackend.Dao.CartDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Dao.UserDao;

public class TestBilling {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Billing bill=(Billing)ctx.getBean("billing");
		BillingDao billDao=(BillingDao)ctx.getBean("billingDao");
//		Cart cat=(Cart)ctx.getBean("cart");
//		CartDao catDao=(CartDao)ctx.getBean("cartDao");
//		Order ord=(Order)ctx.getBean("order");
//		OrderDao ordDao=(OrderDao)ctx.getBean("orderDao");
		User us=(User)ctx.getBean("user");
		UserDao usDao=(UserDao)ctx.getBean("userDao");
		
		bill.setBillId("c101");
		bill.setBillName("billing1");
		bill.setAddress("aaa");
		bill.setCity("bengaluru");
		bill.setPhone("54555545");
		
//		cat=catDao.getCart("c101");
//		bill.setCart(cat);
//		ord=ordDao.getOrder("c101");
//		bill.setOrder(ord);
		us=usDao.getUser("c101");
		bill.setUser(us);
		if(billDao.saveorupdate(bill)==true)
		{
			System.out.println("billing saved");
		}
		else
		{
			System.out.println("billing not saved");
		}
		
		bill.setBillId("c102");
		bill.setBillName("billing2");
		bill.setAddress("aaa");
		bill.setCity("bengaluru");
		bill.setPhone("54555545");
//		cat=catDao.getCart("c102");
//		bill.setCart(cat);
//		ord=ordDao.getOrder("c102");
//		bill.setOrder(ord);
		us=usDao.getUser("c102");
		bill.setUser(us);
		if(billDao.saveorupdate(bill)==true)
		{
			System.out.println("billing saved");
		}
		else
		{
			System.out.println("billing not saved")
			;
		}
		
		bill.setBillId("c103");
		bill.setBillName("billing3");
		bill.setAddress("aaa");
		bill.setCity("bengaluru");
		bill.setPhone("54555545");
//		cat=catDao.getCart("c103");
//		bill.setCart(cat);
//		ord=ordDao.getOrder("c103");
//		bill.setOrder(ord);
		us=usDao.getUser("c103");
		bill.setUser(us);
		if(billDao.saveorupdate(bill)==true)
		{
			System.out.println("billing saved");
		}
		else
		{
			System.out.println("billing not saved");
		}
		
		bill=billDao.getBilling("c101");
		if(billDao.delete(bill)==true)
		{
			System.out.println("billing deleted");
		}
		else
		{
			System.out.println("billing not deleted");
		}
		
		bill=billDao.getBilling("c102");
		if(bill==null)
		{
			System.out.println("billing not found");
		}
		else
		{
			System.out.println(bill.getBillId());
			System.out.println(bill.getBillName());
		}
		List<Billing> billlist=billDao.list();
		if(billlist==null||billlist.isEmpty())
		{
			System.out.println("billing list empty");
		}
		else
		{
			for(Billing c:billlist)
			{
				System.out.println(c.getBillId());
				System.out.println(c.getBillName());
			}
		}
	}
	
}
