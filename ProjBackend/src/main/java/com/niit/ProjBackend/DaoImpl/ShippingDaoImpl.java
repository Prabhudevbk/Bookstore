package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.ShippingDao;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Shipping;

@Repository("shippingDao")
@Transactional
@EnableTransactionManagement
public class ShippingDaoImpl implements ShippingDao {

	@Autowired
	SessionFactory sessionFactory;
	public ShippingDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	


	@Override
	public boolean saveorupdate(Shipping shipping) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(shipping);
		return true;
	}

	@Override
	public boolean delete(Shipping shipping) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(shipping);
		return true;
	}

	@Override
	public Shipping getShipping(String shippingId) {
		// TODO Auto-generated method stub
		String cat="From Shipping where shipId='"+shippingId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(cat);
		List<Shipping> catlist=(List<Shipping>) q.list();
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
	public List<Shipping> list() {
		// TODO Auto-generated method stub
		List<Shipping> list=(List<Shipping>)
				sessionFactory.getCurrentSession().createCriteria(Shipping.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}



	@Override
	public List<Shipping> getaddbyuser(String UserId) {
		String cat="From Shipping where UserId='"+UserId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(cat);
		List<Shipping> catlist=(List<Shipping>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		else
		{
			return catlist;
		
		}
	
	}

}
