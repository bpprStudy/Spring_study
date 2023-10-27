<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! // 느낌표 있으면 instance에서 계속 유지

	int cnt1 = 0;
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호출</title>
</head>
<body>
	<% // 없으면 service 메소드에서 지역변수로 초기화할때마다 새로 로드됨
		int cnt2 = 0;
	
		out.print(++cnt1);
		out.print("    ");
		out.print(++cnt2);
	%>
</body>
</html>