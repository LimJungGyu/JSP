<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array1.jsp</title>
</head>
<body>
<%
	
	String name[]={"김병태","손강수"};
	String name2[] = new String[3];
	name2[0] = "박자바";
	name2[1] = "홍길동";
	name2[2] = "강경수";
	
	int num[] = {1,2,3,4,5,7,8,9,10};
	String seasons[]={"봄","여름","가을","겨울"};
	out.print("좋아하는 숫자는 "+num[6]+"<br>");
	out.print("좋아하는 계절은 "+seasons[2]+"<br>");
	out.print("배열 num의 길이는 "+num.length+"<br>");
	for(int i = 0 ; i<name2.length; i++){
		out.print("배열 name2["+ i + "] :" + name2[i] + "<br>");
	}
%>
</body>
</html>