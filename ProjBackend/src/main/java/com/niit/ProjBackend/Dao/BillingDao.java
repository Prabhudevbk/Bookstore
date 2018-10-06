package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.Billing;

public interface BillingDao {
	public boolean saveorupdate(Billing billing);
	public boolean delete(Billing billing);
	public Billing getBilling(String billId);
	public List<Billing> list();
	public Billing get(String userId);
}
