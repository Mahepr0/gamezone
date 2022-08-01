<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Tic Tac Toe</title>
<link rel="stylesheet" href="tictac.css">
</head>
<body>
<body>
<div class="header">
  <h1>Tic Tac Toe</h1>
</div>
<div class="box">
  <div class="row">
	<input class="btn" type="text" readonly>
	<input class="btn" type="text" readonly>
	<input class="btn" type="text" readonly>
  </div>
  <div class="row">
	<input class="btn" type="text" readonly>
	<input class="btn" type="text" readonly>
	<input class="btn" type="text" readonly>
  </div>
  <div class="row">
	<input class="btn" type="text" readonly>
	<input class="btn" type="text" readonly>
	<input class="btn" type="text" readonly>
  </div>
</div>
<p class="result">Player X Turn</p>
<div class="reset">
  <button id="reset">Reset</button>
</div>
<script>
let cells = ['', '', '', '', '', '', '', '', ''];
let currentPlayer = 'X';
let result = document.querySelector('.result');
let btns = document.querySelectorAll('.btn');
let conditions = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
];
const ticTacToe = (element, index) => {
    element.value = currentPlayer;
    element.disabled = true;
    cells[index] = currentPlayer;
    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
    result.innerHTML = `Player ${currentPlayer} Turn`;
    for (let i = 0; i < conditions.length; i++) {
        let condition = conditions[i];
        let a = cells[condition[0]];
        let b = cells[condition[1]];
        let c = cells[condition[2]];
        if (a == '' || b == '' || c == '') {
            continue;
        }
        if ((a == b) && (b == c)) {
            result.innerHTML = `Player ${a} Won `;
            btns.forEach((btn) => btn.disabled = true);
        }
    }
};
function reset() {
    cells = ['', '', '', '', '', '', '', '', ''];
    btns.forEach((btn) => {
        btn.value = '';
    });
    currentPlayer = 'X';
    result.innerHTML = `Player X Turn`;
    btns.forEach((btn) => btn.disabled = false);
};
document.querySelector('#reset').addEventListener('click', reset);
btns.forEach((btn, i) => {
    btn.addEventListener('click', () => ticTacToe(btn, i));
});
</script>
</body>
</html>