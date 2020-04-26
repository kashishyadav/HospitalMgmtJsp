<%-- 
    Document   : adminhome
    Created on : 25 Apr, 2020, 1:17:33 PM
    Author     : SUDHANSHU YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("index.jsp");
    }
    %>
<html>
    <head>
        <meta charset="utf-8">   
        <style>
    body, html {
  height: 100%;
}
.bg {
  /* The image used */
  background-image: url("https://mdbootstrap.com/img/Photos/Horizontal/Nature/full page/img(20).jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
            </style>
            
                 <jsp:include page="header.jsp"/>
    </head>
    <body>
          <jsp:include page="navigationbar2.jsp"/>
          <body>

              
              <div class="bg" >
                  <center> <br><br><br><br><br>  <h1>Welcome <%=session.getAttribute("username").toString()%></h1></center><br><br><br><br>
                  <center><p><h3 style="color:black">WE WORK AS ORGANIZATION AND WE ARE A TEAM OF PROFESSIONAL DOCTORS<br>
                          <H2 style="color:greenyellow">"WE ARE NEW BUT NOT BORN YESTURDAY</H2><br>
                          <h3 style="color:whitesmoke"> YOU ARE ON THE PAGE WHERE YOU GET THE GREAT TREATEMENT
                     <br>THEN HERE'S SOME AMAZING WAY TO MAKE IT TRUE.<br>
                     WE BELIVE IN MAKING GOOD HEALTH OF YOUR FAMILY.</h3><h3></p></center>
              </div>
                  
              

</body>
    </body>
</html>
