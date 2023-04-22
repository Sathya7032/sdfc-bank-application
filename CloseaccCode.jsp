<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*"%>
<%@ include file="BalanceCode.jsp" %>
<head><link href="style1.css" rel="stylesheet"></head>
<%
    long accountno=Long.parseLong(request.getParameter("ano"));
    String name=request.getParameter("name");
    String password =request.getParameter("pswd");
    
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","satheesh","sathya");
    	PreparedStatement ps = con.prepareStatement("delete from sdfc where accountno=?");
    	ps.setLong(1, accountno);
    	ResultSet rs = ps.executeQuery();
    	 
    	if(rs.next()){
    		out.print("User Deleted Successfully....");
    	}

    	
        
    }
    catch(Exception ex){
    out.print(ex);
    }
    
    %>