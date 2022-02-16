<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@include file = "dbconnect.jsp" %>
<%
	
	try{ //dbconnect.jsp에서 선언부랑 연결코드 만들고 include를 통해서 코드 간결화시킴
		//교수님이 다른 파일들도 다 연결하라고 함 
		st= conn.createStatement();
		rs = st.executeQuery("select * from woori");

%>
<html>
<body>
<center><h3>회원정보</h3>
<table border="1" width="400">
<tr>
	<th width = "20%">id</th>
	<th width = "30%">이름</th>
	<th width = "50%">email</th>
</tr>
<%	if(!rs.next()) {%>
<tr>
	<td colspan="4">등록된 회원이 없습니다</td>
</tr>
<% }else{
		do {
			out.print("<tr>");
			out.print("<td>" + rs.getString("id")+"</td>");
			out.print("<td>" + rs.getString("name")+"</td>");
			out.print("<td>" + rs.getString("email")+"</td>");
			out.print("</tr>");
		}while(rs.next());
	}
		rs.close();
		st.close();
		conn.close();
	}catch(Exception e){
		out.print(e.getMessage());
	}
%>   
<!DOCTYPE html>
</table>
<a href = "main.html">메인으로</a>
<a href = "insert.html">회원등록페이지로</a>
</center>
</html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>