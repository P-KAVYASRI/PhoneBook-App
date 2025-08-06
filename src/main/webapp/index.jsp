<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.conn.DbConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phone Book App</title>
<%@ include file="component/allCss.jsp"%>

<style>
/* Full-page background with overlay */
.back-img {
	background: url("img/book-glasses-phone-smartphone.jpg") no-repeat center center;
	background-size: cover;
	background-attachment: fixed;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 85vh;
	position: relative;
}

/* Glassmorphism overlay */
.back-img::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.4);
	backdrop-filter: blur(4px);
	z-index: 1;
}

/* Welcome text box */
.welcome-box {
	position: relative;
	z-index: 2;
	padding: 40px;
	background: rgba(255, 255, 255, 0.1);
	border: 1px solid rgba(255, 255, 255, 0.2);
	border-radius: 15px;
	text-align: center;
	color: white;
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
}

/* Heading styling */
.welcome-box h1 {
	color: #ffffff;
	font-size: 2.5rem;
	font-weight: 600;
	margin: 0;
	text-shadow: 2px 2px 6px #000000;
	animation: fadeIn 1.2s ease-in-out;
}

/* Fade animation */
@keyframes fadeIn {
	from { opacity: 0; transform: translateY(-20px); }
	to { opacity: 1; transform: translateY(0); }
}



</style>

</head>
<body>

	<%@ include file="component/navabar.jsp"%>

	<div class="container-fluid back-img">
		<div class="welcome-box">
			<h1>Welcome to PhoneBook App</h1>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>
