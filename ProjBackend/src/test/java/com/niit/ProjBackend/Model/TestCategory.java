package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.CategoryDao;

public class TestCategory {

	
	public static void main(String args[]) {
		/*Category cat=new Category();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext ctx=new AnnotationConfigApplicationContext();
		ctx.scan("com.niit.*");
		ctx.refresh();
		Category cat=(Category)ctx.getBean("category");
		CategoryDao catDao=(CategoryDao)ctx.getBean("categoryDao");
		
		cat.setCatId("c101");
		cat.setCatName("category1");
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("Category saved");
		}
		else
		{
			System.out.println("category not saved");
		}
		
		cat.setCatId("c102");
		cat.setCatName("category2");
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("Category saved");
		}
		else
		{
			System.out.println("category not saved");
		}
		
		cat.setCatId("c103");
		cat.setCatName("category3");
		if(catDao.saveorupdate(cat)==true)
		{
			System.out.println("Category saved");
		}
		else
		{
			System.out.println("category not saved");
		}
		
		cat=catDao.getCategory("c101");
		if(catDao.delete(cat)==true)
		{
			System.out.println("Category deleted");
		}
		else
		{
			System.out.println("Category not deleted");
		}
		
		cat=catDao.getCategory("c102");
		if(cat==null)
		{
			System.out.println("Category not found");
		}
		else
		{
			System.out.println(cat.getCatId());
			System.out.println(cat.getCatName());
		}
		List<Category> catlist=catDao.list();
		if(catlist==null||catlist.isEmpty())
		{
			System.out.println("category list empty");
		}
		else
		{
			for(Category c:catlist)
			{
				System.out.println(c.getCatId());
				System.out.println(c.getCatName());
			}
		}
	}
	
}
