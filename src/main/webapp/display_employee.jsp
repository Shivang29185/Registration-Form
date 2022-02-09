<%@page import="com.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome</title>
		<link rel="stylesheet" href="display_employee.css">
	</head>
	<body>
		<% Employee employee = (Employee) request.getAttribute("data");%>
		<div>
			<h1>Welcome <%= employee.getFirstName() + " " + employee.getLastName() %></h1>
			<div class="container">
				<div class="title">Current Employee Detail</div>
				<div class="content">
					<div class="user-details">
						<div class="div-table">
							<div class="input-box">
								<div class="div-row" class="details">
									<div class="div-cell">First Name:<%= employee.getFirstName() %></div>
								</div>
								<div class="div-row" class="details">
									<div class="div-cell">Last Name:<%= employee.getLastName() %></div>
								</div>
								<div class="div-row" class="details">
									<div class="div-cell">User Name:<%= employee.getUserName() %></div>
								</div>
								<div class="div-row" class="details">
									<div class="div-cell">Contact no:<%= employee.getContact() %></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>