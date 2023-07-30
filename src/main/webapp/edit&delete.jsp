<%@page import ="java.sql.*" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: silver;">
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
</header>
<h1 style="text-align: center; ">DONOR DETAILS</h1>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	String sql="select * from addnewdonor";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);%>
	
	<table border="1px" cellspacing="0px" cellpadding="9px" align="center" > 
	<tr style="background-color: lime;">
	<th>Name</th>
	<th>Father Name</th>
	<th>Mother Name</th>
	<th>Mobile number</th>
	<th>Gender</th>
	<th>Email</th>
	<th>Blood group</th>
	<th>Address</th>
	<th>Edit</th>
	<th>Delete</th>
	</tr>
	
	
	
	
	<%
	while(rs.next())
	{
		%>
		<tr style="text-align: center;">
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getLong(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td ><a style="text-decoration: none;" href="EditDonor.jsp?email=<%=rs.getString(6) %>"  >edit</a></td>
		<td><a style="text-decoration: none; color: red;" href="DeleteDonor.jsp?email=<%=rs.getString(6) %>"  >delete</a></td>
		</tr>
		
		<%
		}
		%>
	</table>
	<% 
	con.close();
}
		catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>