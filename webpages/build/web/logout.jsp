<%-- 
    Document   : logout
    Created on : 25 Apr, 2020, 2:19:17 PM
    Author     : SUDHANSHU YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDao" class="mypackage.DataBaseClass"></jsp:useBean>
<%
    session.setAttribute("userstatus",0);
    session.removeAttribute("username");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
