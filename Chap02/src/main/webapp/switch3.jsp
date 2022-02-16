<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>switch3.jsp</title>
</head>
<body>
<%
	int num =3 ;
	switch(num){
	case 1: 
	case 3: out.print("남성입니다<br>");
	break;
	case 2: 
	case 4: out.print("여성입니다<br>");
	break;
	
	}
%>
</body>
</html>