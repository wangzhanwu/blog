package com.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.bean.User;
import com.blog.dao.ArticleDao;
import com.blog.dao.impl.ArticleDaoImpl;


public class SaveArticleServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8249643574572184609L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String description = request.getParameter("summary");
		
		System.out.println("content: "+content.length());
		System.out.println("description: "+description.length());
		
		User user = (User) request.getSession().getAttribute("user");
		if(user == null) {
			out.write("-2");//未登录
			return;
		}
		String author = user.getUsername();
		Integer userId = user.getId();
		
		ArticleDao articleDao = new ArticleDaoImpl();
		int i = articleDao.save(title, content, author, description, userId);
		if(i > 0) {
			out.write("1");//保存成功
			return;
		} else {
			out.write("-1");//保存失败
			return;
		}
		
	}

}
