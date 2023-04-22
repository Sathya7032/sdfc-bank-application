<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#image{
    width:50px;
}
h1{
    text-align: center;
    color: brown;
    block-size: auto;
    
}
#blink{
   font-size:20px;
   font-weight:bold;
   color:blue;
   transition:0.2s;

}
#right{
   float:right;
   background-color:orange;
   width:25%;
   text-align:center;
   height:40%;
}
h2{
    text-align: center;
    color: brown;
}
h3{
    text-align: center;
    color: skyblue; 
    	
}
#nav{
    border: 1px solid;
    width: 100%;
    
    border-collapse: collapse;
    height: 20px;
    text-align: center;
    vertical-align: middle;
    background-color: orange;
    color: antiquewhite;
}
#ab{
    width: 100%;
    border: 0px;
}

table{
    background-color: white;
    align-content: center;
    width:50%;
    }
    #left{
     background-color: orange;
     width:25%;
     float: left;
    }

</style>
</head>
<body>
<marquee>THANK YOU FOR VISITING SDFC BANK</marquee>
<h1>SDFC BANK</h1>
<h3>EXTRODINARY SERVICES</h3>


<center><table id="nav">
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

</table></center>
<aside id="left"><ul>
<b> <h4>->OUR SERVICES</h4></b>
<li>Online Banking</li><p></p>
<li>Personal Loans</li><p></p>
<li>Home Loans</li><br>
<li>Vehicle Loans</li><br>
<li>Fast Transactions</li><br>
</ul></aside>
<aside id="right">
<p id="blink">STAY SECURE WITH <br>
 SDFC BANKING</p>
 <img src="front-view-arrangement-economy-elements_23-2148793796.webp">
<script type="text/javascript">
   document.getElementById('blink');
   setInterval(function(){
	   blink.style.opacity=(blink.style.opacity==0?1:0);},1500);
   
</script>
</aside>
<center>
<img src="istockphoto-1334591614-170667a.jpg">
</center>


</body>
</html>