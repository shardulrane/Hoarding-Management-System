/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import basic.connection_class;
import basic.mailclass;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author shark
 */
public class regi_half extends HttpServlet {

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
                String app_name = request.getParameter("name");
                String status = request.getParameter("status");
                String address = request.getParameter("address");
                String medium_ad = request.getParameter("n1");
                String type_ad = request.getParameter("n2");
                String type_ad_txt = request.getParameter("f1");
                String applied_opt = request.getParameter("n3");
                String to = request.getParameter("to");
                String from = request.getParameter("from");
                String location_opt = request.getParameter("n4");
                String location = request.getParameter("locNo");
                String tagline = request.getParameter("ad");
                InputStream inputStream = null;
                // input stream of the upload file
                // obtains the upload file part in this multipart request
                Part filePart = request.getPart("im");
                if (filePart != null) {
                    inputStream = filePart.getInputStream();
                }
                String dim_len = request.getParameter("lnfeet");
                String dim_wid = request.getParameter("wtfeet");
                String dim_area = request.getParameter("tafeet");
                String dim_height = request.getParameter("htfeet");
                String street_name = request.getParameter("street1");
                String street_width = request.getParameter("street2");
                String serialno = request.getParameter("serial");
                String numoftree = request.getParameter("trees");
                String cut_opt = request.getParameter("n5");
                String own_name = request.getParameter("landOwner");
                String noc_opt = request.getParameter("n6");
                String article_opt = request.getParameter("n7");

                Connection con = connection_class.getConnection();
                PreparedStatement ps = con.prepareStatement("insert into booking(user_status,address,medium,type_advertise_opt,type_advertisement,Location,Location_no,tagline,advertise_file,dim_len,dim_wid,dim_area,dim_ht,street_name,street_wid,near_serial_no,no_of_trees,cut_tree_opt,name_land_owner,submitted_noc_opt,doc_article19_opt) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,status);
                ps.setString(2,address);
                ps.setString(3,medium_ad);
                ps.setString(4,type_ad);
                ps.setString(5,type_ad_txt);
                ps.setString(6,location_opt);
                ps.setString(7,location);
                ps.setString(8,tagline);
                if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                    ps.setBlob(9, inputStream);
                }
                ps.setString(10,dim_len);
                ps.setString(11,dim_wid);
                ps.setString(12,dim_area);
                ps.setString(13,dim_height);
                ps.setString(14,street_name);
                ps.setString(15,street_width);
                ps.setString(16,serialno);
                ps.setString(17,numoftree);
                ps.setString(18,cut_opt);
                ps.setString(19,own_name);
                ps.setString(20,noc_opt);
                ps.setString(21,article_opt);
                int i=ps.executeUpdate();
                    if(i!=0)
                    {
                     
                        out.println("<script>alert('Saved Successfully !!!')\n" + "  window.location.href='user/documents.html';\n" + "</script>");
                        
                        con.close();
                   
                    }
                    else
                    {
                      out.println("<script>alert('Some Error Occured !!!')\n" + "  window.location.href='user/NewRegForm.html';\n" + "</script>");
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
