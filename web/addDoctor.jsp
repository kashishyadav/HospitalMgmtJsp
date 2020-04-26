<%-- 
    Document   : addDoctor
    Created on : 25 Apr, 2020, 2:34:49 PM
    Author     : SUDHANSHU YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
    </head>
    <body>
              <jsp:include page="navigationbar2.jsp"/>
              <div class="container" style="margin-top: 70px">
                  <h1 class="text-center" style="color:purple">REGISTER DOCTOR</h1>
                  <form action="mycontrol.jsp" method="post">
                      <input type="hidden" name="page" value="adddoctor">
                      <div class="form-group">
                          <label>Doctor Name</label>
                          <input type="text" name="doctorname" class="form-control">
                          
                           <label>Doctor Specialization</label>
                          <input type="text" name="specialization" class="form-control">
                          
                           <label>Contact</label>
                           <input type="text" name="contact" class="form-control"></br>
                          
                          
                          <input type="submit" value="REGISTER" class="btn-primary">
                      </div>
                          
                  </form>
              </div>
    </body>
</html>
