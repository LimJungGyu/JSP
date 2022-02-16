<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>if4</title>
</head>
<body>
<%
	int score = 70;
	if (score >=70){
		if (score==100){	
		out.print("합격했습니다<br>");
		out.print("만점입니다<br>");
		}else {
		out.print("합격했습니다<br>");
		out.print("그렇지만 만점은 아닙니다.<br>");
		}
	}else{
		out.print("불합격했습니다<br>");
	}
	
		%>
</body>
</html>