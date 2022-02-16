<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String sql = "select * from woori where id=?";
	Connection conn = null;
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs = pstmt.executeQuery();
		if(!(rs.next())){
%>
		
			해당되는 회원이 없습니다
<%		}else{
		if(password.equals(rs.getString("password"))){
%>			사용자 id <%=id %>인 회원의 정보는 다음과 같습니다.
		<form name ="form1" method = "post" action = "update.jsp">
		<input type = "hidden" name="id" value = "<%=id %>">
		<br>이름 : <input type ="text"   name = "name" value ="<%= rs.getString("name") %>">
		<br>email : <input type ="text" name = "email" value ="<%= rs.getString("email") %>">
		<br><input type="submit" name="change" value = "수정하기">
		<a href ="delete.jsp?id=<%=id %>">삭제하기</a>
		</form>
<% 
		}else {%>
		비밀번호가 틀립니다

<%	 	}
		}
		rs.close();
		conn.close();
		pstmt.close();
	}catch(Exception e){
		out.print(e.getMessage());
	}
%>
<a href="main.html">메인으로</a>
<a href="select.html">조회페이지로</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>