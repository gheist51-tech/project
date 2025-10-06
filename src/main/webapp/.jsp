<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Life Tree Hospital</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
<label for="username">Enter UserName</label>
		<input type="text" id="username" name="userName" required/><br>
		
		<label for="pass">Enter Password</label>
		<input type="password" id="pass" name="PassWord" required/><br>
		
		<input type="submit" value="Login"/>
</form>
</body>
</html>