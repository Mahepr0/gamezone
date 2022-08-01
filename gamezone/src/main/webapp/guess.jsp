<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Guess Number</title>
<link rel="stylesheet" href="guess.css">
</head>
<body>
<main>
	<h1>Guess a Number</h1>
	<p id="header">Enter a number between 1 and 100</p>
	<h4># of times you've guessed:<p id="guesses"></p></h4>
	<form id="thegame" action="" method="get">
	  <fieldset>
		<input type="text" pattern="\d*" id="guess" maxlength="3" />
		<input type="submit" value="Guess" />
	  </fieldset>
	</form>
	<a href="#">New game</a>
  </main>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
$(document).ready(function() {
  
  var answer = Math.floor(Math.random() * 100) + 1;
  console.log(answer);
  var guess_count = 0;
  console.log(guess_count);
  $("form").on("submit", function(e) {
    e.preventDefault();
    var guess = +$("input#guess").val();
    console.log(guess);
    guess_count++;
    
   
    $("#guesses").text(guess_count);
    
    if (guess > answer) {
      var high_message = "My number is less than " + guess;
      $("#header").text(high_message);
    } else if (guess < answer) {
      var low_message = "My number is greater than " + guess;
      $("#header").text(low_message);
      
    } else {
      var congrat_message = "Congratulations " + guess + " is the number";
      $("#header").text(congrat_message);
      
    }
  });
  
  $("input:text").focus(function(){$(this).val("")});
  $("a").on("click", function(e) {
    e.preventDefault();
    answer = Math.floor(Math.random() * 100) + 1;
    $("p").text("Guess a number from 1 to 100");
    console.log(answer);
    guess_count = 0;
  })
});
</script>  
</body>
</html>