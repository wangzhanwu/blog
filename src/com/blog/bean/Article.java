package com.blog.bean;

import java.util.Date;
import java.util.Objects;

/**
 * 文章实体类
 * @author WZW
 * @version 1.0 2018年5月13日 上午10:33:01
 *
 */
public class Article {
	
	/**
	 * ID主键
	 */
	private Integer id;
	
	/**
	 * 标题
	 */
	private String title;
	
	/**
	 * 作者
	 */
	private String author;
	
	/**
	 * 文章内容
	 */
	private String content;
	 
	/**
	 * 概述
	 */
	private String description;
	 
	 /**
	  * 是否发布 0：未发布   1：已发布
	  */
	private String isPublished;
	
	/**
	 * 是否删除 0：未删除   1：已删除
	 */
	private String isDelete;
	
	/**
	 * 创建时间
	 */
	private Date createTime;
	
	/**
	 * 最后修改时间
	 */
	private Date updateTime;
	
	/**
	 * 作者ID
	 */
	private Integer userId;
	
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIsPublished() {
		return isPublished;
	}

	public void setIsPublished(String isPublished) {
		this.isPublished = isPublished;
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

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
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
		Article article = (Article)obj;
		return Objects.equals(id, article.id) && Objects.equals(title, article.title) && 
				Objects.equals(content, article.content) && Objects.equals(createTime, article.createTime) &&
				Objects.equals(userId, article.userId) && Objects.equals(isPublished, article.isPublished) && 
				Objects.equals(isDelete, article.isDelete);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(id, title, content, createTime, userId, isPublished, isDelete);
	}
	
	public String toString() {
		return getClass().getName()+"[title="+title+", author="+author+", content="+content+
				", createTime="+createTime+"]";
	}
}
