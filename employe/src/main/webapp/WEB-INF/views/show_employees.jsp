<%@page import="com.sandeep.model.Employe"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>

<script type="text/javascript">
	function deleteEmploye(id) {
		if (confirm("Do you want to delete Employee Details?")) {
			document.frm.id.value = id;
			document.frm.action = "deleteEmploye";
			document.frm.method = "post";
			document.frm.submit();
		}
	}
	function editEmploye(id) {
		document.frm.id.value = id;
		document.frm.action = "editEmploye";
		document.frm.method = "post";
		document.frm.submit();
	}
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>

<body>
	<form name="frm">
		<div class="container">
			<h1>Employee Management System</h1>
			<a href="addEmployes" class="btn btn-info">Enter Employee Details</a>
			<br/><br/>
			<input type="hidden" name="id" />
			<table class="table table-striped" border="2" width="100%">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>Salary</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					<%
					List<Employe> emps = (List<Employe>) request.getAttribute("emps");
					if (emps == null || emps.isEmpty()) {
					%>
					<tr>
						<td colspan="6">No Employees found!!</td>
					</tr>  
					<%
					} else {
						for (Employe emp : emps) {
					%>
					<tr>
						<td><%= emp.getId() %></td>
						<td><%= emp.getName() %></td>
						<td><%= emp.getEmail() %></td>
						<td><%= emp.getAddress() %></td>
						<td><%= emp.getSalary() %></td>
						<td>
							<button type="button" class="btn btn-outline-primary" onclick="deleteEmploye('<%= emp.getId() %>')">Delete</button>
							<button type="button" class="btn btn-outline-warning" onclick="editEmploye('<%= emp.getId() %>')">Edit</button>
						</td>
					</tr>
					<%
						}
					}
					%>
				</tbody>
			</table>
		</div>
	</form>
</body>
</html>
