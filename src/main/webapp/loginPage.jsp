<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bankingmanagementsystem.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body
	class="d-flex flex-column-reverse">
	<%
	// Retrieve user object from session
	User user = (User) session.getAttribute("loggedInUser");
	if (user != null) {
		// Redirect to login page if session expired
		response.sendRedirect("/BankingManagementSystem/homePage.jsp");
	} else {
	%>
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Banking System</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link"
							href="/BankingManagementSystem/registerPage.jsp">Register</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/BankingManagementSystem/loginPage.jsp">Login</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/BankingManagementSystem/exit.jsp">Exit</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container mt-5 ">
			<div class="row justify-content-center ">
				<div class="col-md-4 rounded bg-light shadow">
					<h1 class="text-center mb-4">Login Form</h1>
					<form action="login" method="post"
						class="p-3">
						<div class="mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email"
								placeholder="Enter your email" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Enter your password" required>
						</div>
						<div class="d-grid">
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%
	}
	%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-IQsoLXlQ2vG8ht9FyQt1wYG2KE3eTMyWxPtIb8UUepoe8XBzJCOUxBalPdHWXl4u"
		crossorigin="anonymous"></script>
</body>
</html>
