<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String bloodgroup=request.getParameter("bloodgroup");
String inde=request.getParameter("inde");
String units=request.getParameter("units");
int unit=Integer.parseInt(units);
try 
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood_donor","root","root");
	Statement st=con.createStatement(); 
	
	if(inde.equals("in"))
		st.executeUpdate("update managestock set Units=units+'"+unit+"' where Blood_Group='"+bloodgroup+"'");
	
	else
		st.executeUpdate("update managestock set Units=units-'"+unit+"' where Blood_Group='"+bloodgroup+"'");
response.sendRedirect("ManageStock.jsp");
	}
catch (ClassNotFoundException e) {
e.printStackTrace();
} catch (SQLException e) {
e.printStackTrace();
}
	
%>
