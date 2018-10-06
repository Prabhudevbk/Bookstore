package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.Shipping;

public interface ShippingDao {
	public boolean saveorupdate(Shipping shipping);
	public boolean delete(Shipping shipping);
	public Shipping getShipping(String shippingId);
	public List<Shipping> list();
	public List<Shipping> getaddbyuser(String userId);
}
