package com.niit.ProjBackend.Model;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ProjBackend.Dao.CartDao;
import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Dao.SupplierDao;


public class TestProduct {

	
	public static void main(String args[]) {
		
		
		AnnotationConfigApplicationContext ptx=new AnnotationConfigApplicationContext();
		ptx.scan("com.niit.*");
		ptx.refresh();
		Product prod=(Product)ptx.getBean("product");
		ProductDao prodDao=(ProductDao)ptx.getBean("productDao");
		Category cat=(Category)ptx.getBean("category");
		CategoryDao catDao=(CategoryDao)ptx.getBean("categoryDao");
		Supplier sup=(Supplier)ptx.getBean("supplier");
		SupplierDao supDao=(SupplierDao)ptx.getBean("supplierDao");
		
		prod.setProdId("c101");
		prod.setProdName("product1");
		prod.setPrice(555);
		prod.setDescription("hi");
		prod.setQuantity(1);
		cat=catDao.getCategory("c101");
		prod.setCategory(cat);
		sup=supDao.getSupplier("c101");
		prod.setSupplier(sup);
		if(prodDao.saveorupdate(prod)==true)
		{
			System.out.println("product saved");
		}
		else
		{
			System.out.println("product not saved");
		}
		
		prod.setProdId("c102");
		prod.setProdName("product2");
		prod.setPrice(555);
		prod.setDescription("hi");
		prod.setQuantity(1);
		cat=catDao.getCategory("c102");
		prod.setCategory(cat);
		sup=supDao.getSupplier("c102");
		prod.setSupplier(sup);
		if(prodDao.saveorupdate(prod)==true)
		{
			System.out.println("Product saved");
		}
		else
		{
			System.out.println("Product not saved");
		}
		
		prod.setProdId("c103");
		prod.setProdName("prodegory3");
		prod.setPrice(555);
		prod.setDescription("hi");
		prod.setQuantity(1);
		cat=catDao.getCategory("c103");
		prod.setCategory(cat);
		sup=supDao.getSupplier("c103");
		prod.setSupplier(sup);
		if(prodDao.saveorupdate(prod)==true)
		{
			System.out.println("Product saved");
		}
		else
		{
			System.out.println("Product not saved");
		}
		
		prod=prodDao.getProduct("c101");
		if(prodDao.delete(prod)==true)
		{
			System.out.println("Product deleted");
		}
		else
		{
			System.out.println("Product not deleted");
		}
		
		prod=prodDao.getProduct("c102");
		if(prod==null)
		{
			System.out.println("Product not found");
		}
		else
		{
			System.out.println(prod.getProdId());
			System.out.println(prod.getProdName());
		}
		List<Product> prodlist=prodDao.list();
		if(prodlist==null||prodlist.isEmpty())
		{
			System.out.println("Product list empty");
		}
		else
		{
			for(Product p:prodlist)
			{
				System.out.println(p.getProdId());
				System.out.println(p.getProdName());
			}
		}
		
		List<Product> plist=prodDao.getProductByCategory("c102");
		
		if(plist==null||plist.isEmpty())
		{
			System.out.println("Product list empty");
		}
		else
		{
			for(Product p:plist)
			{
				System.out.println(p.getProdId());
				System.out.println(p.getProdName());
				if(prodDao.delete(p)==true)
				{
					System.out.println("Product deleted");
				}
			}
		}
		
	}
	
}
