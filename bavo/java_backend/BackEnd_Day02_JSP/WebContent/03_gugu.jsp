<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>

	<h2>구구단</h2>
	
	<%
		
		for (int i = 2; i <= 9; i++) {
			out.println(i + "단" + "\n");
			
			for (int j = 1;j <= 9; j++) {
				out.println(i + "X" + j + "=" + (i * j));				
			}
		}
	%>
	


</body>
</html>