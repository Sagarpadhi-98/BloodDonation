<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
long phone=Long.parseLong(request.getParameter("number"));

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	PreparedStatement ps=con.prepareStatement("update bloodrequest set status='completed' where phone=?");
	ps.setLong(1, phone);
	ps.executeUpdate();
	response.sendRedirect("requestForBlood.jsp");
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}
%>