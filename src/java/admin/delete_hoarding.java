/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import basic.connection_class;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shark
 */
public class delete_hoarding extends HttpServlet {

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
            int hid = Integer.parseInt(request.getParameter("hid"));
            String lati = request.getParameter("lat");
            String longi = request.getParameter("long");
            int height = Integer.parseInt(request.getParameter("ht"));
            int width = Integer.parseInt(request.getParameter("wt"));
            double cost = Double.parseDouble(request.getParameter("cst"));
            int status = Integer.parseInt(request.getParameter("radios"));
            int ward = Integer.parseInt(request.getParameter("wd"));
            String created_by = "Admin";
            java.sql.Timestamp modified_on = new java.sql.Timestamp(new java.util.Date().getTime());
            // input stream of the upload file
            // obtains the upload file part in this multipart request
            try {

                Connection con = connection_class.getConnection();
                PreparedStatement ps = con.prepareStatement("update hoarding set status=? where hid=?");
                ps.setInt(1,5);
                ps.setInt(2, hid);
                int i = ps.executeUpdate();
                if (i != 0) {
                    out.println("<script>alert('Hoarding Deleted Successfully !!!')\n" + "  window.location.href='admin/delete_hoarding.jsp';\n" + "</script>");

                    con.close();

                } else {
                    out.println("<script>alert('Some Error Occured !!!')\n" + "  window.location.href='admin/delete_hoarding.jsp';\n" + "</script>");
                    //sesssion.invalidate();

                    con.close();

                }

            } catch (SQLException ex) {
                Logger.getLogger(add_hoarding.class.getName()).log(Level.SEVERE, null, ex);
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
