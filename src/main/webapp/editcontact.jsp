<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp"%>
<style type="text/css">
body {
	background: url("img/book-glasses-phone-smartphone.jpg") no-repeat
		center center;
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
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
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
	background-color: Lightgreen;
	color: black;
}
.footer-text {
    color: rgba(255, 255, 255, 0.6);
    font-size: 13px;
    letter-spacing: 0.5px;
    transition: color 0.3s ease;
}

.footer-text span {
	color: #FFA500;
	font-weight: 500;
}

.footer-text:hover {
	color: rgba(255, 255, 255, 0.85);
}
</style>

</head>
<body>
	<%@include file="component/navabar.jsp"%>
	<%@ page import="com.dao.ContactDAO"%>
	<%@ page import="com.conn.DbConnect"%>
	<%@ page import="com.entity.Contact"%>
	<%@ page import="java.util.List"%>

	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>

	<div class="d-flex justify-content-center align-items-center"
		style="min-height: 80vh;">
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h4 class="text-center text-success">Add Contact Page</h4>

					<%
					String errorMsg = (String) session.getAttribute("failedMsg");

					if (errorMsg != null) {
					%>
					<p class="text-danger text-center"><%=errorMsg%></p>
					<%
					session.removeAttribute("failedMsg");
					}
					%>

					<form action="update" method="post">
						<%
						int cid = Integer.parseInt(request.getParameter("cid"));
						ContactDAO dao = new ContactDAO(DbConnect.getConn());
						Contact c = dao.getContactByID(cid);
						%>
						<input type="hidden" value="<%=cid%>" name="cid">

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Enter
								Name</label> <input value="<%=c.getName()%>" name="name" type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email address</label> <input
								value="<%=c.getEmail()%>" name="email" type="email"
								class="form-control" id="email">
						</div>
						<div class="mb-3">
							<label for="phone" class="form-label">Enter Phone No</label> <input
								value="<%=c.getPhno()%>" name="phno" type="text"
								class="form-control" id="phone">
						</div>
						<div class="mb-3">
							<textarea class="form-control" id="about" rows="3"
								placeholder="Enter about" name="about"><%=c.getAbout()%></textarea>
						</div>

						<div class="text-center">

							<button type="submit" class="btn btn-outline-register">Update
								Contact</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="mt-4 text-center">
		<small class="footer-text"> 2025 | Developed & Designed by <span>Kavya
				Sri</span>
		</small>
	</div>

</body>
</html>