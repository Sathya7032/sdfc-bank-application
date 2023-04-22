<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="style.css">
<script>

</script>
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

<h2>OPEN ACCOUNT FORM</h2>
<form action="Registration.jsp" method="post">
<table align="center">
<tr>
<td>Account Number:</td>
<td><input type="text" name="an" placeholder="Enter account number"></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="name" placeholder="enter name"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pswd" placeholder="enter password"></td>
</tr>
<tr>
<td>Confirm password</td>
<td><input type="password" name="cpswd" placeholder="reenter password"></td>
</tr>
<tr>
<td>Amount</td>
<td><input type="text" name="amount" placeholder="enter amount"></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="add" placeholder="enter address"></td>
</tr>
<tr>
<td>Mobile No</td>
<td><input type="text" name="mobile" placeholder="enter mobile number"></td>
</tr>
</table>

<center>
   <button type="submit" class="button">submit</button>
    <button type="reset" class="button1">reset</button>
    </center>
</form>
</body>