package com.niit.ProjBackend.Dao;

import java.util.List;

import com.niit.ProjBackend.Model.User;

public interface UserDao {
	public boolean saveorupdate(User user);
	public boolean delete(User user);
	public User getUser(String UserId);
	public List<User> list();
	public User isValid(String umail,String pwd);
	public User getEmail(String currusername);
}
