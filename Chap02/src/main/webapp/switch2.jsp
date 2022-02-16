<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>switch2.jsp</title>
</head>
<body>
<%
	int num = 1;
	switch(num){
	case 1:
	case 2:
	case 3:
		out.print("저학년이군요");
		break;
	case 4:
	case 5:
	case 6:
		out.print("고학년이군요");
		break;
	
	}
%>

</body>
</html>