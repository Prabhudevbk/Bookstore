package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.PayDao;
import com.niit.ProjBackend.Model.Pay;

@Repository("payDao")
@Transactional
@EnableTransactionManagement
public class PayDaoImpl implements PayDao{

	
	@Autowired
	SessionFactory sessionFactory;
	public PayDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	
	@Override
	public boolean saveorupdate(Pay pay) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(pay);
		return true;
	}

	@Override
	public boolean delete(Pay pay) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(pay);
		return true;
	}

	@Override
	public Pay getPay(String PayId) {
		// TODO Auto-generated method stub
		String aut="From Pay where PayId='"+PayId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(aut);
		List<Pay> catlist=(List<Pay>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		return catlist.get(0);
	}

	@Override
	public List<Pay> list() {
		// TODO Auto-generated method stub
		List<Pay> list=(List<Pay>)
				sessionFactory.getCurrentSession().createCriteria(Pay.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}
	
	

}
