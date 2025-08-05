<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="component/allCss.jsp" %>
</head>
<body>
<%@include file ="component/navabar.jsp"%>
<%
	if (user == null) {
		session.setAttribute("inavlidMsg","Login Please..");
         response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>