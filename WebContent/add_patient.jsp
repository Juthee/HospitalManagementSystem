
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% if (request.getParameter("patientName") != null && request.getParameter("age") != null && request.getParameter("address") != null && request.getParameter("phoneno")!= null &&  request.getParameter("gender")!= null)  
{  
	session.setAttribute("patientName", request.getParameter("patientName"));  
	session.setAttribute("age", request.getParameter("age"));  
	session.setAttribute("address", request.getParameter("address"));  
	session.setAttribute("phoneno", request.getParameter("phoneno"));  
	session.setAttribute("gender", request.getParameter("gender")); 
	
	
	} 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/bootstrap.min.css"> 

<script src="js/jquery.min.js" type="text/javascript"></script>
<title>Add Patient</title>
</head>
<body>
<div class="container">

	<h1 class="text-center">Patient management</h1>
	<h3 class="mb-5">Add Patient</h3>
	
	
	<form method="post" action="http://localhost:8080/PatientManagement/PatientService/Patient">
	<div class="form-group">
	<label for="patientName">Patient Name:</label> 
	<input class="form-control" name="patientName" type="text"><br>
	

	<label for="age">Patient Age: </label>
	<input class="form-control" name="age" type="number"><br>
	
	<label for="phoneno">Patient phoneNo: </label>
	<input class="form-control" name="phoneno" type="text"><br>
	
	<label for="address">Patient Address: </label>
	<input class="form-control" name="address" type="text"><br>
	
	<label for="gender">Patient gender: </label>
	<input name="gender" class="form-control" type="text"><br>
	</div>
	
	<input name="btnSubmit" class="btn btn-primary" type="submit" value="Save">
	</form>
	<br>
</div>
</body>
</html>