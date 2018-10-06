package com.niit.Project.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ProjBackend.Dao.CategoryDao;
import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Product;
import com.niit.ProjBackend.Model.Shipping;

@Controller
public class HomeController {
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	@Autowired
	Category category;
	@Autowired
	CategoryDao categoryDao;
	
@RequestMapping("/")
public String home(Model model)
{
	ModelAndView obj=new ModelAndView("Product");
	List<Product> prodlist=productDao.list();
	List<Category> catlist=categoryDao.list();
	//List<SubCategory> subcatlist=subCategoryDao.list();
	//List<SubCategory> scatlist=subCategoryDao.getSubCategoryByCategory(category);
	model.addAttribute("categories",catlist);
	//model.addAttribute("scats",scatlist);
	//model.addAttribute("subcategories",subcatlist);
	obj.addObject("product",product);
	model.addAttribute("products", prodlist);
	return "Home";
}



}
