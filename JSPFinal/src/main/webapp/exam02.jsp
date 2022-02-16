<%@page import="Finalexam2.exam2DAO"%>
<%@page import="Finalexam2.exam2DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//임중규 %>
<jsp:useBean id= "info" scope="page" class="Finalexam2.exam2DTO"/>
<jsp:setProperty name= "info"  property="name"/>
<jsp:setProperty name= "info"  property="num"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method = "post">
학생이름 : <input type="text" name = "name"  size = "40"><br><br>
패스워드 : <input type="text" name = "num"  size = "40">
<hr>
&nbsp;&nbsp;&nbsp;<input type ="submit" value = "로그인">
&nbsp;&nbsp;&nbsp;<input type = "reset" value = "다시쓰기">

<br>
<hr>
<jsp:getProperty name = "info" property = "name"/>
<jsp:getProperty name = "info" property = "num"/>
</form>
<%
exam2DAO dao = new exam2DAO();
%>
</body>
</html>