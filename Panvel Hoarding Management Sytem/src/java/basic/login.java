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
import java.sql.ResultSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author shark
 */
public class login extends HttpServlet {

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
            String username = request.getParameter("email");
            String password = request.getParameter("password");
            
            try {
            Connection con=connection_class.getConnection();
            
            
            PreparedStatement ps=con.prepareStatement("SELECT * FROM user WHERE username=? and password=?");
                ps.setString(1, username);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                if (username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
                    if(rs.getString("type").equalsIgnoreCase("admin")){
                    HttpSession session = request.getSession(true);
                    session.setAttribute("name", rs.getString("name"));
                    
                    session.setAttribute("uid",Integer.toString(rs.getInt("uid")));
                    session.setAttribute("type",rs.getString("type"));
                   //     ServletContext context = getServletContext();
                    response.sendRedirect("admin/adminhome.jsp");
                    //request.getRequestDispatcher("teacher/teacherhome.jsp").forward(request, response);
                    }
                    if(rs.getString("type").equalsIgnoreCase("User")){
                    HttpSession session = request.getSession(true);
                    session.setAttribute("name", rs.getString("name"));
                    
                    session.setAttribute("uid",Integer.toString(rs.getInt("uid")));
                    session.setAttribute("type",rs.getString("type"));
                   //     ServletContext context = getServletContext();
                    response.sendRedirect("user/userhome.jsp");
                    //request.getRequestDispatcher("teacher/teacherhome.jsp").forward(request, response);
                    }
                    
                }
                
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
