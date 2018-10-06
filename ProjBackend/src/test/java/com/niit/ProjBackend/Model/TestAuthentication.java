package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.AuthenticationDao;

public class TestAuthentication {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hello");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Authentication aut=(Authentication)ctx.getBean("authentication");
		AuthenticationDao autDao=(AuthenticationDao)ctx.getBean("authenticationDao");
		
		aut.setRoleId("c101");
		aut.setRoleName("authentication1");
		aut.setUserName("aut user1");
		if(autDao.saveorupdate(aut)==true)
		{
			System.out.println("authentication saved");
		}
		else
		{
			System.out.println("authentication not saved");
		}
		
		aut.setRoleId("c102");
		aut.setRoleName("authentication2");
		aut.setUserName("aut user1");
		if(autDao.saveorupdate(aut)==true)
		{
			System.out.println("authentication saved");
		}
		else
		{
			System.out.println("authentication not saved");
		}
		
		aut.setRoleId("c103");
		aut.setRoleName("authentication3");
		aut.setUserName("aut user1");
		if(autDao.saveorupdate(aut)==true)
		{
			System.out.println("authentication saved");
		}
		else
		{
			System.out.println("authentication not saved");
		}
		
		aut=autDao.getAuthentication("c101");
		if(autDao.delete(aut)==true)
		{
			System.out.println("authentication deleted");
		}
		else
		{
			System.out.println("authentication not deleted");
		}
		
		aut=autDao.getAuthentication("c102");
		if(aut==null)
		{
			System.out.println("authentication not found");
		}
		else
		{
			System.out.println(aut.getRoleId());
			System.out.println(aut.getRoleName());
		}
		List<Authentication> autlist=autDao.list();
		if(autlist==null||autlist.isEmpty())
		{
			System.out.println("authentication list empty");
		}
		else
		{
			for(Authentication a:autlist)
			{
				System.out.println(a.getRoleId());
				System.out.println(a.getRoleName());
			}
		}
	}
	
}
