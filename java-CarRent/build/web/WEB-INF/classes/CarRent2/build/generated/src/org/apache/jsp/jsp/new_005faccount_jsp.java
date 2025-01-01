package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class new_005faccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link href=\"../images/logo/logo2.jpg\" rel=\"icon\" type=\"image/png\"/>\n");
      out.write("         <script src=\"../js/massege_pop_up.js\" type=\"text/javascript\"></script>\n");
      out.write("         <script src=\"../js/newaccvalidation.js\" type=\"text/javascript\"></script>\n");
      out.write("        <title>CarOnRent!</title>\n");
      out.write("        <link href=\"../css/new_account.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1><i>Owner Registration Form</i></h1>\n");
      out.write("        <div id=\"cancelbtn\">\n");
      out.write("                        <a href=\"index.jsp\">Cancel</a>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <form action=\"../Customer_Profile\"  method=\"post\"   onsubmit=\"return validation()\">\n");
      out.write("            <table id=\"tab_1\"><hr>\n");
      out.write("               \n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <th><i>Name* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"First Name\" name=\"fname\" id=\"fname\">\n");
      out.write("                        <input type=\"text\" placeholder=\"Middle Name\" name=\"mname\" id=\"mname\">\n");
      out.write("                        <input type=\"text\" placeholder=\"Surname\" name=\"sname\" id=\"sname\">\n");
      out.write("                    </td> \n");
      out.write("                    <th> \n");
      out.write("                        <span id=\"msgname\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <th><i>Mobile No.* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Mobile Number\" name=\"mobile\" id=\"mobile_no\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msg_mobile_no\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <th><i>Email* :</i> </th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Email\" name=\"email\" id=\"email\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgemail\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <th><i>Date Of Birth* :</i> </th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"date\" placeholder=\"DD/MM/YY\" name=\"dob\" id=\"dob\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgdob\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                 \n");
      out.write("                    <tr>\n");
      out.write("                    <th><i>District* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"District\" name=\"district\" id=\"dist\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgdist\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <th><i>State* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"State\"  name=\"state\" id=\"state\">\n");
      out.write("                    </td>\n");
      out.write("                    <th> \n");
      out.write("                        <span id=\"msgstate\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th><i>Country :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Country\" name=\"country\" value=\"India\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <th><i>Address :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Address\" name=\"address\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                \n");
      out.write("              \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <th> <i>Write your specification :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                            <input type=\"text\" placeholder=\"Specification\" name=\"specification\">\n");
      out.write("                    </td>\n");
      out.write("                \n");
      out.write("                </tr>\n");
      out.write("          \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("               \n");
      out.write("                    <th> <i>Enter the User Id* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" placeholder=\"User Id\" name=\"uid\" id=\"userid\">\n");
      out.write("                        <input type=\"text\" placeholder=\"User Id\" name=\"uid1\" id=\"userid1\" value=\"");
 
                               out.println(request.getAttribute("uname1"));
                        
      out.write("\">\n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                    </td>\n");
      out.write("                    <th> \n");
      out.write("                        <span id=\"msguserid\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <th><i>Enter Password* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"password\" placeholder=\"Password\" name=\"password\" id=\"pass\" >  \n");
      out.write("                    </td>\n");
      out.write("                    <th> \n");
      out.write("                        <span id=\"msgpass\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th><i>Re-Enter password* :</i></th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"password\" placeholder=\"Re-Password\" name=\"re_password\" id=\"repass\">\n");
      out.write("                    </td>\n");
      out.write("                    <th> \n");
      out.write("                        <span id=\"msgrepass\" style=\"color: red\"></span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("           \n");
      out.write("                \n");
      out.write("           \n");
      out.write("           \n");
      out.write("            \n");
      out.write("                \n");
      out.write("            </table> <hr class=\"line\"><hr class=\"line\">\n");
      out.write("            <table id=\"tab_3\">  \n");
      out.write("                <tr>\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"reset\" value=\"Reset\">\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" value=\"Submit\">\n");
      out.write("                    </td> \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("         \n");
      out.write("       \n");
      out.write("        </form>\n");
      out.write("       \n");
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
