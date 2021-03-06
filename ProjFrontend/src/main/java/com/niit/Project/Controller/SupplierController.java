package com.niit.Project.Controller;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Dao.SupplierDao;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Product;
import com.niit.ProjBackend.Model.Supplier;



@Controller
public class SupplierController {

	@Autowired
	Supplier supplier;
	@Autowired
	SupplierDao supplierDao;
	
	@Autowired
	Category category;
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/Supplier")
	public ModelAndView supplierform()
	{
		List<Supplier> supplies=supplierDao.list();
		ModelAndView obj=new ModelAndView("Supplier");
		obj.addObject("supplier", new Supplier());
		obj.addObject("supplies", supplies);
		return obj;
	}
	
	@RequestMapping(value="/addsup",method=RequestMethod.POST)
	public ModelAndView addsupplier(@ModelAttribute("Supplier")Supplier supplier)
	{
		ModelAndView obj= new ModelAndView();
//		categoryDao.saveorupdate(category);
//		obj.addObject("echo", "Category is addes successfully");
		if(supplierDao.saveorupdate(supplier)==true)
		{
			obj.addObject("echo", "Supplier is added successfully");
			
		}
		else
		{
			obj.addObject("msg","Sorry! Supplier is not added");
		}
		obj.setViewName("redirect:/Supplier");
		return obj;
	}


@RequestMapping("/editsupplier/{SupId}")
public ModelAndView editsupplier(@PathVariable("SupId")String SupId)
{
	System.out.println(123);
	supplier=supplierDao.getSupplier(SupId);
	List<Supplier> supplies=supplierDao.list();
	ModelAndView obj=new ModelAndView("Supplier");
	obj.addObject("supplier",supplier);
	obj.addObject("supplies", supplies);
	
	return obj;
	}
@RequestMapping("/deletesupplier/{SupId}")
public ModelAndView deletesupplier(@PathVariable("SupId")String SupId)
{
	ModelAndView obj=new ModelAndView("redirect:/Supplier");
	supplier=supplierDao.getSupplier(SupId);
//	subCategory=subCategoryDao.getSubCatId(subCatId);
//	Supplier sublist=supplierDao.getSupplier(SupId);
//	List<Product> lists= productDao.getProductBySubCategory(subCategory);
	List<Product> lists=productDao.getProductBySupplier(SupId);
	if(lists==null)
	{
		supplierDao.delete(supplier);
		obj.addObject("msg","Supplier is deleted successfully");
	}
	else
	{			
		
			for(Product prodlist:lists)
			{
			productDao.delete(prodlist);
			}
			categoryDao.delete(category);
		}
//		categoryDao.delete(category);
		obj.addObject("msg","Category and SubCategory is deleted successfully");
//		obj.addObject("msg", "Supplier not deleted");
//	}
	return obj;
    }
	
}
