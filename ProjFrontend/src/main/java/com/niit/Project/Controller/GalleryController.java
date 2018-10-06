package com.niit.Project.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Model.Product;

@Controller
public class GalleryController {
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	
	@RequestMapping("/Gallery")

	public ModelAndView categoryform()
	{
		List<Product> products=productDao.list();
		ModelAndView obj=new ModelAndView("Gallery");
		obj.addObject("product", new Product());
		obj.addObject("products", products);
		return obj;
	}
	
	
	@RequestMapping("/CategoryGallery/{catId}")
	public ModelAndView categorygallery(@PathVariable("catId") String id, Model model,HttpSession session)
	{
		
		List<Product> products=productDao.getProductByCategory(id);
		ModelAndView obj=new ModelAndView("CategoryGallery");
		obj.addObject("product", new Product());
		obj.addObject("products", products);
		return obj;
	}
}
