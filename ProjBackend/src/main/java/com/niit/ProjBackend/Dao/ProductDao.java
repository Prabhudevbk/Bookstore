package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Product;

public interface ProductDao {
	public boolean saveorupdate(Product product);
	public boolean delete(Product product);
	public Product getProduct(String ProdId);
	public List<Product> getProductByCategory(String catId);
	public List<Product> getProductBySupplier(String SupId);
	//public List<Product> getProductByCategory1(String catName);
	public List<Product> list();
}
