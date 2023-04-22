<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<%

Long accountno=Long.parseLong(request.getParameter("an"));
String name=request.getParameter("name");
String password=request.getParameter("pswd");
int amount = Integer.parseInt(request.getParameter("amount"));
String address=request.getParameter("add");
long mobbile=Long.parseLong(request.getParameter("mobile"));

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","satheesh","sathya");
PreparedStatement ps=con.prepareStatement("insert into sdfc values(?,?,?,?,?,?)");
ps.setLong(1, accountno);
ps.setString(2, name);
ps.setString(3, password);
ps.setInt(4, amount);
ps.setString(5, address);
ps.setLong(6, mobbile);
int i=ps.executeUpdate();
if(i>=1){
	
	response.sendRedirect("success.jsp");
}
else{
    out.print("Enter valid Details.....");
}
con.close();
}catch(Exception ex){
out.print(ex);
}



%>
