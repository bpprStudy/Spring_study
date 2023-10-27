<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
	<%
		if (session.getAttribute("loginUser")==null) {
			response.sendRedirect("loginFrom.jsp");
		}
		else {
			%><%=session.getAttribute("loginUser") %>님 반갑니다.
			<%
		}
	%>
	<form action="logout.jsp" method="POST">
		<button>로그아웃</button>
	</form>
	<h2>메인페이지</h2>
</body>
</html>