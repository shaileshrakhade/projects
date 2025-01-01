package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"animation/peeled-text-transforms/css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/index.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/login.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/header.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"animation/typed-text/js/index.js\" type=\"text/javascript\"></script>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "jsp/header.jsp", out, false);
      out.write("\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         ");
 
            if(session.getAttribute("username") != null)
            {
        
      out.write("\n");
      out.write("       \n");
      out.write("        \n");
      out.write("               <div  class=\"heder_menu_2\">\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("               <tr>\n");
      out.write("                         <td>\n");
      out.write("                            <a href=\"#\"  class=\"homered\">Index</a>\n");
      out.write("                            \n");
      out.write("                         </td>\n");
      out.write("              \n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                             <a href=\"jsp/home.jsp\"  class=\"homeblue\">Home</a>\n");
      out.write("                        </td>\n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                           \n");
      out.write("                            <a href=\"jsp/help.jsp\" class=\"homeblue\">Help</a>\n");
      out.write("                        </td>\n");
      out.write("                      <td>\n");
      out.write("                            <a href=\"jsp/about.jsp\" class=\"homeblue\">About</a> \n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"jsp/about_us.jsp\" class=\"homeblue\">About Us</a> \n");
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
      out.write("          \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                       \n");
      out.write("        ");

             String sessionName=(String) session.getAttribute("username");
             out.println("Session username : " + sessionName);
             
            
      out.write("\n");
      out.write("            \n");
      out.write("            ");

               }
          else
            
      out.write(" \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("              \n");
      out.write("               <div  class=\"heder_menu\">\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("               <tr>\n");
      out.write("                         <td>\n");
      out.write("                            <a href=\"#\"  class=\"homered\">Index</a>\n");
      out.write("                            \n");
      out.write("                         </td>\n");
      out.write("              \n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                             <a href=\"jsp/home.jsp\"  class=\"homeblue\">Home</a>\n");
      out.write("                        </td>\n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                           \n");
      out.write("                            <a href=\"jsp/help.jsp\" class=\"homeblue\">Help</a>\n");
      out.write("                        </td>\n");
      out.write("                     \n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"jsp/about_us.jsp\" class=\"homeblue\">About Us</a> \n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                       \n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("            \n");
      out.write("              </table>\n");
      out.write("             </div>\n");
      out.write("             ");

          
        
      out.write("\n");
      out.write("            \n");
      out.write("        \n");
      out.write("            \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div id=\"back_img\">\n");
      out.write("            <img src=\"images/index_back.jpg\" alt=\"\"/>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"project_name\">\n");
      out.write("                        <h2>My Cars On <h2>\n");
      out.write("                        <h1>RENT</h1>\n");
      out.write("                        <h3>... </h3>\n");
      out.write("            \n");
      out.write("        </div> \n");
      out.write("        \n");
      out.write("        <div id=\"project_moto\">\n");
      out.write("            <h4>Relax ,you are with us!<h4>\n");
      out.write("            <h3>we make it<span id=\"messageLabel\"> SIMPLE...</span></h3>\n");
      out.write("            <script src=\"animation/typed-text/js/index.js\"></script>\n");
      out.write("        </div>\n");
      out.write("         <div id=\"info_label\">\n");
      out.write("             \n");
      out.write("             <ul> \n");
      out.write("                 <li> Total peoples</li>\n");
      out.write("                <li> 000000 </li>\n");
      out.write("             \n");
      out.write("             </ul>\n");
      out.write("              <ul> \n");
      out.write("             <li> Total cars</li>\n");
      out.write("             <li> 66666666 </li>\n");
      out.write("             \n");
      out.write("             </ul>\n");
      out.write("            <ul> \n");
      out.write("             <li> Total km covers</li>\n");
      out.write("             <li> 00000000 </li>\n");
      out.write("             \n");
      out.write("             </ul>\n");
      out.write("            \n");
      out.write("                </div>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("      \n");
      out.write("        ");
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
