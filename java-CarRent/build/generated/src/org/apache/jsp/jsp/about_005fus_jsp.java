package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_005fus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <link href=\"../css/about_us.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("   <link href=\"../images/logo/logo2.jpg\" rel=\"icon\" type=\"image/png\"/>\n");
      out.write("       \n");
      out.write("        <title>CarOnRent!</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          ");
 
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
      out.write("                            <a href=\"about.jsp\" class=\"homeblue\">About</a> \n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"#\" class=\"homered\">About Us</a> \n");
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
      out.write("           #session_name{\n");
      out.write("                display: flex;\n");
      out.write("            }\n");
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
      out.write("                     \n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"#\" class=\"homered\">About Us</a> \n");
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
      out.write("      \n");
      out.write("      \n");
      out.write("        \n");
      out.write("         \n");
      out.write("            \n");
      out.write("        \n");
      out.write("            \n");
      out.write("            \n");
      out.write("    \n");
      out.write("        <div id=\"back_img\">\n");
      out.write("          \n");
      out.write("            <img src=\"../images/11.jpg\" alt=\"\"/>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"para\">\n");
      out.write("           \n");
      out.write("  \n");
      out.write("            <h1>Something about our car <span style=\"color: gold\">CaRent</span></h1>\n");
      out.write("                    \n");
      out.write("                <h3>  As any of us already know that Transport facility is a headache for those people<br> \n");
      out.write("                    who do not have any personal transport so our car rental \n");
      out.write("                    system helps us to find a car by some clicks only.\n");
      out.write("                    <br> \n");
      out.write("                    Car rental system is a online facility to book a car .\n");
      out.write("                    some people do not afford to have a car, for those people this system become helpful .<br>\n");
      out.write("                \n");
      out.write("                </h3>\n");
      out.write("                  <table>\n");
      out.write("                      <tr>\n");
      out.write("                            <ul>\n");
      out.write("                                   <li>   <b> Detailed existing system functions are listed as follows</b></li>\n");
      out.write("                            </ul>\n");
      out.write("                             <br>\n");
      out.write("                             <br>\n");
      out.write("                             <ol>\n");
      out.write("\n");
      out.write("                                 <li>    To register your car, any car provider or car owner must need to create profile on this site first by signing up .</li>\n");
      out.write("                                   <br>\n");
      out.write("                                   <li> Every car provider must have to add their car details after signing up.</li>\n");
      out.write("                                 \n");
      out.write("                                   <br>\n");
      out.write("                                   <li>    During the reservation the customers reserve vehicales by making phone call to the organization;</li>\n");
      out.write("                                     <br>otherwise customer is need to go to organization  to make reservation\n");
      out.write("                            </ol>\n");
      out.write("                        </tr>\n");
      out.write("                                    <br>\n");
      out.write("                        <tr>\n");
      out.write("                        <ul>\n");
      out.write("                            <li> <b> Do you qualify for add your Car on rental site ?</b></li>\n");
      out.write("                        </ul>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                    <ol>\n");
      out.write("                                        <li>  You must be 21 years of age or older.</li>\n");
      out.write("                                     <br>\n");
      out.write("                                          <li>  You must have comprehnsive and collision converage on your vechile.</li>\n");
      out.write("\n");
      out.write("                                    <br>\n");
      out.write("                                         <li>  You must have driving licence. </li>\n");
      out.write("                                     <br>\n");
      out.write("                                   \n");
      out.write("                                              <li>  You must be 21 years of age or older.</li>\n");
      out.write("                                    <br>\n");
      out.write("                                             <li>   You must have comprehnsive and collision converage on your vechile.</li>\n");
      out.write("\n");
      out.write("                                   <br>\n");
      out.write("                                             <li>You must have driving licence. </li>\n");
      out.write("                                    <br>\n");
      out.write("                                    <br>\n");
      out.write("                                   \n");
      out.write("                                    </ol>\n");
      out.write("                          </tr>\n");
      out.write("                                  \n");
      out.write("\n");
      out.write("                        <h2>Thank you.</h2>\n");
      out.write("                        <br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                 \n");
      out.write("       \n");
      out.write("                \n");
      out.write("        \n");
      out.write("</table>\n");
      out.write("      </div> \n");
      out.write("        <div id=\"contact\">\n");
      out.write("            <h2><b> Ask more about car renatal system when you come in or call us At</b></h2><hr>\n");
      out.write("            <img src=\"../images/logo/whatsapp.png\" alt=\"\"/>\n");
      out.write("            Whatasapp Number :- <span style=\"color: blue\">9130429439</span>\n");
      out.write("        <br><hr>\n");
      out.write("        <img src=\"../images/logo/gmail.png\" alt=\"\"/>\n");
      out.write("       E-mail :- <a href=\"https://mail.google.com/mail/u/0/#inbox\"><span style=\"color: blue\">Bhargaavijoshi98@gmail.com</span></a>\n");
      out.write("        <br><hr>\n");
      out.write("        <img src=\"../images/logo/twitter.png\" alt=\"\"/>\n");
      out.write("      Twitter :- <a href=\"https://twitter.com/\"><span style=\"color: blue\">Click</span></a>\n");
      out.write("        \n");
      out.write("       <br><hr>\n");
      out.write("       <img src=\"../images/logo/facebook.png\" alt=\"\"/>\n");
      out.write("       Facebook :- <a href=\"https://www.facebook.com/profile.php?id=100004329436839\"><span style=\"color: blue\">Click</span></a>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("         \n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
