<%-- 
    Document   : tutorDelete
    Created on : May 21, 2024, 10:08:56 AM
    Author     : Santhosh Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>&#128214; Delete Tutors - Max Home Tuition &#128214;</title>
<link rel="stylesheet" href="tutorDelete.css">
<!-- fontawesome link attached -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
        <%
          
            if(session.getAttribute("username") == null)
            {
                response.sendRedirect("index.jsp");
            }

        %>
       <!-- header and navigation starts -->
<header>
    <h2>Welcome Admin</h2>
    <nav class="topnav" id="myTopnav">
        <a href="adminHome.jsp">Home</a>
        <a href="adminChangePassword.jsp">Change Password</a>
        <a href="addTutor.jsp">Add Tutor</a>
        <a href="tutorUpdate.jsp">Update Tutor</a>
        <a href="#" class="active">Delete Tutor</a>
        <a href="logout.jsp">Log out</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
          <i class="fa fa-bars"></i>
        </a>
      </nav>
</header>
<!-- header and navigation end -->

<!-- delete tutor starts -->
<section class="formcontainer">
  <form action="TutorServlet" method="post">
    <h2>Delete Tutor</h2>
    
    <div class="inputs">
      <label for="username">Username</label>
      <input type="text" name="username" id="username" placeholder="username" required>
    </div>

    <div class="inputs">
        <input type="submit" value="Delete" name="action">
    </div>

  </form>
</section>
<!-- delete tutor end -->

<!-- footer starts -->
<footer><p>copyright &#169; 2024 - <span>Max Home Tuition</span></p></footer>
<!-- footer end -->

<!-- internal js attached for navigation bar -->
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
       
    </body>
</html>
