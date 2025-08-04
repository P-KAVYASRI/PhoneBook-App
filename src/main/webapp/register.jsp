<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="component/allCss.jsp"%>

</head>
<body style="background-color: #f7faf8;">
	<%@include file="component/navabar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Registration Page</h4>

						<%
						String success = (String) session.getAttribute("sucssMsg");
						String error = (String) session.getAttribute("errorMsg");
						if (success != null) {
						%>
						<div class="alert alert-success"><%=success%></div>
						<%
						session.removeAttribute("sucssMsg");
						}
						if (error != null) {
						%>
						<div class="alert alert-danger"><%=error%></div>
						<%
						session.removeAttribute("errorMsg");
						}
						%>

						<form action="register" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email Address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1">
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-warning p-2">Register</button>
							</div>
						</form>

						<!-- Footer inside the card -->
						<div class="mt-4 text-center text-muted">
							<small>Developed & Designed by Kavya Sri</small>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>