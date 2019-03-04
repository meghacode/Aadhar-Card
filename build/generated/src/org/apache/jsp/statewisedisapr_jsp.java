package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class statewisedisapr_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#E6E6FA\">\n");
      out.write("        <table border=\"1\" >\n");
      out.write("            <caption>CITY WISE DISAPPROVED</caption>\n");
      out.write("            <tr>\n");
      out.write("                <th>CITY</th>\n");
      out.write("                <Th>CARDS APPROVED</Th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");

                try{
			 Class.forName("org.apache.hive.jdbc.HiveDriver");
                        String url = "jdbc:hive2://192.168.232.128:10000/demo";
                        Connection con = DriverManager.getConnection(url,"","");
                         Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select state,SUM(not_approved) from aadhar GROUP BY state");
                        while(rs.next()){
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("           <td>");
      out.print( rs.getString(1));
      out.write("</td>\n");
      out.write("           <td>");
      out.print( rs.getString(2));
      out.write("</td>\n");
      out.write("            </tr> \n");
      out.write("            ");

                        }
}
        catch(Exception e) {
            out.println("error found :"+e.getMessage());
        }

      out.write("\n");
      out.write("                \n");
      out.write("        </table>\n");
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
