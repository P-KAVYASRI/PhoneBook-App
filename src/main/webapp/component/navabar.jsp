<%@ page import="com.entity.User" %>
<% 
  User user = (User) session.getAttribute("user");
%>
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
        <a  data-toggle="modal" data-target="#exampleModalCenter">
  
 class="btn" style="background-color: #E7DDFF; color: black; margin-left: 8px;">Logout</a>

      </form>
    <% } %>
    
    
    
   
  </div>
  
  
  <!-- Logout Popup -->
  <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <h6>Do You Want to Logout...</h6>
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Logout</button>
      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>
<!-- Login Popup -->
  
</nav>
