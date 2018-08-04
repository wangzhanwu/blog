package com.blog.dao;

import java.util.List;
import java.util.Map;

/**
 * 
 * @author WZW
 * @version 1.0 2018年5月13日 下午8:53:34
 *
 */
public interface ArticleDao {

	/**
	 * 通过类别获取文章列表
	 * @param categoryId
	 * @param start
	 * @param end
	 * @return
	 */
	List<Map<String, Object>> getArticlesByCategoryId(Integer categoryId, Integer start, Integer end);
	
	/**
	 * 根据id查询文章内容
	 * @param id
	 * @return
	 */
	Map<String, Object> getArticleById(int id);
	
	/**
	 * 查询所有文章
	 * @return
	 */
	List<Map<String, Object>> getAllArticles();
	
	/**
	 * 根据用户ID查询文章
	 * @param userId
	 * @return
	 */
	List<Map<String, Object>> getArticlesByUserId(int userId);;
	
	/**
	 * 保存文章
	 * @param title
	 * @param content
	 * @param author
	 * @param description
	 * @param userId
	 * @return
	 */
	int save(String title, String content, String author, String description, Integer userId);
}
