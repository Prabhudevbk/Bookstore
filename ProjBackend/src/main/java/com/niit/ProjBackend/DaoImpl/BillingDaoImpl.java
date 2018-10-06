package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.BillingDao;
import com.niit.ProjBackend.Model.Billing;

@Repository("billingDao")
@Transactional
@EnableTransactionManagement
public class BillingDaoImpl implements BillingDao{

	
	@Autowired
	SessionFactory sessionFactory;
	public BillingDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	
	


	@Override
	public boolean saveorupdate(Billing billing) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(billing);
		return true;
	}

	@Override
	public boolean delete(Billing billing) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(billing);
		return true;
	}

	@Override
	public Billing getBilling(String billId) {
		// TODO Auto-generated method stub
		String bill="From Billing where billId='"+billId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(bill);
		List<Billing> catlist=(List<Billing>) q.list();
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
	public List<Billing> list() {
		// TODO Auto-generated method stub
		List<Billing> list=(List<Billing>)
				sessionFactory.getCurrentSession().createCriteria(Billing.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}





	@Override
	public Billing get(String userId) {
		String bill="From Billing where UserId='"+userId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(bill);
		List<Billing> catlist=(List<Billing>) q.list();
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
