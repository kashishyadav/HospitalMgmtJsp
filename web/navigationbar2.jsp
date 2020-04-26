<%-- 
    Document   : navigationbar2
    Created on : 25 Apr, 2020, 1:20:13 PM
    Author     : SUDHANSHU YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, intial-scale=1">
<!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.js"></script>-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
             
                 <jsp:include page="header.jsp"/>
    </head>
    <body>
         <nav class="navbar navbar-expand md" style="background-color: black">
            <a class="navbar-brand" href="#" style="color: orange">Hospital Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="adminhome.jsp" style="color:white">HOME</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color:white">
                        DOCTOR</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addDoctor.jsp">ADD Doctor</a>
                        <a class="dropdown-item" href="viewDoctor.jsp">VIEW DOCTOR</a>
                    </div>
                </li>
                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color:white">
                        PATIENT</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addPatient.jsp">ADD PATIENT</a>
                        <a class="dropdown-item" href="viewPatient.jsp">VIEW PATIENT</a>
                    </div>
                </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color:white">
                        APPOINTMENT</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addAppointment.jsp">ADD APPOINTMENT</a>
                        <a class="dropdown-item" href="viewAppointment.jsp">VIEW APPOINTMENT</a>
                    </div>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="logout.jsp" style="color:white">LOGOUT</a>
                </li>
                 </ul>
              
                    </div>
            
<!--                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardropdown" style="color:white">PATIENT</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addDoctor.jsp">ADD Doctor</a>
                        <a class="dropdown-item" href="viewDoctor.jsp">VIEW DOCTOR</a>
                    </div>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardropdown" style="color:white">APPOINTMENT</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="addDoctor.jsp">ADD Doctor</a>
                        <a class="dropdown-item" href="viewDoctor.jsp">VIEW DOCTOR</a>
                    </div>
                </li>-->
     
           
          
        </nav>
    </body>
</html>
