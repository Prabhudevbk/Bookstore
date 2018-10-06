package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.CartItemsDao;
import com.niit.ProjBackend.Model.CartItems;
import com.niit.ProjBackend.Model.Category;

@Repository("cartItemsDao")
@Transactional
@EnableTransactionManagement
public class CartItemsDaoImpl implements CartItemsDao {

	@Autowired
	SessionFactory sessionFactory;
	public CartItemsDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public boolean saveorupdate(CartItems cartitems) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartitems);
		return true;
	}

	@Override
	public boolean delete(CartItems cartitems) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(cartitems);
		return true;
	}

	@Override
	public CartItems getCartItems(String cartitemsId) {
		// TODO Auto-generated method stub
		String car="From CartItems where cartItemId='"+cartitemsId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		List<CartItems> catlist=(List<CartItems>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		else
		{
			return catlist.get(0);
		
		}
	}

	
	@Override
	public List<CartItems> list() {
		// TODO Auto-generated method stub
		List<CartItems> list=(List<CartItems>)
				sessionFactory.getCurrentSession().createCriteria(CartItems.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

	@Override
	public List<CartItems> getlist(String cartId) {
		String car="From CartItems where cartId='"+cartId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		List<CartItems> catlist=(List<CartItems>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		else
		{
			return catlist;
		
		}
	}

	@Override
	public CartItems getlistall(String cartId, String prodId) {
		// TODO Auto-generated method stub
		String car="From CartItems where cartId='"+cartId+"'and prodId ='"+prodId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		@SuppressWarnings("unchecked")
		List<CartItems> catlist=(List<CartItems>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		else
		{
			return catlist.get(0);
		
		}
	}
	

	@Override
	public boolean deleteCartItems(String cartItemId) {
		CartItems ci=new CartItems();
		ci.setCartItemId(cartItemId);
		sessionFactory.getCurrentSession().delete(ci);
		return true;
	}

	@Override
	public CartItems get(String cartId) {
		// TODO Auto-generated method stub
		String car="From CartItems where cartId='"+cartId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(car);
		List<CartItems> catlist=(List<CartItems>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		else
		{
			return catlist.get(0);
		
		}
	}

}
