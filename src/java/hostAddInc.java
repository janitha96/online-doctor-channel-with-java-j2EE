/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author lahiru
 */
@WebServlet(urlPatterns = {"/hostAddInc"})
@MultipartConfig(fileSizeThreshold = 1024 *1024 *2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50 )
public class hostAddInc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet hostAddInc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet hostAddInc at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
      //  processRequest(request, response);
        String uname = request.getParameter("uname");
         String medicalcentername = request.getParameter("medicalcentername");
        String dname = request.getParameter("dname");
        String ttle = request.getParameter("ttle");
        String sun = request.getParameter("sun");
        String mon = request.getParameter("mon");       
        String tue = request.getParameter("tue");
        String wed = request.getParameter("wed");
        String thu = request.getParameter("thu");
        String fri = request.getParameter("fri");       
        String sat = request.getParameter("sat");
        
         Part img =request.getPart("file");
         String fileName = extractFileName(img);
         String savepath ="C:\\Users\\lahiru\\Documents\\NetBeansProjects\\medicalcenter\\web\\doctorImages\\" +File.separator+fileName;
         File fileSaver = new File(savepath);
         img.write(savepath + File.separator);
         
         if (request.getParameter("submit") != null) { 
             try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
             PreparedStatement pst = con.prepareStatement("insert into doctor (uname,doctorName,title,imageName,imagePath,sunday,monday,tuesday,wednesday,thursday,friday,saturday,medicalcentername) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
             pst.setString(1, uname);
             pst.setString(2, dname);
             pst.setString(3, ttle);
             pst.setString(4, fileName);
             pst.setString(5, savepath);
             pst.setString(6, sun);
             pst.setString(7, mon);
             pst.setString(8, tue);
             pst.setString(9, wed);
             pst.setString(10, thu);
             pst.setString(11, fri);
             pst.setString(12, sat);
              pst.setString(13, medicalcentername);

             pst.executeUpdate();
            response.sendRedirect("hostAdd.jsp");
             }catch(Exception e1){
             
             }
         
         }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private String extractFileName(Part img) {
        
           String content=img.getHeader("content-disposition");
       // System.out.println("janitha"+content);
       
        String[] items = content.split(";");
           
        for(String s : items){
            
           if(s.trim().startsWith("filename")){
               
               return s.substring(s.indexOf("=") + 2, s.length() - 1);
               
           }
        }
        return " ";
      //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
