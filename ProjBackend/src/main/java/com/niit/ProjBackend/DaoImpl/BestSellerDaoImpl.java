package com.niit.ProjBackend.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.BestSellerDao;
import com.niit.ProjBackend.Model.BestSeller;

@Transactional
@EnableTransactionManagement
@Repository("bestSellerDao")
public class BestSellerDaoImpl implements BestSellerDao{

	@Autowired
	SessionFactory sessionFactory;
	
	public BestSellerDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	@Override
	public boolean saveorupdate(BestSeller seller) {
//		String sel=seller.getBestId();
//		sessionFactory.getCurrentSession().update(sel);
		sessionFactory.getCurrentSession().saveOrUpdate(seller);
		return true;
	}

}
