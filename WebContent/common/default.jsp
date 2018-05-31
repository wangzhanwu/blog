<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String path = request.getContextPath();
	int port = request.getServerPort();
	String contextPath = null;
	if(port == 80) {
		contextPath = request.getScheme()+"://"+request.getServerName()+path;
	} else {
		contextPath = request.getScheme()+"://"+request.getServerName()+":"+port+path;
	}
	request.setAttribute("contextPath", contextPath);
%>