<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 int a=0,b=0;
 for(int i=0;i<=100;i++){
	 if(i%2==0){
		 a=a+i;
	 }else
		 b=b+i;
 }   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<tr><td colspan = "2"><div align = "center">결과는...</div></td></tr>
<tr>
<td>짝수의합은<%=a%>입니다</td>
<td>홀수의합은<%=b%>입니다</td>
</tr>
</table>
</body>
</html>