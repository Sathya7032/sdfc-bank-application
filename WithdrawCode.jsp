<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*"%>
    <head><link href="style1.css" rel="stylesheet"></head>
    <% long accountno=Long.parseLong(request.getParameter("ano"));
    String name=request.getParameter("name");
    String password =request.getParameter("pswd");
    int amoun=Integer.parseInt(request.getParameter("am"));
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","satheesh","sathya");
    	PreparedStatement ps = con.prepareStatement("select*from sdfc where accountno=?");
    	ps.setLong(1, accountno);
    	ResultSet rs = ps.executeQuery();
    	 int amount1=0;
    	if(rs.next()){
    		if(rs.getInt(4)>=amoun){
    		amount1=rs.getInt(4)-amoun;
    		out.println("Balance Withdrawn successfully...");
    		out.println(" balance :"+amount1);
    		}
    		else{
    			amount1=rs.getInt(4);
        		out.print("Amount not available....");
        	}
    	}

    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","satheesh","sathya");
    	PreparedStatement ps1 = con1.prepareStatement("update sdfc set amount=? where accountno='"+accountno+"'");
    	ps1.setInt(1,amount1);
    	ps1.executeUpdate();
    	ResultSet rs1=ps1.executeQuery();
    	if(rs.next()){
    		
    	}
        
    }
    catch(Exception ex){
    	out.print(ex);
    }
    
    
    %>
    
    
    
    
    