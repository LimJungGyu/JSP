<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 메소드를 이용한 파라미터 전송</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");  //한글이 깨지면 넣는 코드
	String formData =request.getParameter("data");
	out.print("웹 브라우저에서 받은 데이터:" + formData);
%>

</body>
</html>