<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request2.jsp</title>
</head>
<body>
<%
	String formData = request.getParameter("data");
	out.print("웹 브라우저에서 받은 데이터: "+ formData);
%>

</body>
</html>