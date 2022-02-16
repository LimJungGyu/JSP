<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int a=10, b=20;

	if(a>=b)
		out.print("a가 b보다 크다<br>");
	else
		out.print("a가 b보다 작다<br>");
	out.print("if문을 벗어났습니다");
%>

</body>
</html>