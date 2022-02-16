<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 String[][] list ={
{"회","점수(등급)"},
{"1회전","3(B)","5(A)","4(A)","4(A)","3(B)"},
{"2회전","2(B)","3(B)","5(A)","4(A)","5(A)"},
{"3회전","4(A)","4(A)","5(A)","2(B)","1(C)"}};
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border ="1">
<tr>
<td><%=list[0][0] %></td><td colspan = "5"><%=list[0][1] %></td>
</tr>

<tr>
<td><%=list[1][0]%></td>
<td><%=list[1][1]%></td>
<td><%=list[1][2]%></td>
<td><%=list[1][3]%></td>
<td><%=list[1][4]%></td>
<td><%=list[1][5]%></td>
</tr>

<tr>
<td><%=list[2][0]%></td>
<td><%=list[2][1]%></td>
<td><%=list[2][2]%></td>
<td><%=list[2][3]%></td>
<td><%=list[2][4]%></td>
<td><%=list[2][5]%></td>
</tr>

<tr>
<td><%=list[3][0]%></td>
<td><%=list[3][1]%></td>
<td><%=list[3][2]%></td>
<td><%=list[3][3]%></td>
<td><%=list[3][4]%></td>
<td><%=list[3][5]%></td>
</tr>

</table>
</body>
</html>