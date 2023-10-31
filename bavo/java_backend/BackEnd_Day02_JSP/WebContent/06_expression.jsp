<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
		int A = 10;
		int B = 20;
		
		String name = "SSASFY";
		
		public int add(int A, int B){
			return A+B;
		}
		
		public int abs(int A) {
			return A > 0 ? A : -A;
		}
	%>
<html>
<head>
<meta charset="UTF-8">
<title>expression </title>
</head>
<body>
	
	<%
		out.println(name);
	%>
	
	<%=name %>
	<%=A+B %>
	<%=abs(B) %>
	
	


</body>
</html>