package com.niit.ProjBackend.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProjBackend.Dao.OrderDao;
import com.niit.ProjBackend.Model.Category;
import com.niit.ProjBackend.Model.Order;

@Repository("orderDao")
@Transactional
@EnableTransactionManagement
public class OrderDaoImpl implements OrderDao{

	@Autowired
	SessionFactory sessionFactory;
	public OrderDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	


	@Override
	public boolean saveorupdate(Order order) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(order);
		return true;
	}

	@Override
	public boolean delete(Order order) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(order);
		return true;
	}

	@Override
	public Order getOrder(String orderId) {
		// TODO Auto-generated method stub
		String cat="From Order where orderId='"+orderId+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(cat);
		List<Order> catlist=(List<Order>) q.list();
		if(catlist==null||catlist.isEmpty())
		{
		return null;
		}
		else
		{
			return catlist.get(0);
		
		}
	}

	private void CreateQuery(String cat) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<Order> list() {
		// TODO Auto-generated method stub
		List<Order> list=(List<Order>)
				sessionFactory.getCurrentSession().createCriteria(Order.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}
