<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("include 액션 호출 <전> 입니다<br>");
%>
<jsp:include page="bottom.jsp" flush="false"/>
<%
	out.print("include 액션 호출 <후> 입니다<br>");
%>

</body>
</html>