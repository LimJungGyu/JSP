<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	int score = 83;
	int i = score /10;
	if( i==10){
		out.print("�����Դϴ�<br>");
		out.print("�����߽��ϴ�<br>");
	}else if(i ==9){
		out.print("90���� �Դϴ�<br>");
		out.print("���ݸ� �� ����ϼ���<br>");
	}else if(i==8){
		out.print("80���� �Դϴ�<br>");
		out.print("������ �ϼ���<br>");
	}else{
		out.print("80�� �̸� �Դϴ�<br>");
		out.print("���̳���ϼ���<br>");
	}
	%>
</body>
</html>