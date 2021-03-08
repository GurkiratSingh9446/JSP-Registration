<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.ClassDAO"%>
<%@ page errorPage="ErrorPagejsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="object" class="Bean.UserBean" scope="session" />
	<%-- property=* is used to set corresponding fields properties rather than setting properties for every field separately 
		like property = username OR property = password and so on 
	--%>
	<jsp:setProperty property="*" name="object" />
	<%
	boolean hasLoggedIn = ClassDAO.login(object);
	if (hasLoggedIn) {
		response.sendRedirect("HomePage.jsp");
	} else {
		response.sendRedirect("ErrorPage.jsp");
	}
	%>

</body>
</html>