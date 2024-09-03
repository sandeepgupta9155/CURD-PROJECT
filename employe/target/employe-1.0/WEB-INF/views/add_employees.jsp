<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>


<body>
<div class="container" >

<h1>Enter New  Employee Details Here!</h1> <br/><br/>

	<form action="saveEmploye" method="POST" modelAttribute="emp"  >

	<div class="row mb-3">
	<label for="colFormLabel" class="col-sm-2 col-form-label">Employee Name</label>
     <div class="col-sm-3"> 	
	<input type="text" class="form-control" name="Name" id="colFormLabel" placeholder="Employee Name">
	</div>
	</div>
	
	
	<div class="row mb-3">
	<label for="colFormLabel" class="col-sm-2 col-form-label">Employee Email</label>
     <div class="col-sm-3">
	<input type="email" class="form-control" name="Email" id="colFormLabel" placeholder="Employee Email">
	</div>
	</div>
	
	<div class="row mb-3">
	<label for="colFormLabel" class="col-sm-2 col-form-label">Employee Address</label>
     <div class="col-sm-3">
	<input type="text" class="form-control" name="Address" id="colFormLabel" placeholder="Employee Address">
	</div>
	</div>

    <div class="row mb-3">
	<label for="colFormLabel" class="col-sm-2 col-form-label">Employee Salary</label>
     <div class="col-sm-3">
	<input type="text" class="form-control" name="Salary" id="colFormLabel" placeholder="Employee Salary">
	</div>
	</div>
	
	<div class="form-floating">
	<input type="submit"   class="btn btn-success"  value="Save"/>
	<a class="btn btn-danger" href="getALLEmployes"> Cancel</a>
	
	</div>
	
	
		
		


		
	</form>
	
	</div>
	
</body>
</html>