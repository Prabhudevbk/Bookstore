package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.Card;

public interface CardDao {
	public boolean saveorupdate(Card card);
	public boolean delete(Card card);
	public Card getCard(double cardNumber);
	public List<Card> list();	
}