<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session1.jsp</title>
</head>
<body>
<% 
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	String sessionId= session.getId();
	int sessionTime = session.getMaxInactiveInterval();
	
	out.print(userId+"님 환영합니다.<p>");
	out.print("생성된 세션 ID: " + sessionId + "<p>");
	out.print("세션 유지 시간: "  + sessionTime);
%>
</body>
</html>