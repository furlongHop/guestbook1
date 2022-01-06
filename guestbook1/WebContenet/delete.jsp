<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%
	GuestbookDao guestbookDao = new GuestbookDao();
	List<GuestbookVo> gbList = guestbookDao.getList();

	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	String pass = guestbookDao.getGuest(no).getPassword();
	
	if(pass.equals(password)){
		guestbookDao.guestDelete(no);
		response.sendRedirect("./addList.jsp");
	}else {
		response.sendRedirect("./addList.jsp");
	}
	
%>