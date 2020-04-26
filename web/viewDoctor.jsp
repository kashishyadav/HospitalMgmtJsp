<%-- 
    Document   : viewDoctor
    Created on : 25 Apr, 2020, 2:35:03 PM
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
              <h1 class="text-center" style="color: purple">VIEW DOCTOR</h1>
             
              <table class="table table-hover">
                  <thead style="background-color:green;color:white">
                      <tr>
                          <th>Doctor Id</th>
                          <th>Doctor Name</th>
                          <th>Specilization</th>
                          <th>contact</th>
                          <th>Remove</th>
                      </tr>
                  </thead>
                  <tbody class="table-warning">
                <%  ResultSet rs=pDao.viewDoctor(); %>
              <%    while(rs.next())
                    {
//                      System.out.println("in jsp"+rs.getInt(1));
//                      System.out.println("loop before jsp"+rs);
//                      int value=rs.getInt(1);
                      %>
                      <tr>
                          <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                              <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><a href="deletedoctor.jsp?id=<%=rs.getString(1)%>"  class="btn btn-danger">Delete</a></td>
                          
                      </tr>  
                      
                      <%
                  }
                      %>
                  </tbody>
              </table>
          </div>
    </body>
</html>
