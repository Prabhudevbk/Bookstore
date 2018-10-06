package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.Supplier;

public interface SupplierDao {
	public boolean saveorupdate(Supplier supplier);
	public boolean delete(Supplier supplier);
	public Supplier getSupplier(String supId);
	public List<Supplier> list();
}
