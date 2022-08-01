<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>GameZone</title>
<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="glitch.css" /> 
</head>
<body>
<div class="container">
<div class="glitch" data-text="GameZone">GameZone</div>
<div class="glow">GameZone</div>
<p class="subtitle">Welcome, <%=session.getAttribute("uname") %></p>
<form action="contentpage.jsp" method="post">
<input type="submit" class="button" value="let's go">
</form>
</div>
</body>
</html>