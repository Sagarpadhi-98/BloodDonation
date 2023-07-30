<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
long phone=Long.parseLong(request.getParameter("number"));

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	Statement ps=con.createStatement();
	
	ps.executeUpdate("delete from bloodrequest where phone='"+phone+"'");
	response.sendRedirect("requestForBlood.jsp");
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>