package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"../css/about.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <link href=\"../images/logo/logo2.jpg\" rel=\"icon\" type=\"image/png\"/>\n");
      out.write("       \n");
      out.write("        <title>CarOnRent!</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     ");
 
            if(session.getAttribute("sid") != null)
            {
        
      out.write("\n");
      out.write("       \n");
      out.write("        \n");
      out.write("               <div  class=\"heder_menu_2\">\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("               <tr>\n");
      out.write("                         <td>\n");
      out.write("                            <a href=\"index.jsp\"  class=\"homeblue\">Index</a>\n");
      out.write("                            \n");
      out.write("                         </td>\n");
      out.write("              \n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                             <a href=\"home.jsp\"  class=\"homeblue\">Home</a>\n");
      out.write("                        </td>\n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                           \n");
      out.write("                            <a href=\"help.jsp\" class=\"homeblue\">Help</a>\n");
      out.write("                        </td>\n");
      out.write("                      <td>\n");
      out.write("                            <a href=\"#\" class=\"homered\">About</a> \n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"about_us.jsp\" class=\"homeblue\">About Us</a> \n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                       \n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("            \n");
      out.write("              </table>\n");
      out.write("             </div>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .loginname{\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("            .heder_menu{\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("            .logoutname{\n");
      out.write("               display: flex;\n");
      out.write("            }\n");
      out.write("             #session_name{\n");
      out.write("                display: flex;\n");
      out.write("            }\n");
      out.write("          \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                       \n");
      out.write("        ");

             
            
      out.write("\n");
      out.write("            \n");
      out.write("            ");

               }
          else
                response.sendRedirect("index.jsp");
            
      out.write(" \n");
      out.write("        \n");
      out.write("        <h1>Profile</h1><hr>\n");
      out.write("        <div id=\"pic_id\">\n");
      out.write("            <h2 id=\"idname\">");
 out.print(session.getAttribute("suid")); 
      out.write("</h2>\n");
      out.write("                          <img src=\"../images/uplod/logodriver.png\" alt=\"../images/uplod/logodriver.png\"/>\n");
      out.write("                \n");
      out.write("                <div class=\"btn\">\n");
      out.write("                    <a href=\"#\">Profile Edit</a><br>\n");
      out.write("            <a href=\"#\">Password Forgot</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("                          \n");
      out.write("        </div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("<table id=\"tab_1\">\n");
      out.write(" \n");
      out.write("                \n");
      out.write("    <tr><td>\n");
      out.write("                   <h4>name <th>:</th> </h4>\n");
      out.write("             <td> \n");
      out.write("                 <i>");
 out.print(session.getAttribute("fname"));
      out.write(" <i> </i>   ");
 out.print(session.getAttribute("mname"));
      out.write(" <i> </i>   ");
 out.print(session.getAttribute("sname"));
      out.write("</i>\n");
      out.write("                          \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>mobile <th>:</th></h4></td>\n");
      out.write("                    <td> \n");
      out.write("                        <i>");
 out.print(session.getAttribute("smobile")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>email <th>:</th></h4></td>\n");
      out.write("                    <td> \n");
      out.write("                       <i>");
 out.print(session.getAttribute("semail")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>address <th>:</th></h4></td>\n");
      out.write("                    \n");
      out.write("                    <td> \n");
      out.write("                        <i>");
 out.print(session.getAttribute("saddress")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>district <th>:</th></h4></td>\n");
      out.write("                    <td> \n");
      out.write("                      <i>");
 out.print(session.getAttribute("sdist")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>state <th>:</th></h4></td>\n");
      out.write("                    <td> \n");
      out.write("                        <i>");
 out.print(session.getAttribute("scstate")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                  \n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>country <th>:</th></h4></td>\n");
      out.write("                    <td> \n");
      out.write("                       <i>");
 out.print(session.getAttribute("")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("              \n");
      out.write("                \n");
      out.write("                <tr><td>\n");
      out.write("                        <h4>Specification <th>:</th></h4></td>\n");
      out.write("                    <td> \n");
      out.write("                           <i>");
 out.print(session.getAttribute("sspecification")); 
      out.write("</i>\n");
      out.write("                    </td>\n");
      out.write("                \n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("          \n");
      out.write("               \n");
      out.write("               \n");
      out.write("            </table>\n");
      out.write("        \n");
      out.write("   </body>\n");
      out.write("</html>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
