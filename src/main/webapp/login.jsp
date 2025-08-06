<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@ include file="component/allCss.jsp"%>
<style type="text/css">
body {
    background: url("img/book-glasses-phone-smartphone.jpg") no-repeat center center;
    background-size: cover;
    background-attachment: fixed;
    background-position: center;
    margin: 0;
    padding: 0;
    min-height: 100vh;
}

body::before {
    content: "";
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.4);
    backdrop-filter: blur(3px);
    z-index: -1;
}

.container {
    position: relative;
    z-index: 1;
    color: white;
}

.crd-ho {
    background-color: rgba(255, 255, 255, 0.1);
    color: white;
    border: 1px solid rgba(255, 255, 255, 0.2);
    margin-bottom: 20px;
    transition: all 0.3s ease;
}

.crd-ho:hover {
    background-color: rgba(255, 255, 255, 0.2);
    transform: translateY(-5px);
}

.contact-card {
    height: 100%;
}

.card-body {
    display: flex;
    flex-direction: column;
    height: 100%;
}

.card-actions {
    margin-top: auto;
}

.no-contacts {
    background-color: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    margin-top: 50px;
}
.card {
    background-color: rgba(0, 0, 0, 0.4); /* black with transparency */
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.5);
    color: white;
}

.form-control {
    background-color: rgba(255, 255, 255, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.3);
    color: white;
}
.form-control::placeholder {
    color: rgba(255, 255, 255, 0.6);
}
.btn-outline-register {
    background-color: transparent;
    border: 1px solid white;
    color: white;
}

.btn-outline-register:hover {
    background-color: Skyblue;
    color: black;
}



</style>

</head>
<body >
	<%@include file="component/navabar.jsp"%>
	<div class="container-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center login-title text-success">Login</h4>
						<%
						String invalid = (String) session.getAttribute("invalidMsg");

						if (invalid != null) {
						%>
						<div class="alert alert-danger text-center"><%=invalid%></div>
						<%
						session.removeAttribute("invalidMsg");

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
								<button type="submit" class="btn btn-outline-register">Login</button>
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