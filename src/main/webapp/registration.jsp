<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="ISO-8859-1">
		<title> Employee Registration form</title>
		<link rel="stylesheet" href="registration.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
	<body>
		<div class="container">
			<div class="title">Employee Register form</div>
			<div class="content">
				<form action="EmployeeServlet" method="post">
					<div class="user-details">
						<div class="input-box">
							<span class="details">*First Name:</span>
							<input type="text" oninput="this.value=this.value.replace(/[^a-z^A-Z]/g,'');" name="firstName" maxlength="10" required>
						</div>
						<div class="input-box">
							<span class="details">*Last Name:</span>
							<input type="text" oninput="this.value=this.value.replace(/[^a-z^A-Z]/g,'');" name="lastName" maxlength="10" required>
						</div>
						<div class="input-box">
							<span class="details">*User name:</span>
							<input type="text" name="username" maxlength="20"required>
						</div>
						<div class="input-box">
							<span class="details">*password:</span>
							<input type="password" name="password" min="8" maxlength="20" required>
						</div>
						<div class="input-box">
							<span class="details">Address:</span>
							<input type="text" name ="address" maxlength="20">
						</div>
						<div class="input-box">
							<span class="details">*Contact No:</span>
							<input type ="text" oninput="this.value=this.value.replace(/[^0-9]/g,'');" name="contact" maxlength="10" pattern="[789][0-9]{9}" 
							title="Start with '7/8/9' and number length will be 10" required>
						</div>
					</div>
					<div class="button">
						<input type="submit" value="Register">
					</div>
				</form>
			</div>
		</div>
	</body>
</html>