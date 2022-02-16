<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>for2.jsp</title>
</head>
<body>
<%
	for(int i=1; i<=10;i++){
		for(int j =1; j<=i;j++){
			out.print("*");
		}
		out.print("<br>");
	}	
%>
<hr>
			+++2단 +++<br>
<%
			
			for(int i=1;i<10;i++){
				out.print("2 "+ "x " + i + " = " +(2*i)+"<br>");
			}

%>
<hr>
			구구단<br>
<%
for(int i=2; i<10;i++){
	out.print("+++"+i+"단 +++<br>");
	for(int j=1; j<10;j++){
		out.print(i +"X" + j + "="+(i*j)+"<br>");
	}
	out.print("<br>");
	
}


%>
</body>
</html>