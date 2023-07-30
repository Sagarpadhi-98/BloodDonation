<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Donor connection</title>
</head>
<body>
<%
String name=request.getParameter("dname");
String father=request.getParameter("fname");
String mother=request.getParameter("mname");
long phone=Long.parseLong(request.getParameter("mobile"));
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String address=request.getParameter("address");


try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	String sql="insert into addnewdonor values(?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, name);
	ps.setString(2, father);
	ps.setString(3, mother);
	ps.setLong(4, phone);
	ps.setString(5, gender);
	ps.setString(6, email);
	ps.setString(7, bloodgroup);
	ps.setString(8, address);
	
	 ps.execute();
	 
	
		out.write("<html><body><h2>Data Enter Success</h2></body></html>");
		RequestDispatcher rsd=request.getRequestDispatcher("WelcomePage.jsp");
		rsd.include(request, response);
		con.close();
	
	
	
} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
</body>
</html>