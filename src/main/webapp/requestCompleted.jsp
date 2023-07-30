<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: maroon;">
<header style=" font-family:fantasy; color: #8E1E1D; background-color: gray; width: 100%">

<h1> <img style="height: 130px;width: 80px; margin: 7px" src="blood-drop-blood-png-clipart-best-28.png">BAJRANG BLOOD BANK</h1>

<nav style="background-color: black; height: 45px;  text-align: right; font-size: 20px; padding: 8px;color: #0000FF;">

<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="WelcomePage.jsp">Home </a>|
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="AddNewDonor.jsp">Add new Doner </a>     |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="edit&delete.jsp">View Donor Details </a>     |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="ManageStock.jsp">Manage Stock </a>      |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="requestForBlood.jsp">Request Blood </a>     |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="requestCompleted.jsp">Request Completed </a> |
<a style="color: #FF2400;margin: 15px;text-decoration: none;" href="AdminLogin.html">Logout</a>
</nav>
</header><br><br>
<center>
<table border="1px" cellpadding="16px" cellspacing="0px">
<tr style="background-color: green">
<th>Name</th>
<th>Mobile</th>
<th>Address</th>
<th>Blood Group</th>
<th>Status</th>
</tr>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from bloodrequest where status='completed'");
	while(rs.next()){
%>
<tr style="background-color: white;">
<td><%=rs.getString(1) %></td>
<td><%=rs.getLong(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
</tr>
<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>