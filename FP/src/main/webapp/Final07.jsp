<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr><td colspan = "10"><div align = "center">결과는...</div></td></tr>
<tr>
<%
int i=0,a=0;
do{i++;
	  a=i+a;
	  out.print("<td>"+a+"</td>");
}while(i<10);
%></tr>
</table>
</body>
</html>