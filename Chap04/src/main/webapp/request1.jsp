<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request1.jsp</title>
</head>
<body>
<b>request 객체 정보</b>
<%= "인 코 딩 방 식	: "+ request.getCharacterEncoding()+"<p>"%>
<%= "MIME  타  입	: "+ request.getContentType()+"<p>"%>
<%= "요청정보 길  이: "+ request.getContentLength()+"<p>"%>
<%= "헤  더 이  름	: "+ request.getHeaderNames()+"<p>"%>
<%= "웹 전달 경 로	: "+ request.getPathInfo()+"<p>"%>
<%= "클라이언트 이름	: "+ request.getRemoteHost()+"<p>"%>
<%= "클라이언트IP주소: "+ request.getRemoteAddr()+"<p>"%>
<%= "클라이언트URL경로: "+ request.getRequestURL()+"<p>"%>
<%= "전  송  방  식: "+ request.getMethod()+"<p>"%>
<%= "프 로 토 콜이름: "+ request.getProtocol()+"<p>"%>
<%= "서  버 이  름	: "+ request.getServerName()+"<p>"%>
<%= "서버 포트 번호	: "+ request.getServerPort()+"<p>"%>

</body>
</html>