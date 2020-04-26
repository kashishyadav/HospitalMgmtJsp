package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class addAppointment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      mypackage.DataBaseClass pDao = null;
      synchronized (_jspx_page_context) {
        pDao = (mypackage.DataBaseClass) _jspx_page_context.getAttribute("pDao", PageContext.PAGE_SCOPE);
        if (pDao == null){
          pDao = new mypackage.DataBaseClass();
          _jspx_page_context.setAttribute("pDao", pDao, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("              ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigationbar2.jsp", out, false);
      out.write("\n");
      out.write("              <div class=\"container\" style=\"margin-top: 70px\">\n");
      out.write("                  <h1 class=\"text-center\" style=\"color:purple\">Take Appointment</h1>\n");
      out.write("                  <form action=\"mycontrol.jsp\" method=\"post\">\n");
      out.write("                      <input type=\"hidden\" name=\"page\" value=\"addappointment\">\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                          ");
 ResultSet rs=pDao.viewDoctor();
                          
      out.write("\n");
      out.write("                          <label>Doctor Name</label>\n");
      out.write("                             <select name=\"doctor\" class=\"form-control\" >\n");
      out.write("                          ");
 while(rs.next())
                          {
      out.write("\n");
      out.write("                        \n");
      out.write("                          <option value=\"");
      out.print(rs.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</option>\n");
      out.write("                                \n");
      out.write("                           \n");
      out.write("                         ");
 }
      out.write("\n");
      out.write("                         </select>\n");
      out.write("                          ");
ResultSet rs1=pDao.viewPatient();
      out.write("\n");
      out.write("                          <label>Patient Name</label>\n");
      out.write("                             <select name=\"patient\" class=\"form-control\" >\n");
      out.write("                          ");
 while(rs1.next())
                          {
      out.write("\n");
      out.write("                        \n");
      out.write("                          <option value=\"");
      out.print(rs1.getString(2));
      out.write('"');
      out.write('>');
      out.print(rs1.getString(2));
      out.write("</option>\n");
      out.write("                                \n");
      out.write("                           \n");
      out.write("                         ");
 }
      out.write("\n");
      out.write("                         </select>\n");
      out.write("                     <label>Date</label>\n");
      out.write("                     <input type=\"date\" name=\"date\" class=\"form-control\">\n");
      out.write("                          \n");
      out.write("                          <label>Time</label>\n");
      out.write("                     <input type=\"time\" name=\"time\" class=\"form-control\"><br>\n");
      out.write("                          \n");
      out.write("                          <input type=\"submit\" value=\"REGISTER\" class=\"btn-primary\">\n");
      out.write("                      </div>\n");
      out.write("                          \n");
      out.write("                  </form>\n");
      out.write("              </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
