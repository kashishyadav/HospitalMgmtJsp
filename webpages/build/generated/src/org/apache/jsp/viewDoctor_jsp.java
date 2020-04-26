package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class viewDoctor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navigationbar2.jsp", out, false);
      out.write("\n");
      out.write("          <div class=\"container\" style=\"margin-top: 70px\">\n");
      out.write("              <h1 class=\"text-center\" style=\"color: purple\">VIEW DOCTOR</h1>\n");
      out.write("             \n");
      out.write("              <table>\n");
      out.write("                  <thead>\n");
      out.write("                      <tr>\n");
      out.write("                          <th>Doctor Id</th>\n");
      out.write("                          <th>Doctor Name</th>\n");
      out.write("                          <th>Specilization</th>\n");
      out.write("                          <th>contact</th>\n");
      out.write("                      </tr>\n");
      out.write("                  </thead>\n");
      out.write("                  <tbody>\n");
      out.write("                ");
  ResultSet rs=pDao.viewDoctor(); 
                     out.println("loop before jsp"+rs);
                    while(rs.next())
                  {
                      System.out.println("in jsp"+rs.getInt(1));
                      System.out.println("loop before jsp"+rs);
                      int value=rs.getInt(1);
                      
      out.write("\n");
      out.write("                      <tr>\n");
      out.write("                          <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(value);
      out.write("</td>\n");
      out.write("<!--                          <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(rs.getString(4));
      out.write("</td>-->\n");
      out.write("                      </tr>  \n");
      out.write("                      \n");
      out.write("                      ");

                  }
                      
      out.write("\n");
      out.write("                  </tbody>\n");
      out.write("              </table>\n");
      out.write("          </div>\n");
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
