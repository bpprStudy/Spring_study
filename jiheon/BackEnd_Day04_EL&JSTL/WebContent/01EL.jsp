<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>
	<% out.print("Hello"); %>
	<%= "Hello" %>
	
	문자열: ${"Hello" }<br>
	정수형: ${10 }<br>
	실수형: ${10.4 }<br>
	논리형: ${true }<br>
	null: ${null }<br>
	
</body>
</html>