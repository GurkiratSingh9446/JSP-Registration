<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.ClassDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="Bean.UserBean" />
	<jsp:setProperty property="*" name="obj" />
	<%
	int status = ClassDAO.register(obj);
	if (status > 0)
		out.print("Registration successful");
	%>
</body>
</html>