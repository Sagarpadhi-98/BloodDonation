<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:teal;">
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

<form action="ManageStockAction.jsp">
<div>
<center> 
<h2 style="color:maroon; ">Select Blood Group</h2><br>
<select style="width: 30%; padding: 6px; border-radius: 15px" name="bloodgroup">
<option>Select</option>
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select><br>
<h2 style="color:maroon; ">Select Increase/Decrease</h2><br>
<select style="width: 30%; padding: 6px; border-radius: 15px" name="inde">
<option>Select</option>
<option value="in">Increase</option>
<option value="de">Decrease</option>
</select><br>
<h2 style="color:maroon; ">Units</h2><br>
<input style="width: 30%;padding: 6px; border-radius: 15px" type="text" name="units" placeholder="Enter number of units" ><br><br>
<input style="width: 10%; border-radius: 10px;padding:7px;color: white;background-color: blue; " type="submit" value="Save">
</center>
</div>
<br><br>
<center>
<table  border="1px" cellspacing="0px" cellpadding="9px" align="center" width="40%">
<tr style="background-color: green; color: white">
<th>Blood Group</th>
<th>Units</th>
</tr>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	String sql="select * from managestock";
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next()){
%>
<tr style="background-color: silver;">
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
</tr>
<%
	}
}
catch (ClassNotFoundException e) {
e.printStackTrace();
} catch (SQLException e) {
e.printStackTrace();
}
%>
</table>
</center>
</form>
</body>
</html>