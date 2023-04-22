<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<head><link href="style1.css" rel="stylesheet"></head>
<body>
<table border="1" align="center">
 <tr>
 <th>Account no</th>
 <th>name</th>
 <th>password</th>
 <th>amount</th>
 <th>address</th>
 <th>mobile</th>
 </tr>
<%


    try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","satheesh","sathya");
	Statement st = con.createStatement();
	long accountno=Long.parseLong(request.getParameter("ano"));
	String str = "select*from sdfc where accountno='"+ accountno+"'";
	
	ResultSet rs=st.executeQuery(str);
    while(rs.next()){
    	
    %>
    <tr>
    <td><%=rs.getLong("accountno") %></td>
    <td><%=rs.getString("name") %></td>
    <td><%=rs.getString("password") %></td>
    
    <td><%=rs.getInt("amount") %></td>
    <td><%=rs.getString("address") %></td>
    <td><%=rs.getLong("mobbile") %></td>
    </tr>
    
   <%} 
    }
    catch(Exception ex){
    	out.print(ex);
    }
%>
</table><br><br>
<center><button><a href="home.jsp">Home</a></button></center>
</body>