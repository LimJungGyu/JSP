<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>break1.jsp</title>
</head>
<body>
<%
	int i=0;
	boolean flag = true;
	while(flag){
		i++;
		out.print("반복 :" + i + "<br>");
		if(i ==100){
			break;
		}
	}

%>
</body>
</html>