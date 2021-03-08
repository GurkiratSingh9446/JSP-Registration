<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% MultipartRequest mpr= new MultipartRequest(request, "C:\\Users\\Lenovo\\Desktop\\New Folder");
out.print("success");
%>
</body>
</html>