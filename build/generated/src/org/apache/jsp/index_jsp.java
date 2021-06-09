package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"main.css\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.6.1/css/all.css\" integrity=\"sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <title>Find a great hotel for your vacation.</title>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("     <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script> \n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyDiMT1b7ENi3YVqQgLWyE0HPIXYcsz-dOY&callback=initMap\">\n");
      out.write("</script>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");
  
            if(session.getAttribute("uname") != null){  
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <form action=\"logoutInc\" method=\"post\">\n");
      out.write("                    <nav class=\"navbar navbar-expand-lg navbar-light bg-dark\">\n");
      out.write("  <a class=\"navbar-brand\" href=\"index.jsp\" id=\"navText\">Meet Doctor</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav ml-auto mt-2 mt-lg-0\">\n");
      out.write("           <li class=\"nav-item active ml-auto\">\n");
      out.write("          <a class=\"nav-link\" href=\"hostpage.jsp\" id=\"navText\"> View<span class=\"sr-only\">(current)</span></a>\n");
      out.write("         \n");
      out.write("      </li>\n");
      out.write("        <li class=\"nav-item active ml-auto\">\n");
      out.write("          <a class=\"nav-link\" href=\"hostAdd.jsp\" id=\"navText\"> Add<span class=\"sr-only\">(current)</span></a>\n");
      out.write("         \n");
      out.write("      </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                 <button class=\"btn btn-success btn-sm mr-sm-2\" type=\"submit\" id=\"log_button\" name=\"submit-logout\">Log out</button>\n");
      out.write("                 ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uname}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                </li>\n");
      out.write("      </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("            </form>\n");
      out.write("     \n");
      out.write("          ");
  }else { 
      out.write("\n");
      out.write("           \n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-dark\">\n");
      out.write("  <a class=\"navbar-brand\" href=\"index.jsp\" id=\"navText\">Meet Doctor</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav ml-auto mt-2 mt-lg-0\">     \n");
      out.write("     <li class=\"nav-item active ml-auto\">\n");
      out.write("          <a class=\"nav-link\" href=\"login.jsp\" id=\"navText\">Login <span class=\"sr-only\">(current)</span></a>\n");
      out.write("         \n");
      out.write("      </li>\n");
      out.write("          </ul>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("          ");

            }
          
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<form action=\"index.jsp\" method=\"post\">\n");
      out.write("        <div class=\"container-fluid\" style=\"background-color: white;\">\n");
      out.write("            <br>\n");
      out.write("            <div class=\"row justify-content-center\">\n");
      out.write("                 <div class=\"col-3 col-sm-3 col-md-3 col-lg-3\">\n");
      out.write("                                    \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-3 col-sm-3 col-md-3 col-lg-3\">\n");
      out.write("                                     <select class=\"form-control\" id=\"selectDistric\" name=\"distric\">\n");
      out.write("                                        <option value=\"Ampara\">Select Distric</option>\n");
      out.write("                                        <option value=\"Ampara\">Ampara</option>\n");
      out.write("                                        <option value=\"Anuradhapura\">Anuradhapura</option>\n");
      out.write("                                        <option value=\"Badulla\">Badulla</option>\n");
      out.write("                                        <option value=\"Colombo\">Colombo</option>\n");
      out.write("                                        <option value=\"Galle\">Galle</option>\n");
      out.write("                                        <option value=\"Hambantota\">Hambantota</option> \n");
      out.write("                                        <option value=\"Jaffna\">Jaffna</option> \n");
      out.write("                                        <option value=\"Kandy\">Kandy</option>\n");
      out.write("                                        <option value=\"Kegalle\">Kegalle</option>\n");
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-3 col-sm-3 col-md-3 col-lg-3 \" >\n");
      out.write("                                    \n");
      out.write("                     <button type='submit' name='htName'  id=''style=\"padding: 3px 5px;border-radius: 0px; background-color: #ababab; border: 0px; \" class='btn btn-xs btn-primary pull-right'>SEARCH</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <br>\n");
      out.write("        </div>\n");
      out.write("    </form> \n");
      out.write("\n");
      out.write("<form action=\"viewCenter.jsp\" method=\"post\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("<ul class=\"row\">\n");
      out.write("                ");
  String name = request.getParameter("distric");
                    
                    try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT * FROM signup where distric like '%" + name + "%' ";
                  ResultSet rs = st.executeQuery(select); 
                   while(rs.next()){ 
               String mdname = rs.getString("mdname");
               String fileName = rs.getString("fileName");
                int id=rs.getInt("id");

      out.write("\n");
      out.write("\n");
      out.write("      <li class=\"col-12 col-md-6 col-lg-3\">\n");
      out.write("          <div class=\"cnt-block equal-hight\" style=\"height: 300px; background-color: #ababab; margin: 10px;\">\n");
      out.write("            <img src=\"images/");
      out.print(fileName);
      out.write("\" class=\"img-responsive\" alt=\"\" style=\"height: 200px; width: 100%; background-color: black\">\n");
      out.write("            <br><br>\n");
      out.write("            <h4>");
      out.print(mdname);
      out.write("</h4>\n");
      out.write("            <button type='submit' name='htName' value='");
      out.print(id);
      out.write("' id='view' style='width: 100%;' class='btn btn-xs btn-primary pull-right'>View</button>\n");
      out.write("          </div>\n");
      out.write("      </li>\n");
      out.write("\n");
      out.write("  ");
 }} catch(Exception e1){out.print(e1);} 
      out.write("   \n");
      out.write(" </ul>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("             <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                 <div class=\"col-12 col-sm-12 col-md-12 col-lg-12\" id=\"map\" style=\"background-color: green; height: 600px;\">\n");
      out.write("\n");
      out.write("                 </div> \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("  <script type=\"text/javascript\" src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyDiMT1b7ENi3YVqQgLWyE0HPIXYcsz-dOY&callback=initMap\">\n");
      out.write("</script>\n");
  try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
                  Statement st = con.createStatement();
                  String select = "SELECT * FROM signup  where distric like '%" + name + "%' ";
                  ResultSet rs = st.executeQuery(select); 
                  
                  Statement aa = con.createStatement();
                  String select1 = "SELECT * FROM signup  where distric like '%" + name + "%'";        
                  ResultSet ss = aa.executeQuery(select1); 

               

      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function initMap() {\n");
      out.write("    var map;\n");
      out.write("    var bounds = new google.maps.LatLngBounds();\n");
      out.write("    var mapOptions = {\n");
      out.write("        mapTypeId: 'roadmap'\n");
      out.write("    };\n");
      out.write("                    \n");
      out.write("    // Display a map on the web page\n");
      out.write("    map = new google.maps.Map(document.getElementById(\"map\"), mapOptions);\n");
      out.write("    map.setTilt(50);\n");
      out.write("        \n");
      out.write("    // Multiple markers location, latitude, and longitude\n");
      out.write("    var markers = [\n");
      out.write("        ");
  while(rs.next()){
                      String mdname = rs.getString("mdname");
                      String lat = rs.getString("lat");
                      String lon = rs.getString("lon");
//                      double lat = rs.getDouble("lat");
//                      double lon = rs.getDouble("lon");
                      out.print("['"+mdname+"', '"+lat+"', '"+lon+"'],");
                  } 
      out.write(" \n");
      out.write("    ];\n");
      out.write("                        \n");
      out.write("    // Info window content\n");
      out.write("    var infoWindowContent = [\n");
      out.write("        ");
  while(ss.next()){  
      out.write("\n");
      out.write("                ['<div class=\"info_content \">' +               \n");
      out.write("                    '<div class=\"col-12 col-xs-12 col-sm-12 col-md-12 col-lg-12\" style=\"background-color: white; \">'+\n");
      out.write("                     '<div id=\"slider-animation\" class=\"carousel slide\" data-ride=\"carousel\">'+\n");
      out.write("                       '<ul class=\"carousel-indicators\">'+\n");
      out.write("                            '<li data-target=\"#slider-animation\" data-slide-to=\"0\" class=\"active\"></li>'+                            \n");
      out.write("                      '</ul>'+\n");
      out.write("                   '<div class=\"carousel-inner\">'+\n");
      out.write("                    '<div class=\"carousel-item active\">'+\n");
      out.write("                      '<img src=\"images/");
      out.print(ss.getString("fileName"));
      out.write("\"style=\"height: 200px; width: 100%; background-color: black\"   id=\"mapImage\">'+\n");
      out.write("                   ' </div>'+\n");
      out.write("                  '</div>'+\n");
      out.write("                  '<a class=\"carousel-control-prev\" href=\"#slider-animation\" data-slide=\"prev\">'+\n");
      out.write("                    '<span class=\"carousel-control-prev-icon\"></span>'+\n");
      out.write("                  '</a>'+\n");
      out.write("                  '<a class=\"carousel-control-next\" href=\"#slider-animation\" data-slide=\"next\">'+\n");
      out.write("                   ' <span class=\"carousel-control-next-icon\"></span>'+\n");
      out.write("                 ' </a>'+\n");
      out.write("                 '</div>'+              \n");
      out.write("            '</div>'+           \n");
      out.write("                '<h5 class=\"info_location_name\">");
      out.print(ss.getString("mdname"));
      out.write("</h5> ' +\n");
      out.write("                 \" <button type='submit' name='htName' value='");
      out.print(ss.getInt("id"));
      out.write("' id='view' class='btn btn-xs btn-primary pull-left'>View</button>\"+'</div>'],\n");
      out.write("        ");
 }  }catch(Exception e1){ out.print(e1);   }  
      out.write("\n");
      out.write("    ];  \n");
      out.write("    \n");
      out.write("    // Add multiple markers to map\n");
      out.write("    var infoWindow = new google.maps.InfoWindow(), marker, i;\n");
      out.write("    \n");
      out.write("    // Place each marker on the map  \n");
      out.write("    for( i = 0; i < markers.length; i++ ) {\n");
      out.write("        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);\n");
      out.write("        bounds.extend(position);\n");
      out.write("        marker = new google.maps.Marker({\n");
      out.write("            position: position,\n");
      out.write("            map: map,\n");
      out.write("            icon: \"images/map.png\",\n");
      out.write("            title: markers[i][0]\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("        // Add info window to marker    \n");
      out.write("        google.maps.event.addListener(marker, 'click', (function(marker, i) {\n");
      out.write("            return function() {\n");
      out.write("                infoWindow.setContent(infoWindowContent[i][0]);\n");
      out.write("                infoWindow.open(map, marker);\n");
      out.write("            }\n");
      out.write("        })(marker, i));\n");
      out.write("\n");
      out.write("        // Center the map to fit all markers on the screen\n");
      out.write("        map.fitBounds(bounds);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    // Set zoom level\n");
      out.write("    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {\n");
      out.write("        this.setZoom(9);\n");
      out.write("        google.maps.event.removeListener(boundsListener);\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("// Load initialize function\n");
      out.write("google.maps.event.addDomListener(window, 'load', initMap);\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("  .gm-style-iw {\n");
      out.write("  width: 300px; \n");
      out.write("  max-height: 400px;\n");
      out.write("}\n");
      out.write(".row.heading h2 {\n");
      out.write("    color: #fff;\n");
      out.write("    font-size: 52.52px;\n");
      out.write("    line-height: 95px;\n");
      out.write("    font-weight: 400;\n");
      out.write("    text-align: center;\n");
      out.write("    margin: 0 0 40px;\n");
      out.write("    padding-bottom: 20px;\n");
      out.write("    text-transform: uppercase;\n");
      out.write("}\n");
      out.write("ul{\n");
      out.write("  margin:0;\n");
      out.write("  padding:0;\n");
      out.write("  list-style:none;\n");
      out.write("}\n");
      out.write(".heading.heading-icon {\n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write(".padding-lg {\n");
      out.write("\tdisplay: block;\n");
      out.write("\tpadding-top: 60px;\n");
      out.write("\tpadding-bottom: 60px;\n");
      out.write("}\n");
      out.write(".practice-area.padding-lg {\n");
      out.write("    padding-bottom: 55px;\n");
      out.write("    padding-top: 55px;\n");
      out.write("}\n");
      out.write(".practice-area .inner{ \n");
      out.write("     border:1px solid #999999; \n");
      out.write("\t text-align:center; \n");
      out.write("\t margin-bottom:28px; \n");
      out.write("\t padding:40px 25px;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block:hover {\n");
      out.write("    box-shadow: 0px 0px 10px rgba(0,0,0,0.3);\n");
      out.write("    border: 0;\n");
      out.write("}\n");
      out.write(".practice-area .inner h3{ \n");
      out.write("    color:#3c3c3c; \n");
      out.write("\tfont-size:24px; \n");
      out.write("\tfont-weight:500;\n");
      out.write("\tfont-family: 'Poppins', sans-serif;\n");
      out.write("\tpadding: 10px 0;\n");
      out.write("}\n");
      out.write(".practice-area .inner p{ \n");
      out.write("    font-size:14px; \n");
      out.write("\tline-height:22px; \n");
      out.write("\tfont-weight:400;\n");
      out.write("}\n");
      out.write(".practice-area .inner img{\n");
      out.write("\tdisplay:inline-block;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".our-webcoderskull{\n");
      out.write("  background: url(\"http://www.webcoderskull.com/img/right-sider-banner.png\") no-repeat center top / cover;\n");
      out.write("  \n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block{ \n");
      out.write("   float:left; \n");
      out.write("   width:100%; \n");
      out.write("   background:#fff; \n");
      out.write("   padding:30px 20px; \n");
      out.write("   text-align:center; \n");
      out.write("   border:2px solid #d5d5d5;\n");
      out.write("   margin: 0 0 28px;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block figure{\n");
      out.write("   width:100%; \n");
      out.write("   height:148px; \n");
      out.write("   border-radius:100%; \n");
      out.write("   display:inline-block;\n");
      out.write("   margin-bottom: 15px;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block img{ \n");
      out.write("   width:148px; \n");
      out.write("   height:148px; \n");
      out.write("   border-radius:100%; \n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block h3{ \n");
      out.write("   color:#2a2a2a; \n");
      out.write("   font-size:20px; \n");
      out.write("   font-weight:500; \n");
      out.write("   padding:6px 0;\n");
      out.write("   text-transform:uppercase;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block h3 a{\n");
      out.write("  text-decoration:none;\n");
      out.write("\tcolor:#2a2a2a;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block h3 a:hover{\n");
      out.write("\tcolor:#337ab7;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block p{ \n");
      out.write("   color:#2a2a2a; \n");
      out.write("   font-size:13px; \n");
      out.write("   line-height:20px; \n");
      out.write("   font-weight:400;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block .follow-us{\n");
      out.write("\tmargin:20px 0 0;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block .follow-us li{ \n");
      out.write("    display:inline-block; \n");
      out.write("\twidth:auto; \n");
      out.write("\tmargin:0 5px;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block .follow-us li .fa{ \n");
      out.write("   font-size:24px; \n");
      out.write("   color:#767676;\n");
      out.write("}\n");
      out.write(".our-webcoderskull .cnt-block .follow-us li .fa:hover{ \n");
      out.write("   color:#025a8e;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
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
