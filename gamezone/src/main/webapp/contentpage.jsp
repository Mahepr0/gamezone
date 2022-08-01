<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>GameZone</title>
<link rel="stylesheet" href="gamez.css">
</head>
<body>
    <div class="container">
        <h1>GameZone</h1>
        <p>Creating and playing with codes and games</p>
        <a href="login.jsp">Log out</a>
        <% session.removeAttribute("uname");
        session.invalidate(); %>
      </div>
      
      <div class="blank"></div>
      
      <div class="container second">
        <div class="item">
          <div class="img img-first"></div>
          <div class="card">
            <h3>TicTacToe game</h3>
            <p>A game in which two players play against each other.</p>
			<form action="tic.jsp">
            <input type="submit" id="play" value="play">
			</form>
          </div>
        </div>
        <div class="item">
          <div class="img img-second"></div>
          <div class="card">
            <h3>Guess a number</h3>
            <p>A simple guessing game where a user is supposed to guess a number.</p>
            <form action="guess.jsp">
            <input type="submit" id="play" value="play">
			</form>
          </div>
        </div>
        <div class="item">
          <div class="img img-third"></div>
          <div class="card">
            <h3>Flappyball</h3>
            <p>An arcade-style game in which the player controls the ball.</p>
            <form action="flap.jsp">
            <input type="submit" id="play" value="play">
			</form>
          </div>
        </div>
      </div>
      
      <div class="blank"></div>
     <script src="https://kit.fontawesome.com/a9626da075.js" crossorigin="anonymous"></script>
	  <footer>
      Our social<div class="social-media"><br>
		<a href="#">
		<i class="fa-brands fa-facebook-square fa-xl"></i>
		</a>
		<a href="#">
		<i class="fa-brands fa-instagram fa-xl"></i>
		</a>
		<a href="#">
		<i class="fa-brands fa-linkedin fa-xl"></i>
		</a>
		<a href="#">
		<i class="fa-brands fa-twitter-square fa-xl"></i>
		</a>
		<a href="#">
		<i class="fa-brands fa-youtube fa-xl"></i>
		</a>
		</div>
		<div class="copyright"> © 2021-2022 <h4>GameZone</h4></div>
      </footer>
</body>
</html>