<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int i,j;
int k=5;
for(i=1;i<=k;i++){
	out.print(i);
	for(j=5;i==j;j--){
	out.print("<br>");
	--k;
	i=1;
	}	
}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>