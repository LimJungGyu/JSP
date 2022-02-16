<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>for1.jsp</title>
</head>
<body>
<%
	int i=0,sum=0,sum2=0;

	while (i<10){
		i++;
		sum=sum+i;
		out.print("while 반복횟수 : " +i+" 지금까지의 합 : "+ sum+"<br>");
	}
%>	
<hr>
<% 
	for(int k=1;k<=10;k++){
		sum2 = sum2 + k;
		out.print("for 반복횟수 : " +k+" 지금까지의 합 : "+ sum2+"<br>");
	}

%>




</body>
</html>