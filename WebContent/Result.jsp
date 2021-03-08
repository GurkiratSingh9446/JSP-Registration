<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="DAO.ClassDAO"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="resultbean" class="Bean.ResultBean"/>
<jsp:setProperty property="*" name="resultbean"/>

<%
int resultans = ClassDAO.result(resultbean);
	out.print("Score " + resultans);
%>
</body>
</html>