/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import basic.connection_class;
import basic.mailclass;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author shark
 */

@MultipartConfig(maxFileSize = 16177215) 
public class add_hoarding extends HttpServlet {

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
            String lati=request.getParameter("lat");
            String longi=request.getParameter("longi");
            int height=Integer.parseInt(request.getParameter("height"));
            int width=Integer.parseInt(request.getParameter("width"));
            double cost=Double.parseDouble(request.getParameter("cost"));
            int status=Integer.parseInt(request.getParameter("radios"));
            int ward=Integer.parseInt(request.getParameter("ward"));
            String created_by="Admin";
            java.sql.Timestamp modified_on = new java.sql.Timestamp(new java.util.Date().getTime());
            InputStream inputStream = null; 
            // input stream of the upload file
            // obtains the upload file part in this multipart request
            Part filePart = request.getPart("hdimg");
            if (filePart != null) {
            // prints out some information for debugging
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
            }
            
            try {
            
            Connection con=connection_class.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into hoarding(lat,longi,height,width,cost,status,created_by,modified_by,modified_on,ward) values(?,?,?,?,?,?,?,?,?,?)");
            ps.setBigDecimal(1, new BigDecimal(lati));
            ps.setBigDecimal(2, new BigDecimal(longi));
            ps.setInt(3, height);
            ps.setInt(4, width);
            ps.setDouble(5,cost);
            ps.setInt(6, status);
            ps.setString(7, created_by);
            ps.setString(8, created_by);
            ps.setTimestamp(9, modified_on);
            ps.setInt(10, ward);
            int i=ps.executeUpdate();
                    if(i!=0)
                    {
                        PreparedStatement ps1=con.prepareStatement("select username from user where type=?");
                        ps1.setString(1,"User");
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next()) {
                           String msg="Hello User There's  A New Hoarding Added At Ward No."+ward+" ";
                         mailclass mc=new mailclass(rs1.getString("username"), msg);
                        //sesssion.invalidate();
                        }
                        out.println("<script>alert('New Hoarding Added Successfully !!!')\n" + "  window.location.href='admin/add_hoarding.jsp';\n" + "</script>");
                        
                        con.close();
                   
                    }
                    else
                    {
                      out.println("<script>alert('Some Error Occured !!!')\n" + "  window.location.href='admin/add_hoarding.jsp';\n" + "</script>");
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
