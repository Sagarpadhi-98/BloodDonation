<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form {
  width: 50%;
        margin: 50px auto;
	
}
 
  input{
            display: block;
            padding: 9px;
            border-radius: 15px;
            width:80%;
            margin: 15px;
            
            
            
        }
select{
   display: block;
           padding: 9px;
            border-radius: 15px;
            width:80%;
            margin: 15px;
}



</style>
</head>
<body style="background-image: url('NkSZ4lT.webp'); background-repeat: no-repeat;background-size: cover;">

<header style=" font-family:fantasy; color: #8E1E1D; background-color: black; width: 100%">
<h1 style="color: red; background-color: gray; "> <img style="height: 130px;width: 80px; margin: 7px" src="blood-drop-blood-png-clipart-best-28.png">BAJRANG BLOOD BANK</h1>

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


<h2 style="color: gray;">Donor id:</h2>
<form style="color: silver; font-size: x-large;" action="AddnewDonorConnection.jsp" >

Name:
<input type="text" name="dname" placeholder="Enter here your name"><br><hr>
Father Name:
<input type="text" name="fname" placeholder="Enter here your father's name"><br><hr>
Mother Name:
<input type="text" name="mname" placeholder="Enter here your father's name"><br><hr>
Mobile number:
<input type="number" name="mobile" placeholder="Enter here your mobile number"><br><hr>
Gender:
<select name="gender" style="border-radius: 5px">
<option>Select</option>
<option>Male</option>
<option>Female</option>
<option>Transgender</option>
</select><br><hr>
Email:
<input type="email" name="email" placeholder="Enter here your email address"><br><hr>
Blood Group:
<select name="bloodgroup" style="border-radius: 5px">
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
<input type="text" name="address" placeholder="Enter here Present address"><br>

<input style="background-color: #2565AE" type="submit" value="Save">

</form>

</body>
</html>