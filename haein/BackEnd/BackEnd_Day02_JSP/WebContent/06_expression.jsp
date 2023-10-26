<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%! 
		int A = 10;
		int B = -20;
		
		String name = "SSAFY";
		
		//메서드 선언 가능
		public int add(int A, int B) {
			return A + B;
		}
		
		public int abs(int A) {
			return A > 0 ? A : -A;
		}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 두 개는 서로 같음 -->
	<% out.println(name); %>
	<%=name %>
	
	
	<%=A+B %>
	<%=add(A, B) %>
</body>
</html>