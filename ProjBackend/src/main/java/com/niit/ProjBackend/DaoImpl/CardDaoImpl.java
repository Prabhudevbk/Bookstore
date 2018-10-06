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
import com.niit.ProjBackend.Dao.CardDao;
import com.niit.ProjBackend.Model.Authentication;
import com.niit.ProjBackend.Model.Card;

@Repository("cardDao")
@Transactional
@EnableTransactionManagement
public class CardDaoImpl  implements CardDao{
	
	@Autowired
	SessionFactory sessionFactory;
	public CardDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}

	@Override
	public boolean saveorupdate(Card card) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(card);
		return true;
	}

	@Override
	public boolean delete(Card card) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(card);
		return true;
	}

	@Override
	public Card getCard(double cardNumber) {
		// TODO Auto-generated method stub
		String aut="From Card where cardNumber='"+cardNumber+"'";
		Query q=sessionFactory.getCurrentSession().createQuery(aut);
		List<Card> catlist=(List<Card>) q.list();
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
	public List<Card> list() {
		// TODO Auto-generated method stub
		List<Card> list=(List<Card>)
				sessionFactory.getCurrentSession().createCriteria(Card.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				return list;
	}

}
