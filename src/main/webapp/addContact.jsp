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
	<%
	if (user == null) {
		session.setAttribute("inavlidMsg", "Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>



	<div class="container-fluid">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">ADD CONTACT</h4>
						<from action="addcontact" method="post"> <input
							<% 
							if(user!=null){%>
							   type="hidden" value="<%=user.getId()%>" name="userid">
							<%}
							%>
						<form>
							<div class="form-group">
								<label for="exampleInputName">Enter Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputName" aria-describedby="nameHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Email Address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputPhone">Enter Phone Number </label> <input
									name="phno" type="tel" class="form-control"
									id="exampleInputPhone" aria-describedby="phoneHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputAbout"></label>
								<textarea class="form-control light-textarea"
									id="exampleInputAbout" rows="3"
									placeholder="Enter about information here..." name="about"></textarea>
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success p-2">Save
									Contact</button>
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