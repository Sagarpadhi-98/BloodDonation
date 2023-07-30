<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String email = request.getParameter("email");
	String name = request.getParameter("dname");
	String father_name = request.getParameter("fname");
	String mother_name = request.getParameter("mname");
	long mobile_no= Long.parseLong(request.getParameter("mobile"));
	String gender = request.getParameter("gender");
	String blood_group = request.getParameter("bloodgroup");
	String address = request.getParameter("address");
	

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor", "root", "root");
		String sql = "update addnewdonor set name=?, father_name=?, mother_name=?, mobile_no=?, gender=?, blood_group=?, address=? where email=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, father_name);
		ps.setString(3, mother_name);     
		ps.setLong(4, mobile_no); 
		ps.setString(5, gender);
		ps.setString(6, blood_group);
		ps.setString(7, address);
		ps.setString(8, email);
		ps.executeUpdate();

		RequestDispatcher rsd = request.getRequestDispatcher("AddNewDonor.jsp");
		rsd.forward(request, response);
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