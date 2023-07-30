<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('NkSZ4lT.webp'); background-repeat: no-repeat;background-size: cover;">

<header style=" font-family:fantasy; color: #8E1E1D; background-color: black; width: 100%">
<h1 style="color: red; background-color: gray; "> <img style="height: 130px;width: 80px; margin: 7px" src="blood-drop-blood-png-clipart-best-28.png">BAJRANG BLOOD BANK</h1>

<nav style="background-color: black; height: 45px;  text-align: right; font-size: 20px; padding: 8px;color: #0000FF;">

<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="WelcomePage.jsp">Home </a>|
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="AddNewDonor.jsp">Add new Doner </a>     |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="edit&delete.jsp">View Donor Details </a>     |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="">Manage Stock </a>      |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="">Request Blood </a>     |
<a style="color: #DEC19B;margin: 15px;text-decoration: none;" href="">Request Completed </a> |
<a style="color: #FF2400;margin: 15px;text-decoration: none;" href="">Logout</a>
</nav>
</header>
<%
String email=request.getParameter("email");
try 
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	String sql="select * from addnewdonor where email='"+email+"'";
	Statement st=con.createStatement(); 
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
%>

<form style="color: silver; font-size: x-large;" action="EditDonorConnection.jsp" >

Name:
<input type="text" name="dname" placeholder="Enter here your name" value="<%=rs.getString(1)%>"><br><hr>
Father Name:
<input type="text" name="fname" placeholder="Enter here your father's name" value="<%=rs.getString(2)%>"><br><hr>
Mother Name:
<input type="text" name="mname" placeholder="Enter here your father's name" value="<%=rs.getString(3)%>"><br><hr>
Mobile number:
<input type="number" name="mobile" placeholder="Enter here your mobile number" value="<%=rs.getString(4)%>"><br><hr>
Gender:
<select name="gender" style="border-radius: 5px" value="<%=rs.getString(5)%>">
<option>Select</option>
<option>Male</option>
<option>Female</option>
<option>Transgender</option>
</select><br><hr>

<input type="hidden" name="email" placeholder="Enter here your email address" value="<%=rs.getString(6)%>">
Blood Group:
<select name="bloodgroup" style="border-radius: 5px" value="<%=rs.getString(7)%>">
<option>Select</option>
<option>A+</option>
<option>A-</option>
<option>B+</option>
<option>B-</option>
<option>O+</option>
<option>O-</option>
<option>AB+</option>
<option>AB-</option>
</select><br><hr>

Address:
<input type="text" name="address" placeholder="Enter here Present address" value="<%=rs.getString(8)%>"><br>

<input style="background-color: #2565AE" type="submit" value="Update">

</form>


<%
	}}
catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>