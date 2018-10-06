package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.Pay;

public interface PayDao {
		public boolean saveorupdate(Pay pay);
		public boolean delete(Pay pay);
		public Pay getPay(String PayId);
		public List<Pay> list();
	
}
