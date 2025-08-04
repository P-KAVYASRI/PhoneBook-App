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
<style type="text/css">
.back-img {
	background: url("img/cell.jpg") no-repeat center center;
	background-size: cover;
	height: 85vh;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	color: white;
	text-shadow: 2px 2px 4px #000000;
}

.container-fluid {
	padding: 0;
}

h1 {
	background-color: rgba(0, 0, 0, 0.5);
	padding: 20px;
	border-radius: 10px;
}
</style>
</head>
<body>
	<%@ include file="component/navabar.jsp"%>

	
	<div class="container-fluid back-img text-center">
		<h1>Welcome to PhoneBook App</h1>
	</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>