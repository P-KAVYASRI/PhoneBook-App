<%@ page import="com.entity.User" %>
<%
  User user = (User) session.getAttribute("user");
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-square-phone"></i> Phone Book</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house-chimney-user"></i> Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addContact.jsp"><i class="fa-solid fa-user-plus"></i> Add Phone Number</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="viewContact.jsp"><i class="fa-solid fa-eye"></i> View Contact</a>
      </li>
    </ul>

    <% if (user == null) { %>
      <form class="form-inline my-2 my-lg-0">
        <a href="login.jsp" class="btn btn-info"><i class="fa-solid fa-user"></i> Login</a>
        <a href="register.jsp" class="btn btn-warning ml-2"><i class="fa-solid fa-arrow-right-to-bracket"></i> Register</a>
      </form>
    <% } else { %>
      <form class="form-inline my-2 my-lg-0">
        <button class="btn btn-dark"><i class="fa-solid fa-user-circle"></i> <%= user.getName() %></button>
        <a href="#" class="btn ml-2" style="background-color: #B89DC6; color: black;" data-toggle="modal" data-target="#exampleModalCenter">
          Logout
        </a>
      </form>
    <% } %>
  </div>
</nav>

<!-- Logout Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
  aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Confirm Logout</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to logout?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <a href="logout" class="btn btn-danger">Logout</a>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap & jQuery scripts (required for modal to work) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
