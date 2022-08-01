<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GameZone Login</title>
<style type="text/css">

* {  
   padding: 0;  
   margin: 0;  
 }
 h1{
 font-family:Helvetica;
 }
 .container {  
   width: 100%;  
   height: 100vh;    
   background: #F5F3F3;  
   display: flex;
   justify-content: center;  
   align-items: center;  
 } 
form {  
flex-direction: column;  
display: flex;  
width: 500px;  
}  
 input.upass {  
   width: 100%;  
   background: transparent;  
   border: none;  
   border-bottom: 2px solid #e83f43;  
   padding: 0 0 20px 0;  
   margin-top: 50px;  
   font-family: Helvetica;  
   color: #736E6D;  
   outline: none;  
   font-size: 16px;  
   letter-spacing: 2px;     
 } 
   input.uname {  
   width: 100%;  
   background: transparent;  
   border: none;  
   border-bottom: 2px solid #e83f43;  
   padding: 0 0 20px 0;  
   margin-top: 50px;  
   font-family: Helvetica;  
   color: #736E6D;  
   outline: none;  
   font-size: 16px;  
   letter-spacing: 2px;     
 } 
 input.submit {  
   width: 100%;  
   background: #e83f43; 
   border: none;  
   border-radius: 8px;
   padding: 20px 0 20px 0;  
   margin-top: 50px;  
   font-family: Helvetica;  
   color: white;  
   outline: none;  
   font-size: 16px;  
   letter-spacing: 2px;
   transition-duration: 0.4s;
   cursor:pointer;
 } 
 .submit:hover {
   background-color: white;
  color: black;
  border: 2px solid #e83f43;
  }
</style>
</head>
<body>
<div class="container">
<form action="logindetails" method="post">
<h1>GameZone</h1>
<input type="text" class="uname" placeholder="User Name" name ="txtname"><br><br>

<input type="password" class="upass" placeholder="Password" name = "txtpass"><br><br>

<input type="submit" class="submit" value="Log In"><br>
</form>
</div>
</body>
</html>