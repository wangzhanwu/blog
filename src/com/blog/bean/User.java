package com.blog.bean;

import java.util.Date;
import java.util.Objects;

/**
 * 用户实体类
 * @author WZW
 * @version 1.0 2018年5月5日 下午2:54:24
 *
 */
public class User {

	
	/*
	 * ID
	 */
	private Integer id; 
	
	/*
	 * 用户名
	 */
	private String username;
	
	/*
	 * 密码
	 */
	private String password;
	
	/*
	 * 性别  0：女  1：男  2：保密
	 */
	private String sex;
	
	/*
	 * 年龄
	 */
	private Integer age;
	
	/*
	 * 电子邮件
	 */
	private String email;
	
	/*
	 * 地址
	 */
	private String address;
	
	/*
	 * 昵称
	 */
	private String nickname;
	
	/*
	 * 个人简介
	 */
	private String description;
	
	/*
	 * 是否有效  0：有效   1：无效
	 */
	private String isDelete;
	
	/*
	 * 创建时间
	 */
	private Date createTime;
	
	/*
	 * 修改时间
	 */
	private Date modifyTime;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getModifyTime() {
		return modifyTime;
	}

	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, username, sex, age, address);
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj == null) {
			return false;
		}
		if(this == obj) {
			return true;
		}
		if(getClass() != obj.getClass()) {
			return false;
		}
		User user = (User)obj;
		return Objects.equals(id, user.id) && Objects.equals(username, user.username) && 
				Objects.equals(sex, user.sex) && Objects.equals(address, user.address);
	}
	
	@Override
	public String toString() {
		return getClass().getName()+"[id="+id+", username="+username+", password="+password+", createTime="+createTime+"]";
	}
}
