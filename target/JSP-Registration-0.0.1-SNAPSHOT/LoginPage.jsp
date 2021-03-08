<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
.coloring {
	color: pink;
	font-family: Times New Roman;
	background-color: black;
	padding: 20px;
}

.center {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="Common.html"></jsp:include>

	<h1 title="This is Login Page" style="background-color: lightblue">LOGIN
		PAGE</h1>
	<form action="LoginProcess.jsp">
		<h4 class="coloring center">
			USERNAME:<input type="email" name="username" autofocus	placeholder="Enter username" size="10"> 
			PASSWORD:<input type="password" name="password" required size="30"> 
				<input type="submit" value="LOGIN">
		</h4>
	</form>
	<a href="Registration.jsp"><span
		style="background-color: lightgreen">Register here</span></a>

	<form action="uploadFile.jsp" method="post"
		enctype="multipart/form-data">
		Select file:<input type="file" name="fname"> <input
			type="submit" value="upload">
	</form>

	<a href="DownloadingFile.jsp">Download file</a>
	<h3>List Box</h3>
	<select name="country" size="3">
		<option value="Asia">Asia</option>
		<option value="Africa">Africa</option>
		<option value="Australia">Australia</option>
	</select>
</body>
</html>