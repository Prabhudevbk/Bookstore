package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.AuthenticationDao;
import com.niit.ProjBackend.Model.Authentication;




@Repository("authenticationDao")
@Transactional
@EnableTransactionManagement
public class AuthenticationDaoImpl  implements AuthenticationDao{

	
	@Autowired
	SessionFactory sessionFactory;
	public AuthenticationDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	



	@Override
	public boolean saveorupdate(Authentication authentication) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(authentication);
		return true;
	}

	@Override
	public boolean delete(Authentication authentication) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(authentication);
		return true;
	}

	@Override
	public Authentication getAuthentication(String roleId) {
		// TODO Auto-generated method stub
		String aut="From Authentication where roleId='"+roleId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(aut);
		List<Authentication> catlist=(List<Authentication>) q.list();
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
	public List<Authentication> list() {
		// TODO Auto-generated method stub
		List<Authentication> list=(List<Authentication>)
				sessionFactory.getCurrentSession().createCriteria(Authentication.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}