<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@ include file="component/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8;">
	<%@include file="component/navabar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center login-title text-success">Login</h4>
						<%
						String invalid = (String) session.getAttribute("inavlidMsg");
						if (invalid != null) {
						%>
						<div class="alert alert-danger text-center"><%=invalid%></div>
						<%
						session.removeAttribute("inavlidMsg");
						}
						%>
						
						
						<%
						String logMsg = (String) session.getAttribute("logMsg");
						if (logMsg != null) {
						%>
						<div class="alert alert-success text-center"><%=logMsg%></div>
						<%
						session.removeAttribute("logMsg");
						}
						%>

						<form action="Login" method="post">
							<div class="form-group">
								<label>Email Address</label> <input name="email" type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedy="emailHelp">
							</div>

							<div class="form-group">
								<label>Password</label> <input name="password" type="password"
									class="form-control" id="exampleInputPassword1">
							</div>

							<div class="text-center mt-3">
								<button type="submit" class="btn btn-info p-2">Login</button>
							</div>
						</form>

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