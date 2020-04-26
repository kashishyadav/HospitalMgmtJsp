<%-- 
    Document   : addDoctor
    Created on : 25 Apr, 2020, 2:34:49 PM
    Author     : SUDHANSHU YADAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDao" class="mypackage.DataBaseClass" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
    </head>
    <body>
              <jsp:include page="navigationbar2.jsp"/>
              <div class="container" style="margin-top: 70px">
                  <h1 class="text-center" style="color:purple">Take Appointment</h1>
                  <form action="mycontrol.jsp" method="post">
                      <input type="hidden" name="page" value="addappointment">
                      <div class="form-group">
                          <% ResultSet rs=pDao.viewDoctor();
                          %>
                          <label>Doctor Name</label>
                             <select name="doctor" class="form-control" >
                          <% while(rs.next())
                          {%>
                        
                          <option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
                                
                           
                         <% }%>
                         </select>
                          <%ResultSet rs1=pDao.viewPatient();%>
                          <label>Patient Name</label>
                             <select name="patient" class="form-control" >
                          <% while(rs1.next())
                          {%>
                        
                          <option value="<%=rs1.getString(2)%>"><%=rs1.getString(2)%></option>
                                
                           
                         <% }%>
                         </select>
                     <label>Date</label>
                     <input type="date" name="date" class="form-control">
                          
                          <label>Time</label>
                     <input type="time" name="time" class="form-control"><br>
                          
                          <input type="submit" value="REGISTER" class="btn-primary">
                      </div>
                          
                  </form>
              </div>
    </body>
</html>
