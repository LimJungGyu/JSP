<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>if4</title>
</head>
<body>
<%
	int score = 70;
	if (score >=70){
		if (score==100){	
		out.print("�հ��߽��ϴ�<br>");
		out.print("�����Դϴ�<br>");
		}else {
		out.print("�հ��߽��ϴ�<br>");
		out.print("�׷����� ������ �ƴմϴ�.<br>");
		}
	}else{
		out.print("���հ��߽��ϴ�<br>");
	}
	
		%>
</body>
</html>