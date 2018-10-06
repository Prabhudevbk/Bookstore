package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.CartItems;

public interface CartItemsDao {
	public boolean saveorupdate(CartItems cartitems);
	public boolean delete(CartItems cartitems);
	public CartItems getCartItems(String cartitemsId);
	public List<CartItems> list();
	public List<CartItems> getlist(String cartId);
	public CartItems getlistall(String cartId, String prodId);
	public boolean deleteCartItems(String cartItemId);
	public CartItems get(String cartId);
}
