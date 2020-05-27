/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basic;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shark
 */
public class register extends HttpServlet {

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
            password ps = new password();

            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String pass = ps.encrypt(request.getParameter("password"));
            String type = "User";
            java.sql.Timestamp modified_on = new java.sql.Timestamp(new java.util.Date().getTime());
            
            try {
                Connection con=connection_class.getConnection();
                PreparedStatement pst=con.prepareStatement("insert into user(name,username,type,password,created_on,modified_by,modified_on) values(?,?,?,?,?,?,?)");
                pst.setString(1, username);
                pst.setString(2, email);
                pst.setString(3, type);
                pst.setString(4, pass);
                pst.setTimestamp(5, modified_on);
                pst.setString(6,type);
                pst.setTimestamp(7, modified_on);
                int i=pst.executeUpdate();
                    if(i!=0)
                    {
                        String msg="Hii "+username.toUpperCase()+" Welcome To The Online Hoarding System By Panvel Municipal Corporation.Hope You Enjoy The Services!";
                        mailclass mc=new mailclass(email,msg);
                        con.close();
                   
                        out.println("<script>alert('Registration Successfully !!!')\n" + "  window.location.href='login.html';\n" + "</script>");
                        //sesssion.invalidate();
                        
                        
                    }
                    else
                    {
                      out.println("<script>alert('Some Error Occured !!!')\n" + "  window.location.href='login.html';\n" + "</script>");
                        //sesssion.invalidate();

                        con.close();
                   
                    }
            } catch (Exception e) {
            }

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
        processRequest(request, response);
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
