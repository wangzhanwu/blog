package com.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.bean.User;
import com.blog.dao.ArticleDao;
import com.blog.dao.impl.ArticleDaoImpl;

import net.sf.json.JSONArray;

/**
 * 查询文章列表
 * @author WZW
 * @version 1.0 2018年5月14日 上午9:19:17
 *
 */
public class GetArticlesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("user");
		int userId = user.getId();
		
		ArticleDao articleDao = new ArticleDaoImpl();
		List<Map<String, Object>> articles = articleDao.getArticlesByUserId(userId);
		
		PrintWriter out = response.getWriter();
		out.write(JSONArray.fromObject(articles).toString());
	}

}
