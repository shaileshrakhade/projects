package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class new_005fcar_005fregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("       \n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link href=\"../css/newcarregistration.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("           <link href=\"../images/logo/logo2.jpg\" rel=\"icon\" type=\"image/png\"/>\n");
      out.write("           <script src=\"../js/newcarregistrationvalidation.js\" type=\"text/javascript\"></script>\n");
      out.write("        <title>CarOnRent!</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>    \n");
      out.write("        \n");
      out.write("          ");
 
            if(session.getAttribute("sid") != null)
            {
            
        
      out.write("\n");
      out.write("        <h2>Introduce With Your <span style=\"color: red\">Vehicle!</span></h2>\n");
      out.write("       \n");
      out.write("        <form action=\"../newcar\" method=\"post\" onsubmit=\"return carvalidation()\">\n");
      out.write("            \n");
      out.write("             <div id=\"uid\">\n");
      out.write("      \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("            <h2>");
 out.print(session.getAttribute("sname")); 
      out.write("</h2>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div id=\"vihicalform\">\n");
      out.write("            <table id=\"\"><hr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                  <tr>\n");
      out.write("                      <th>Name Of Vehicle*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Audi R8\" name=\"vehiclename\" id=\"vehiclename\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgvehiclename\" style=\"color: red\">aa</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <th>Engine*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"5204CC\" name=\"Engine\" id=\"Engine\">\n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgEngine\" style=\"color: red\">***</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <th>Vehicle Number*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"MH00-AB-0143\" name=\"vehicleno\" id=\"vehicleno\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgvehicleno\" style=\"color: red\">****</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <th>Fuel Type</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <select name=\"Fuel\" >\n");
      out.write("                            <option value=\"\">  </option>\n");
      out.write("                            <option value=\"Petrol\"> Petrol </option>\n");
      out.write("                            <option value=\"Diesel\"> Diesel </option>\n");
      out.write("                           \n");
      out.write("            </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <th>Mileage Km/L</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"17\" name=\"Mileage\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Passing State*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Maharatra\" name=\"passing\" id=\"passing\" >\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgpassing\" style=\"color: red\">****</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                  <tr>\n");
      out.write("                    <th>Seats</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"2\" name=\"Seats\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("              \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <th>Year of Purchase*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"2019\" name=\"yearpurchase\" id=\"yearpurchase\">\n");
      out.write("                    </td>\n");
      out.write("                    <th> \n");
      out.write("                        <span id=\"msgyearpurchase\" style=\"color: red\">***</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                    <tr>\n");
      out.write("                    <th>Color*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"Black\" name=\"color\" id=\"color\">\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgcolor\" style=\"color: red\">***</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <th> About Driver*</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <textarea rows=\"2\" cols=\"15\" placeholder=\"About Driver In 30 Words\" name=\"aboutdriver\" id=\"aboutdriver\"></textarea>\n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgaboutdriver\" style=\"color: red\">***</span>\n");
      out.write("                    </th>\n");
      out.write("                \n");
      out.write("                </tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <th>Other Details</th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <textarea rows=\"2\" cols=\"15\" placeholder=\"Details In 30 Words \" name=\"otherdetail\"></textarea>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                    \n");
      out.write("          \n");
      out.write("               \n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            </div>\n");
      out.write("            <table id=\"tab_2\">\n");
      out.write("                 <hr class=\"line\"><hr class=\"line\">\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <th><i>Price/Km With Non Ac*</i></th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"18\" name=\"Price_Non_ac\" id=\"Price_Non_ac\">  \n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgPrice_Non_ac\" style=\"color: red\">***</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("               \n");
      out.write("                    <th> <i>Price/Km With Ac*</i></th><th>:</th>\n");
      out.write("                    <td> \n");
      out.write("                        <input type=\"text\" placeholder=\"22\" name=\"Price_ac\" id=\"Price_ac\">  \n");
      out.write("                    </td>\n");
      out.write("                     <th> \n");
      out.write("                        <span id=\"msgPrice_ac\" style=\"color: red\">****</span>\n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("            </table>\n");
      out.write("            <table id=\"tab_3\">  \n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"reset\" value=\"Reset\">\n");
      out.write("                    </td> \n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" value=\"Submit\">\n");
      out.write("                    </td> \n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"about.jsp\">Cancel</a>\n");
      out.write("                    </td> \n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("         \n");
      out.write("       \n");
      out.write("        </form>\n");
      out.write("            ");

            
            }else
                response.sendRedirect("index.jsp");
            
      out.write("\n");
      out.write("                     \n");
      out.write("    </body>   \n");
      out.write("    \n");
      out.write("\n");
      out.write("    `                               ");
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
