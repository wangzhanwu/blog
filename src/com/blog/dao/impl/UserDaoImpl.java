package com.blog.dao.impl;

import com.blog.bean.User;
import com.blog.dao.UserDao;
import com.blog.util.DBUtils;

public class UserDaoImpl implements UserDao {

	/**
	 * 根据用户名查询用户信息
	 */
	@Override
	public User getUserByUsername(String username) {
		String sql = "select * from t_user where username = ?";
		User user = DBUtils.queryForBean(sql, User.class, username);
		return user;
	}
	
	/**
	 * 用户注册
	 */
	public int register(String username, String password) {
		//SQL
		String sql = "insert into t_user(username, password) values(?, ?)";
		//将注册信息插入数据库
		int row = DBUtils.update(sql, username, password);//返回受影响的行数
		return row;
	}
	
	public static void main(String[] args) {
		UserDao userDao = new UserDaoImpl();
		User user = userDao.getUserByUsername("wang");
		if(user!=null) {
			System.out.println(user.getUsername());
		} else {
			System.out.println("user.getUsername()");
		}
	}

}
