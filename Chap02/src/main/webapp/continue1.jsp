<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>continue1.jsp</title>
</head>
<body>
<%
	for(int i=0; i<=10;i++){
	if(i%2 ==0){
		continue;
		}
		out.print(i+"<br>");
		
	}

%>
</body>
</html>