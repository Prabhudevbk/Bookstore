package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.BillingDao;
import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Dao.UserDao;

public class TestUser {

	
	public static void main(String args[]) {
		/*User cat=new User();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext utx=new AnnotationConfigApplicationContext();
		utx.scan("com.niit.*");
		utx.refresh();
		User user=(User)utx.getBean("user");
		UserDao supDao=(UserDao)utx.getBean("userDao");
		Billing bill=(Billing)utx.getBean("billing");
		BillingDao billDao=(BillingDao)utx.getBean("billingDao");
//		Order ord=(Order)utx.getBean("order");
//		OrderDao ordDao=(OrderDao)utx.getBean("orderDao");
		
		user.setUserId("c101");
		user.setName("User1");
		user.setAddress("bengaluru");
		user.setCity("bengaluru");
		user.setEmailId("vvccfhnj");
		user.setPassword("ggbvdfn");
		user.setPhoneNo("2555");
		bill=billDao.getBilling("c101");
		user.setBilling(bill);
//		ord=ordDao.getOrder("c101");
//		user.setOrder(ord);
		if(supDao.saveorupdate(user)==true)
		{
			System.out.println("User saved");
		}
		else
		{
			System.out.println("User not saved");
		}
		
		user.setUserId("c102");
		user.setName("User2");
		user.setAddress("bengaluru");
		user.setCity("bengaluru");
		user.setEmailId("vvccfhnj");
		user.setPassword("ggbvdfn");
		user.setPhoneNo("2555");
		bill=billDao.getBilling("c102");
		user.setBilling(bill);
//		ord=ordDao.getOrder("c102");
//		user.setOrder(ord);

		if(supDao.saveorupdate(user)==true)
		{
			System.out.println("User saved");
		}
		else
		{
			System.out.println("User not saved");
		}
		
		user.setUserId("c103");
		user.setName("User3");
		user.setAddress("bengaluru");
		user.setCity("bengaluru");
		user.setEmailId("vvccfhnj");
		user.setPassword("ggbvdfn");
		user.setPhoneNo("2555");
		bill=billDao.getBilling("c103");
		user.setBilling(bill);
//		ord=ordDao.getOrder("c103");
//		user.setOrder(ord);

		if(supDao.saveorupdate(user)==true)
		{
			System.out.println("User saved");
		}
		else
		{
			System.out.println("User not saved");
		}
		
		user=supDao.getUser("c101");
		if(supDao.delete(user)==true)
		{
			System.out.println("User deleted");
		}
		else
		{
			System.out.println("User not deleted");
		}
		
		user=supDao.getUser("c102");
		if(user==null)
		{
			System.out.println("User not found");
		}
		else
		{
			System.out.println(user.getUserId());
			System.out.println(user.getName());
		}
		List<User> suplist=supDao.list();
		if(suplist==null||suplist.isEmpty())
		{
			System.out.println("User list empty");
		}
		else
		{
			for(User u:suplist)
			{
				System.out.println(u.getUserId());
				System.out.println(u.getName());
			}
		}
	}
	
}
