package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.UserDao;
import com.niit.ProjBackend.Model.Authentication;
import com.niit.ProjBackend.Model.Billing;
import com.niit.ProjBackend.Model.Cart;
import com.niit.ProjBackend.Model.User;

@Repository("userDao")
@Transactional
@EnableTransactionManagement
public class UserDaoImpl implements UserDao{

	@Autowired
	SessionFactory sessionFactory;
	public UserDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	
	@Override
	public boolean saveorupdate(User user) {
		// TODO Auto-generated method stub
		Authentication auth=new Authentication();
		Billing billing=new Billing();
		billing.setCity(user.getAddress());
		user.setBilling(billing);
		billing.setAddress(user.getAddress());
		billing.setBillName(user.getName());
		billing.setPhone(user.getPhoneNo());
		billing.setUser(user);
		Cart cart=new Cart();
		user.setCart(cart);
		auth.setUserName(user.getEmailId());
		sessionFactory.getCurrentSession().saveOrUpdate(auth);
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		sessionFactory.getCurrentSession().saveOrUpdate(billing);
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		sessionFactory.getCurrentSession().saveOrUpdate(user.getCart());
		return true;
	}

	@Override
	public boolean delete(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(user);
		return true;
	}

	@Override
	public User getUser(String UserId) {
		// TODO Auto-generated method stub
		String crt="From User where userId='"+UserId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(crt);
		List<User> userlist=(List<User>) q.list();
		if(userlist==null||userlist.isEmpty())
		{
		return null;
		}
		else
		{
			return userlist.get(0);
		
		}
	}


	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		List<User> list=(List<User>)
				sessionFactory.getCurrentSession().createCriteria(User.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

	@Override
	public User isValid(String umail, String pwd) {
		String u1="From User where EmailId='"+umail+"'and Password='"+pwd+"'";
		Query q1=sessionFactory.getCurrentSession().createQuery(u1);
		List<User> list=(List<User>) q1.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		else
		{
			return list.get(0);
		}
	}

	@Override
	public User getEmail(String currusername) {
		String u1="From User where EmailId='"+currusername+"'";
		Query q1=sessionFactory.getCurrentSession().createQuery(u1);
		List<User> list=(List<User>) q1.list();
		if(list==null || list.isEmpty())
		{
			return null;
		}
		else
		{
			return list.get(0);
		}
	}

}
