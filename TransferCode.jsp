<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"%>
    <head><link href="style1.css" rel="stylesheet"></head>
<%

long accountno=Long.parseLong(request.getParameter("ano"));
String name=request.getParameter("name");
String password =request.getParameter("pswd");
long taccountno=Long.parseLong(request.getParameter("ta"));


int amoun=Integer.parseInt(request.getParameter("am"));
try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","satheesh","sathya");
	PreparedStatement ps3 = con.prepareStatement("select*from sdfc where accountno=?");
	ps3.setLong(1,accountno);
	ResultSet rs1=ps3.executeQuery();
	if(rs1.next()){
		out.print("available balance"+rs1.getInt(4)+"<br> ");
	if(rs1.getInt(4)>=amoun){
	PreparedStatement ps = con.prepareStatement("update sdfc set amount=amount-? where accountno=?");
	ps.setInt(1, amoun);
	ps.setLong(2, accountno);
	ps.executeUpdate();
	PreparedStatement ps1 = con.prepareStatement("update sdfc set amount=amount+? where accountno=?");
	ps1.setInt(1,amoun);
	ps1.setLong(2,taccountno);
	ps1.executeUpdate();
	PreparedStatement ps2 = con.prepareStatement("select amount from sdfc where accountno=?");
	ps2.setLong(1, taccountno);
	
	ResultSet rs=ps2.executeQuery();
	while(rs.next()){
		out.print("Amount transfered");
}
	}else{
		out.print("not enough balance");
	}
	}
	con.close();
}
catch(Exception ex){
	out.print(ex);
}
%>