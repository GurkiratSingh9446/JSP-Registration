<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String filename="PP.jpg";
String filePath = "C:\\Users\\Lenovo\\Desktop\\";
response.setContentType("APPLICATION/OCTET-STREAM");
response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");

FileInputStream fin = new FileInputStream(filePath + filename);
int i;
while((i=fin.read())!=-1){
	out.write(i);
}
fin.close();
%></body>
</html>