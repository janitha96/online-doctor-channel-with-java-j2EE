/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lahiru
 */
@WebServlet(urlPatterns = {"/editdoc"})
public class editdoc extends HttpServlet {

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
            out.println("<title>Servlet editdoc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editdoc at " + request.getContextPath() + "</h1>");
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
     //   processRequest(request, response);
      PrintWriter out = response.getWriter();
      
              String dcode = request.getParameter("dcode");
        String sun = request.getParameter("sun");
        String mon = request.getParameter("mon");       
        String tue = request.getParameter("tue");
        String wed = request.getParameter("wed");
        String thu = request.getParameter("thu");
        String fri = request.getParameter("fri");       
        String sat = request.getParameter("sat");
        
                 if (request.getParameter("submit") != null) { 
             try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
             PreparedStatement pst = con.prepareStatement("update doctor set sunday=?,monday=?,tuesday=?,wednesday=?,thursday=?,friday=?,saturday=? where id=?");
            
             pst.setString(1, sun);
             pst.setString(2, mon);
             pst.setString(3, tue);
             pst.setString(4, wed);
             pst.setString(5, thu);
             pst.setString(6, fri);
             pst.setString(7, sat);
             pst.setString(8, dcode);
             pst.executeUpdate();
            response.sendRedirect("editdoctor.jsp");
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

}
