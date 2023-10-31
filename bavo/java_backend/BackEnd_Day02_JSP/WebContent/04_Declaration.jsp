<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부</title>
</head>
<body>
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
	
	
	<%
		out.println(add(A,B));
	%><br>
	<%
		out.println(abs(B));
	%><br>
	<%
		out.println(name);
	%><br>
	


</body>
</html>