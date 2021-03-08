<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
</head>
<body>
<jsp:useBean id="object" class="Bean.UserBean" scope="session"/>
Welcome <jsp:getProperty property="username" name="object"/>

<form action="Result.jsp">
Question 1:- WHat is java?
<input type= "radio" name="ques1" value="Language">Language
<input type= "radio" name="ques1" value="Program">Program
<br>

Question 1:- WHat is HTML?
<input type= "radio" name="ques2" value="Markup Language">Markup Language
<input type= "radio" name="ques2" value="None">None
<br>
<input type="submit" value="result">
</form>

</body>
</html>