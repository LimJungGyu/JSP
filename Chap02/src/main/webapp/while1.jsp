<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>while1.jsp</title>
</head>
<body>
<%
	int i=10,sum=0;
	
	do{
		i++;
		sum=sum+i;
		out.print("�ݺ�Ƚ�� : " +i+" ���ݱ����� �� : "+ sum+"<br>");
	}while (i<10);
	


%>

</body>
</html>