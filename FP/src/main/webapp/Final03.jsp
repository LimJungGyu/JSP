<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int a =0;
for(int i =0; i<=100;i++ ){
	if(i%5==0){
		a = a + i;
		continue;
	}	
}
out.println(a);

%>