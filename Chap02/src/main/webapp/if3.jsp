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
	int score = 83;
	int i = score /10;
	if( i==10){
		out.print("만점입니다<br>");
		out.print("수고했습니다<br>");
	}else if(i ==9){
		out.print("90점대 입니다<br>");
		out.print("조금만 더 노력하세요<br>");
	}else if(i==8){
		out.print("80점대 입니다<br>");
		out.print("열심히 하세요<br>");
	}else{
		out.print("80점 미만 입니다<br>");
		out.print("많이노력하세요<br>");
	}
	%>
</body>
</html>