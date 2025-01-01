package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("            ");
 
           
                    Connection con;
                    PreparedStatement pst,pst2,pst3;

                         String diststrict = request.getParameter("district");
            String car = request.getParameter("car");
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("select customer.fname, customer.sname, customer.mobile_no, customer.dist, carsinfo.vihicalname, carsinfo.color, carsinfo.price_non_ac, carsinfo.price_ac from carsinfo INNER JOIN customer on carsinfo.uid = customer.uid;");
pst2=con.prepareStatement("SELECT * FROM alldistrict;");
pst3=con.prepareStatement("SELECT * FROM allcars;");
ResultSet rs=pst.executeQuery();

ResultSet rs2=pst2.executeQuery();
ResultSet rs3=pst3.executeQuery();

      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("        \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <link href=\"../css/home.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"../js/picslide.js\" type=\"text/javascript\"></script>\n");
      out.write("          <link href=\"../images/logo/logo2.jpg\" rel=\"icon\" type=\"image/png\"/>\n");
      out.write("       \n");
      out.write("        <title>CarOnRent!</title>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("         ");
 
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
      out.write("                             <a href=\"#\"  class=\"homered\">Home</a>\n");
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
      out.write("                             <a href=\"#\"  class=\"homered\">Home</a>\n");
      out.write("                        </td>\n");
      out.write("                    \n");
      out.write("                        <td>\n");
      out.write("                           \n");
      out.write("                            <a href=\"help.jsp\" class=\"homeblue\">Help</a>\n");
      out.write("                        </td>\n");
      out.write("                     \n");
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
      out.write("             ");

          
        
      out.write("\n");
      out.write("            \n");
      out.write("        \n");
      out.write("            \n");
      out.write("       \n");
      out.write("         <div id=\"newsfield\">\n");
      out.write("            <h> News</h>\n");
      out.write("            <marquee width=\"80%\" direction=\"up\" height=\"60%\" style=\"font-size:25px\">\n");
      out.write("                Sample News About <span style=\"color:red\">CarRen!</span><hr>\n");
      out.write("               Project Made By <span style=\"color:red\">Miss. Bhargavi Joshi</span><hr>\n");
      out.write("               Name Of College <span style=\"color:red\">DR.BNCPE</span><hr>\n");
      out.write("               Project Head  <span style=\"color:red\">Miss. Aparna Kapse</span><hr>\n");
      out.write("               HOD Of College <span style=\"color:red\">Miss. Swati Khobragade</span><hr>\n");
      out.write("               \n");
      out.write("            </marquee>\n");
      out.write("        </div><div id=\"contentname\"><h3>Content</h3>\n");
      out.write("            <div id=\"content\">\n");
      out.write("                \n");
      out.write("                <img  name=\"slide\" width=\"400\" height=\"300\" alt=\"../images/10.jpg\"/>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("              <div id=\"dropdown\">\n");
      out.write("                  <form action=\"#\" onclick=\"return ClassNameHere()\" method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr> \n");
      out.write("                    <td> Location</td>\n");
      out.write("                   \n");
      out.write("                   \n");
      out.write("                  \n");
      out.write("                \n");
      out.write("        <td>\n");
      out.write("            <select name=\"dist\" id =\"location\" required=\"\" >\n");
      out.write("                <option  value=\"all\"> All </option> \n");
      out.write("   ");
                                       
while(rs2.next())
{
   
      String dist=rs2.getString(2);
  
  
    request.setAttribute("district",dist);

    
    

      out.write("   \n");
      out.write("\n");
      out.write("                       \n");
      out.write("                            <option value=\"");

                                    out.println(request.getAttribute("district"));
                                    
                                
      out.write("\">\n");
      out.write("                                ");

                                    out.println(request.getAttribute("district"));
                                    }
                                
      out.write("\n");
      out.write("                            </option>\n");
      out.write("\n");
      out.write("                           \n");
      out.write("            </select>\n");
      out.write("       \n");
      out.write("        </td></tr>\n");
      out.write("                <tr>\n");
      out.write("                   <td> Cars</td>\n");
      out.write("                   <td> <select name=\"car\" id=\"cars\" required=\"\">\n");
      out.write("                             <option  value=\"all\"> All </option>\n");
      out.write("                               ");
                                       
while(rs3.next())
{
   
      String allcar=rs3.getString(2);
  
  
    request.setAttribute("allcar",allcar);

    
    

      out.write("   \n");
      out.write("\n");
      out.write("                       \n");
      out.write("                            <option value=\"");

                                    out.println(request.getAttribute("allcar"));
                                    
                                
      out.write("\">\n");
      out.write("                                ");

                                    out.println(request.getAttribute("allcar"));
                                    }
                                
      out.write("\n");
      out.write("                            </option>\n");
      out.write("\n");
      out.write("                           \n");
      out.write("                         </select>\n");
      out.write("                    </td>\n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                 <input type=\"submit\" value=\"Search\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                  </form>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <div id=\"extra\">\n");
      out.write("            <h5> Extra</h5>\n");
      out.write("            <marquee width=\"80%\" direction=\"up\" height=\"60%\" style=\" align-content: center\" behavior=\"alternate\">\n");
      out.write("               \n");
      out.write("               \n");
      out.write("\n");
      out.write("                    <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                    <img src=\"../images/extratabimg/1.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                    <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/10.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/11.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/12.JPG\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/3.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/4.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/7.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/5.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/8.jpg\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr><i style=\"font-size:20px\">CarOnRent</i>\n");
      out.write("                   <img src=\"../images/extratabimg/2.png\" alt=\"../images/extratabimg/12.JPG\" height=\"100px\" width=\"300px\"/>\n");
      out.write("                   <hr>\n");
      out.write("             </marquee>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("      \n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("               <div id=\"data\">\n");
      out.write("                   <div id=\"contenttable\">\n");
      out.write("                   <table>\n");
      out.write("                       <tr id=\"tbbbold\">\n");
      out.write("                             <td>\n");
      out.write("                               Name\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                               Mobile\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                               District\n");
      out.write("                           </td>\n");
      out.write("                             <td>\n");
      out.write("                               Car Name\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                             Color\n");
      out.write("                           </td>\n");
      out.write("                           <td>\n");
      out.write("                               Rate/Km Non Ac\n");
      out.write("                           </td>\n");
      out.write("                             <td>\n");
      out.write("                               Rate/Km Ac\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                               Profile Show\n");
      out.write("                           </td>\n");
      out.write("                            \n");
      out.write("                       </tr>  ");
       
   
                           
while(rs.next())
{
   
   
    
   
      
      String fname=rs.getString("customer.fname");
      
      String sname=rs.getString("customer.sname");
      String mobile_no=rs.getString("customer.mobile_no");
      String dist=rs.getString("customer.dist");
    String vihicalname=rs.getString("carsinfo.vihicalname");
    
    String color=rs.getString("carsinfo.color");
    String rate_non_ac=rs.getString("carsinfo.price_non_ac");
    
    String rate_ac=rs.getString("carsinfo.price_ac");
   
  
    
  
    request.setAttribute("fname", fname);
    request.setAttribute("sname", sname);
    request.setAttribute("mobile", mobile_no);
    request.setAttribute("dist", dist);
    
    request.setAttribute("vihicalname", vihicalname);
    request.setAttribute("color", color);
    request.setAttribute("rate_non_ac", rate_non_ac);
    request.setAttribute("rate_ac", rate_ac);
    
    

      out.write("\n");
      out.write("                       <tr id=\"\">\n");
      out.write("                           \n");
      out.write("                            <td>\n");
      out.write("                                \n");
      out.write("                                ");

                                       
                              out.println(request.getAttribute("fname"));
                                
                                out.println(request.getAttribute("sname"));
                                
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                             <td>\n");
      out.write("                                \n");
      out.write("                               ");
 
                                     out.println(request.getAttribute("mobile"));
                             
                               
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                               \n");
      out.write("                               ");
 
                               out.println(request.getAttribute("dist"));
                               
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                           <td>\n");
      out.write("                             \n");
      out.write("                               ");

                                   out.println(request.getAttribute("vihicalname"));
                               
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                                \n");
      out.write("                               ");

                                   out.println(request.getAttribute("color"));
                               
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                           <td style=\"font-size:20px\">\n");
      out.write("                                Rs.\n");
      out.write("                               ");
 
                               out.println(request.getAttribute("rate_non_ac"));
                               
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                            <td style=\"font-size:20px\">\n");
      out.write("                                Rs.\n");
      out.write("                               ");
 
                               out.println(request.getAttribute("rate_ac"));
                               
      out.write("\n");
      out.write("                           </td>\n");
      out.write("                            <td>\n");
      out.write("                             \n");
      out.write("                                <a href=\"#\" onclick=\"return ClassNameHere()\">Click</a>\n");
      out.write("                           </td>\n");
      out.write("                       </tr>\n");
      out.write("                                  ");

            }
            
      out.write("\n");
      out.write("           \n");
      out.write("                   </table>\n");
      out.write("                       \n");
      out.write("                   </div>\n");
      out.write("                 \n");
      out.write("        </div>\n");
      out.write("            ");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<script>\n");
      out.write("     function ClassNameHere()\n");
      out.write("     {\n");
      out.write("  var txt;\n");
      out.write(" //var name= document.getElementById(\"idd\").value;\n");
      out.write("  if (confirm(\"Carrenty this opration is not working!\")) {\n");
      out.write("    txt = \"You pressed OK!\";\n");
      out.write("    \n");
      out.write("  \n");
      out.write("  } \n");
      out.write("  else {\n");
      out.write("    txt = \"You pressed Cancel!\";\n");
      out.write("    return false;\n");
      out.write("  }\n");
      out.write(" document.getElementById(\"demo\").innerHTML = txt;\n");
      out.write("}\n");
      out.write("\n");
      out.write("    </script>");
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
