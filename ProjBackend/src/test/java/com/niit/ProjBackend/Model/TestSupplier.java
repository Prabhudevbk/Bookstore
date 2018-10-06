package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.SupplierDao;

public class TestSupplier {

	
	public static void main(String args[]) {
		/*Supplier cat=new Supplier();
		cat.setCrtId("hi");
		System.out.println(cat.getCrtId());
		cat.setCrtName("hello");
		System.out.println(cat.getCrtName());*/
		
		
		
		
		
		AnnotationConfigApplicationContext stx=new AnnotationConfigApplicationContext();
		stx.scan("com.niit.*");
		stx.refresh();
		Supplier sup=(Supplier)stx.getBean("supplier");
		SupplierDao supDao=(SupplierDao)stx.getBean("supplierDao");
		
		sup.setSupId("c101");
		sup.setSupName("Supplier1");
		sup.setAddress("bengaluru");
		sup.setEmailId("vffgbbfgb");
		sup.setPhoneNo("1212121");
		if(supDao.saveorupdate(sup)==true)
		{
			System.out.println("Supplier saved");
		}
		else
		{
			System.out.println("Supplier not saved");
		}
		
		sup.setSupId("c102");
		sup.setSupName("Supplier2");
		sup.setAddress("bengaluru");
		sup.setEmailId("vffgbbfgb");
		sup.setPhoneNo("1212121");
		if(supDao.saveorupdate(sup)==true)
		{
			System.out.println("Supplier saved");
		}
		else
		{
			System.out.println("Supplier not saved");
		}
		
		sup.setSupId("c103");
		sup.setSupName("Supplier3");
		sup.setAddress("bengaluru");
		sup.setEmailId("vffgbbfgb");
		sup.setPhoneNo("1212121");
		if(supDao.saveorupdate(sup)==true)
		{
			System.out.println("Supplier saved");
		}
		else
		{
			System.out.println("Supplier not saved");
		}
		
		sup=supDao.getSupplier("c101");
		if(supDao.delete(sup)==true)
		{
			System.out.println("Supplier deleted");
		}
		else
		{
			System.out.println("Supplier not deleted");
		}
		
		sup=supDao.getSupplier("c102");
		if(sup==null)
		{
			System.out.println("Supplier not found");
		}
		else
		{
			System.out.println(sup.getSupId());
			System.out.println(sup.getSupName());
		}
		List<Supplier> suplist=supDao.list();
		if(suplist==null||suplist.isEmpty())
		{
			System.out.println("Supplier list empty");
		}
		else
		{
			for(Supplier c:suplist)
			{
				System.out.println(c.getSupId());
				System.out.println(c.getSupName());
			}
		}
	}
	
}
