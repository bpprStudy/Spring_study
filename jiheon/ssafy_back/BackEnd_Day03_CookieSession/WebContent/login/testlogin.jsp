<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if (id.equals("ssafy") && password.equals("1234")) {
		session.setAttribute("loginUser", id);
		response.sendRedirect("main.jsp");
		//request.getRequestDispatcher("main.jsp").forward(request, response);
	}
	else {
		response.sendRedirect("loginForm.jsp");
	}
%>