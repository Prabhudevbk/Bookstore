package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.ProductDao;
import com.niit.ProjBackend.Model.BestSeller;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Product;

@Repository("productDao")
@Transactional
@EnableTransactionManagement
public class ProductDaoImpl implements ProductDao{

	@Autowired
	SessionFactory sessionFactory;
	public ProductDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public boolean saveorupdate(Product product) {
		// TODO Auto-generated method stub
		BestSeller b= new BestSeller();
		b.setName(product.getProdName());
		b.setProduct(product);
		sessionFactory.getCurrentSession().saveOrUpdate(b);
		sessionFactory.getCurrentSession().saveOrUpdate(product);		
		return true;
	}

	@Override
	public boolean delete(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(product);
		return true;
	}

	@Override
	public Product getProduct(String ProdId) {
		// TODO Auto-generated method stub
		String Prod="From Product where ProdId='"+ProdId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(Prod);
		List<Product> prodlist=(List<Product>) q.list();
		if(prodlist==null||prodlist.isEmpty())
		{
		return null;
		}
		else
		{
			return prodlist.get(0);
		
		}
	}


private void CreateQuery(String Prod) {
	// TODO Auto-generated method stub
	
}
	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		List<Product> list=(List<Product>)
				sessionFactory.getCurrentSession().createCriteria(Product.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

	@Override
	public List<Product> getProductByCategory(String catId) {
		String Prod="From Product where catId='"+catId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(Prod);
		List<Product> prodlist=(List<Product>) q.list();
		if(prodlist==null||prodlist.isEmpty())
		{
		return null;
		}
		else
		{
			return prodlist;
		
		}
	}

	@Override
	public List<Product> getProductBySupplier(String SupId) {
	String Prod="From Product where SupId='"+SupId+"'";
	Query q=sessionFactory.getCurrentSession().createQuery(Prod);
	List<Product> prodlist=(List<Product>) q.list();
	if(prodlist==null||prodlist.isEmpty())
	{
	return null;
	}
	else
	{
		return prodlist;
	
	}
	}

	

//	@Override
//	public List<Category> getProductByCategory1(String catId) {
//		String Prod="From Product where catId='"+catId+"'";
//		Query q=sessionFactory.getCurrentSession().createQuery(Prod);
//		List<Category> catlist=(List<Category>) q.list();
//		if(catlist==null||catlist.isEmpty())
//		{
//		return null;
//		}
//		else
//		{
//			return catlist;
//		
//			}
//		}
}