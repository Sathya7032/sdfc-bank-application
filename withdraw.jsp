<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1>SDFC BANK</h1>
<h3>EXTRODINARY SERVICES</h3>
<table id="nav" align="center">
<tr>
<td><a href="home.jsp">Home</a></td>
<td><a href="register.jsp">New Account</a></td>
<td><a href="Balance.jsp">Balance</a></td>
<td><a href="deposit.jsp">Deposit</a></td>
<td><a href ="withdraw.jsp">Withdraw</a></td>
<td><a href="Transfer.jsp">Transfer</a></td>
<td><a href="closeacc.jsp">Close Account</a></td>
<td><a href="About.jsp">about</a></td>
</tr>

</table>

<h2>Withdraw Form</h2>
  <form action="WithdrawCode.jsp" method="get">
  <table align="center">
  <tr>
  <td>Account no</td>
  <td><input type="text" name="ano" placeholder="Enter account number"></td>
  </tr>
  <tr>
  <td>Name</td>
  <td><input type ="text" name="name" placeholder="enter name"></td>
  </tr>
  <tr>
  <td>Password</td>
  <td><input type="password" name="pswd" placeholder="enter password"></td>
  </tr>
  <tr>
  <td>amount</td>
  <td>
  <input type="text" name="am"></td>
  </tr>
  </table>
  
  <center>
   <button type="submit" class="button">submit</button>
    <button type="reset" class="button1">reset</button>
    </center>
 
  </form>

</body>
</html>