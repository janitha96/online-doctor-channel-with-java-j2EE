/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.beans.Statement;
import java.io.File;
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
import javax.servlet.http.Part;
import java.lang.*;
import java.sql.ResultSet;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.annotation.MultipartConfig;


/**
 *
 * @author lahiru
 */
@WebServlet(urlPatterns = {"/signupInc"})
//@WebServlet("/signupInc")
@MultipartConfig(fileSizeThreshold = 1024 *1024 *2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50 )
public class signupInc extends HttpServlet {

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
            out.println("<title>Servlet signupInc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signupInc at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("fullname");
        String uname = request.getParameter("uname");
        String mdname = request.getParameter("mdname");
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");
        String pwd_confirm = request.getParameter("pwd_confirm");
        String add = request.getParameter("add");
        String number = request.getParameter("number");
        String distric = request.getParameter("distric");
        Double lat = Double.parseDouble(request.getParameter("lat"));
        Double lon = Double.parseDouble(request.getParameter("lon"));
  
        Part img =request.getPart("file");
        String fileName = extractFileName(img);
         String savepath ="C:\\Users\\lahiru\\Documents\\NetBeansProjects\\medicalcenter\\web\\images\\" +File.separator+fileName;
         File fileSaver = new File(savepath);
         img.write(savepath + File.separator);
        
        if (request.getParameter("submitsignup") != null) { 
            
            try{
               
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalcenter","root","");
              String select = "select * from signup where email = ? ";
             PreparedStatement pp = con.prepareStatement(select);
             pp.setString(1, email);
             ResultSet rs = pp.executeQuery();
             if(rs.next()){
             out.print("error");
             }else{
                 if(pwd.equals(pwd_confirm)){
                      PreparedStatement pst = con.prepareStatement("insert into signup (fullName,uname,mdname,email,address,distric,number,pwd,lat,lon,fileName,savePath) values (?,?,?,?,?,?,?,?,?,?,?,?)");
             pst.setString(1, name);
             pst.setString(2, uname);
             pst.setString(3, mdname);
             pst.setString(4, email);
             pst.setString(5, add);
             pst.setString(6, distric);
             pst.setString(7, number);
             pst.setString(8, pwd);
             pst.setDouble(9, lat);
             pst.setDouble(10, lon);
             pst.setString(11, fileName);
             pst.setString(12, savepath);
             pst.executeUpdate();
            response.sendRedirect("login.jsp");
                 
                 }else{
                 out.print("error1");
                 }
            
             }
           
             
            
             
            }catch(Exception e1){
            out.println(e1);
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
//        System.out.println("janitha"+content);
       
        String[] items = content.split(";");
           
        for(String s : items){
            
           if(s.trim().startsWith("filename")){
               
               return s.substring(s.indexOf("=") + 2, s.length() - 1);
               
           }
        }
        return " ";
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
