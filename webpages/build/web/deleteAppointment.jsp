<%-- 
    Document   : viewDoctor
    Created on : 25 Apr, 2020, 2:35:03 PM
    Author     : SUDHANSHU YADAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDao" class="mypackage.DataBaseClass" scope="page"></jsp:useBean>
<%
    String id=request.getParameter("id");
    pDao.deleteAppointment(id);
    response.sendRedirect("viewAppointment.jsp");
    %>
