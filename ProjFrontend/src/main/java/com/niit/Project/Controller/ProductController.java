package com.niit.Project.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Dao.SupplierDao;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Product;
import com.niit.ProjBackend.Model.Supplier;
import com.niit.ProjBackend.Model.User;
import com.niit.ProjFrontend.fileInput.FileInput;



@Controller
public class ProductController {

	
	@Autowired
	Category category;
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	@Autowired
	Supplier supplier;
	@Autowired
	SupplierDao supplierDao;
	
	String path="C:\\Users\\Prabhu\\eclipse-workspace\\ProjFrontend\\src\\main\\webapp\\Resources\\Images\\";
	
	@RequestMapping("/Product")
	public ModelAndView productform()
	{
		List<Product> products=productDao.list();
		List<Category> categories=categoryDao.list();
		List<Supplier> supplies=supplierDao.list();
		ModelAndView obj=new ModelAndView("Product");
		ModelAndView obj1=new ModelAndView("Product");
		obj.addObject("supplier", new Supplier());
		obj.addObject("supplies", supplies);
		obj.addObject("category", new Category());
		obj.addObject("categories", categories);
		obj.addObject("product", new Product());
		obj.addObject("products", products);
		return obj;
	}
	
	@RequestMapping(value="/addprod",method=RequestMethod.POST)
	public ModelAndView addproduct(@ModelAttribute("Product")Product product)
	{
		ModelAndView obj= new ModelAndView("redirect:/Product");
		FileInput.upload(path,product.getPimg(),product.getProdId()+".jpg");
//		categoryDao.saveorupdate(category);
//		obj.addObject("echo", "Category is addes successfully");
		if(productDao.saveorupdate(product)==true)
		{
			obj.addObject("echo", "Product is added successfully");
			
		}
		else
		{
			obj.addObject("msg","Sorry! Product is not added");
		}
		obj.setViewName("redirect:/Product");
		return obj;
	}

	
//	@RequestMapping(value="/addprod", method=RequestMethod.POST)
//	public ModelAndView addproduct(HttpServletRequest req, @ModelAttribute("product")Product product, @RequestParam("pimg") MultipartFile file, @ModelAttribute("user")User user) {
//		ModelAndView obj = new ModelAndView("redirect:/Product");
//		String filepath=req.getSession().getServletContext().getRealPath("/");
//		String filename=file.getOriginalFilename();
//		product.setImageName(filename);
//				productDao.saveorupdate(product);
//		
//		try
//		{
//			byte[] imagebyte= file.getBytes();
//			BufferedOutputStream fos= new BufferedOutputStream(new FileOutputStream(filepath+"/Resources/"+filename));
//				fos.write(imagebyte);
//			fos.close();
//		}
//		
//		catch(Exception e)
//		{
//			
//		}
//		return obj;
//	}

@RequestMapping("/editproduct/{ProdId}")
public ModelAndView editcategory(@PathVariable("ProdId")String ProdId)
{
	System.out.println(123);
	List<Product> products=productDao.list();
	List<Category> categories=categoryDao.list();
	List<Supplier> supplies=supplierDao.list();
	ModelAndView obj=new ModelAndView("Product");
	product=productDao.getProduct(ProdId);
	obj.addObject("product",product);
	obj.addObject("products", products);
	obj.addObject("categories", categories);
	obj.addObject("supplies", supplies);
	return obj;
	}
@RequestMapping("/deleteproduct/{ProdId}")
public ModelAndView deleteproduct(@PathVariable("ProdId")String ProdId)
{
	ModelAndView obj=new ModelAndView("redirect:/Product");
	product=productDao.getProduct(ProdId);
//	subCategory=subCategoryDao.getSubCatId(subCatId);
	Product sublist=productDao.getProduct(ProdId);
//	List<Product> lists= productDao.getProductBySubCategory(subCategory);
//	List<Product> lists=productDao.getProductByCategory(category);
//	if(sublist==null)
//	{
		productDao.delete(product);
		obj.addObject("msg","Product is deleted successfully");
//	}
//	else
//	{			
//		for(SubCategory s:sublist)				//Doubt section
//		{
//			List<Product> p=productDao.getProductBySubCategory(s);
//			
//			for(Product prodlist:p)
//			{
//			productDao.delete(prodlist);
//			}
//			subCategoryDao.delete(s);
//		}
//		categoryDao.delete(category);
//		obj.addObject("msg","Category and SubCategory is deleted successfully");
		obj.addObject("msg", "Product not deleted");
//	}
	return obj;
    }
	
}

