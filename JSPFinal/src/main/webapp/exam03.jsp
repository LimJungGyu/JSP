<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String sql=null;
Connection conn = null;
Statement st =null;
ResultSet rs= null;
int cnt=0;

try{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
	}catch(ClassNotFoundException e){
		out.println(e);
		}

		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
			st= conn.createStatement();
			st.executeUpdate("create table members(id varchar2(60) primary key,pw varchar2(60))");
			out.print("<br>새로운 테이블이 생성되었습니다");
		}catch (Exception e){}
		try{
			rs= st.executeQuery("select * from members where id = '" + id+"'");
			if(!(rs.next())){
				sql="insert into members(id,pw)";
				sql= sql + "values('"+id+"','"+pw+"')";
				
				cnt = st.executeUpdate(sql);
				if(cnt>0)
					out.println("데이터가 성공적으로 입력되었습니다.");
				else
					out.println("데이터가 입력되지 않았습니다.");
			}else
				out.println("id가 이미 등록되어 있습니다");
			st.close();
			conn.close();
			rs.close();
		}catch(SQLException c){
			out.print(c.getMessage());
		}
%>    <a href="exam03.html">등록 페이지로</a>

