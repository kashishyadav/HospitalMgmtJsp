<%-- 
    Document   : mycontrol
    Created on : 25 Apr, 2020, 11:04:13 AM
    Author     : SUDHANSHU YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="pDao" class="mypackage.DataBaseClass" scope="page" ></jsp:useBean>
<!--
request ::  You can use the bean from any JSP page processing the same request,
            until a JSP page sends a response to the client or forwards the request to another resource.
            You can use the request object to access the bean, for example, request.getAttribute(beanInstanceName).
 
session ::  You can use the bean from any JSP page in the same session as the JSP page that 
            created the bean. The bean exists across the entire session, and any page that participates in 
            the session can use it. The page in which you create the bean must have a page directive with session="true".
 
application   You can use the bean from any JSP page in the same application as the JSP page
              that created the bean. The bean exists across an entire JSP application, 
              and any page in the application can use the bean.
-->
<%
    if(request.getParameter("page").toString().equals("adminlogin"))
    {
     boolean status=pDao.loginValidation(request.getParameter("adminname").toString(),request.getParameter("password").toString());
     if(status){
       session.setAttribute("userstatus",1);
       session.setAttribute("username",request.getParameter("adminname").toString());
       response.sendRedirect("adminhome.jsp");
               
     }
     else{
         request.getSession().setAttribute("userstatus",-1);
          response.sendRedirect("index.jsp");
      }
    }
    else if(request.getParameter("page").toString().equals("adddoctor")){
        String doctorname=request.getParameter("doctorname").toString();
        String specialization=request.getParameter("specialization").toString();
        String contact=request.getParameter("contact").toString();
        boolean status=pDao.addDoctor(doctorname, specialization, contact);
         session.setAttribute("docorname",doctorname);
          response.sendRedirect("viewDoctor.jsp");

    }
      else if(request.getParameter("page").toString().equals("addpatient")){
        String patientname=request.getParameter("patientname").toString();
        String patientadress=request.getParameter("patientadress").toString();
        String gender=request.getParameter("gender").toString();
        String contact=request.getParameter("contact").toString();
        boolean status=pDao.addPatient(patientname,patientadress, gender,contact);
         session.setAttribute("patientname",patientname);
          response.sendRedirect("viewPatient.jsp");

    }
 else if(request.getParameter("page").toString().equals("addappointment")){
       System.out.println("pahge chale");
       
        String patientname=request.getParameter("patient").toString();
        String doctorname=request.getParameter("doctor").toString();
        String date=request.getParameter("date").toString();
        String time=request.getParameter("time").toString();
        System.out.println(patientname+" "+doctorname+" "+date+" "+time);
        boolean status=pDao.addAppointment(patientname,doctorname,date,time);
         //session.setAttribute("patientname",patientname);
          response.sendRedirect("viewAppointment.jsp");

    }    

    
    

    %>
