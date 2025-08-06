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
	
	<%
	
		String succMsg = (String)session.getAttribute("succMsg");
	    String errorMsg = (String)session.getAttribute("failedMsg");
		if(succMsg!=null){%>
			<div class="alert alert-success" role="alert"><%=succMsg %></div>
		<%
		session.removeAttribute("succMsg");
		}
		
		if (errorMsg != null) {
			%>
			<p class="text-danger text-center"><%=errorMsg%></p>
			<%
			session.removeAttribute("failedMsg");
			}
			%>
	
	
	

	<div class="container">
		<div class="row p-4">

			<%
			if (user != null) {
				ContactDAO dao = new ContactDAO(DbConnect.getConn());
				List<Contact> contact = dao.getAllContact(user.getId());
				for (Contact c : contact) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<h5>
							Name:
							<%=c.getName()%></h5>
						<p>
							Ph no:
							<%=c.getPhno()%></p>
						<p>
							Email:
							<%=c.getEmail()%></p>
						<p>
							About:
							<%=c.getAbout()%></p>
						<div class="text-center">
							<a href="editcontact.jsp?cid=<%= c.getId() %>" class="btn btn-success btn-sm text-white">Edit</a> 

<form action="delete" method="post" style="display:inline;">
    <input type="hidden" name="cid" value="<%= c.getId() %>">
    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
</form>

						</div>
					</div>
				</div>
			</div>
			<%
			}

			}
			%>

		</div>

	</div>
</body>
</html>