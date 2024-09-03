<%@page import="com.sandeep.model.Employe"%>
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
	<%
	Employe emp = (Employe) request.getAttribute("emp");
	%>
	<div class="container">
		<h1>Add Employee</h1>
		<form action="updateEmploye" method="POST">

			<input type="hidden" value="<%=emp.getId()%>" name="Id" />
			<div class="form-floating mb-3">
				<input type="text" value="<%=emp.getName()%>" class="form-control"
					name="Name" id="floatingName" placeholder="Employee Name">
				<label for="floatingName">Employee Name</label>
			</div>

			<div class="form-floating mb-3">
				<input type="email" value="<%=emp.getEmail()%>" class="form-control"
					name="Email" id="floatingEmail" placeholder="Employee Email">
				<label for="floatingEmail">Employee Email</label>
			</div>


			<div class="form-floating mb-3">
				<input type="text" value="<%=emp.getAddress()%>"
					class="form-control" name="Address" id="floatingAddress"
					placeholder="Employee Address"> <label
					for="floatingAddress">Employee Address</label>
			</div>

			<div class="form-floating mb-3">
				<input type="number" value="<%=emp.getSalary()%>" class="form-control"
					name="Salary" id="floatingSalary" placeholder="Employee Salary">
				<label for="floatingSalary">Employee Salary</label>
			</div>
			<br /> <br />

			<div class="form-floating">
				<input type="submit" class="btn btn-outline-danger"
					value="Update Employe" /> <a class="btn btn-outline-dark"
					href="getALLEmployes">Cancel</a>
			</div>




		</form>

	</div>

</body>
</html>