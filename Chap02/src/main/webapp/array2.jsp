<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array2.jsp</title>
</head>
<body>
<%
	/*방법1*/
	String [][] list = new String [3][2];
	list[0][0] = "홍길동"; list[0][1] ="hon@test.net";
	list[1][0] = "이순신"; list[1][1] ="lee@test.net";
	list[2][0] = "강감찬"; list[2][1] ="kang@test.net";
	//방법2
	String [][] list2 ={{"홍길동","hon@test.net"}
						,{"이순신","lee@test.net"}
						,{"강감찬","kang@test.net"}};
	
	out.print(list[0][0]+"의 메일주소는 "+list[0][1]+"<br>");
	out.print(list[1][0]+"의 메일주소는 "+list[1][1]+"<br>");
	out.print(list[2][0]+"의 메일주소는 "+list[2][1]+"<br>");
	out.print("<hr>");
	
	for(int i=0 ;i<list.length;i++){
		for(int j=0 ;j<1;j++){
			out.print(list[i][j]+"의 메일주소는 "+list[i][1]+"<br>");
		}
	}
	
	out.print("<hr>");
	
	for(int i=0 ;i<list2.length;i++){
		for(int j=0 ;j<1;j++){
			out.print(list2[i][j]+"의 메일주소는 "+list2[i][1]+"<br>");
		}
	}
%>
</body>
</html>