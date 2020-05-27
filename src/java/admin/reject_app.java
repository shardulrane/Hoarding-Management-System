/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import basic.connection_class;
import basic.mailclass;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shark
 */
public class reject_app extends HttpServlet {

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
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                int uid = Integer.parseInt(request.getParameter("uid"));
                Connection con = connection_class.getConnection();
                PreparedStatement ps = con.prepareStatement("update book_status set status=? where bookid=?");
                ps.setInt(1, 2);
                ps.setInt(2, id);
                int i = ps.executeUpdate();

                if (i != 0) {
                    PreparedStatement ps1 = con.prepareStatement("select username from user where uid=?");
                    ps1.setInt(1, uid);
                    ResultSet rs1 = ps1.executeQuery();
                    if (rs1.next()) {
                        String msg = "Hello User Your Application No:" + id + " For Hoarding Is Rejected By Admin.";
                        mailclass mc = new mailclass(rs1.getString("username"), msg);
                        //sesssion.invalidate();
                    }
                    out.println("<script>alert('Rejected And Notified !!!')\n" + "  window.location.href='admin/view_application.jsp';\n" + "</script>");

                    con.close();

                } else {
                    out.println("<script>alert('Some Error Occured !!!')\n" + "  window.location.href='admin/view_application.jsp';\n" + "</script>");
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
