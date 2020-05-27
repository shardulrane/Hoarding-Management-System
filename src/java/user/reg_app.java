/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import basic.connection_class;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;      
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author shark
 */
@MultipartConfig(maxFileSize = 26177215)


public class reg_app extends HttpServlet {

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
            String app_name = request.getParameter("name");
                String status = request.getParameter("status");
                String address = request.getParameter("address");
                String medium_ad = request.getParameter("n1");
                String type_ad = request.getParameter("n2");
                String type_ad_txt = request.getParameter("f1");
                String applied_opt = request.getParameter("n3");
                String to= request.getParameter("to").toString();
                String from= request.getParameter("from").toString();
                String location_opt = request.getParameter("n4");
                String location = request.getParameter("locNo");
                String tagline = request.getParameter("ad");
                InputStream inputStream1 = null;
                // input stream of the upload file
                // obtains the upload file part in this multipart request
                Part filePart = request.getPart("im");
                if (filePart != null) {
                    inputStream1 = filePart.getInputStream();
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

                
                InputStream inputStream2 = null;
                // obtains the upload file part in this multipart request
                Part filePart2 = request.getPart("pic_app");
                if (filePart2 != null) {
                    inputStream2 = filePart2.getInputStream();
                }
                
                InputStream inputStream3 = null;
                // obtains the upload file part in this multipart request
                Part filePart3 = request.getPart("pic_712");
                if (filePart3 != null) {
                    inputStream3 = filePart3.getInputStream();
                }
                
                InputStream inputStream4 = null;
                // obtains the upload file part in this multipart request
                Part filePart4 = request.getPart("pic_soc_noc");
                if (filePart4 != null) {
                    inputStream4 = filePart4.getInputStream();
                }
                
                InputStream inputStream5 = null;
                // obtains the upload file part in this multipart request
                Part filePart5 = request.getPart("pic_res");
                if (filePart5 != null) {
                    inputStream5 = filePart5.getInputStream();
                }
                
                InputStream inputStream6 = null;
                // obtains the upload file part in this multipart request
                Part filePart6 = request.getPart("pic_light_bill");
                if (filePart6 != null) {
                    inputStream6 = filePart6.getInputStream();
                }
                
                InputStream inputStream7 = null;
                // obtains the upload file part in this multipart request
                Part filePart7 = request.getPart("pic_struct_eng");
                if (filePart7 != null) {
                    inputStream7 = filePart7.getInputStream();
                }
                
                InputStream inputStream8 = null;
                // obtains the upload file part in this multipart request
                Part filePart8 = request.getPart("pic_stability");
                if (filePart8 != null) {
                    inputStream8 = filePart8.getInputStream();
                }
                
                InputStream inputStream9 = null;
                // obtains the upload file part in this multipart request
                Part filePart9 = request.getPart("pic_police_noc");
                if (filePart9 != null) {
                    inputStream9 = filePart9.getInputStream();
                }
                InputStream inputStream10 = null;
                Part filePart10 = request.getPart("pic_loc_plan");
                if (filePart10 != null) {
                    inputStream10 = filePart10.getInputStream();
                }
                InputStream inputStream11 = null;
                Part filePart11 = request.getPart("pic_dtp");
                if (filePart11 != null) {
                    inputStream11 = filePart11.getInputStream();
                }
                InputStream inputStream12 = null;
                Part filePart12 = request.getPart("pic_undertaking_1");
                if (filePart12 != null) {
                    inputStream12 = filePart12.getInputStream();
                }
                
                InputStream inputStream13 = null;
                Part filePart13 = request.getPart("pic_undertaking_2");
                if (filePart13 != null) {
                    inputStream13 = filePart13.getInputStream();
                }
                
                InputStream inputStream14 = null;
                Part filePart14 = request.getPart("pic_insurance");
                if (filePart14 != null) {
                    inputStream14 = filePart14.getInputStream();
                }
                InputStream inputStream15 = null;
                Part filePart15 = request.getPart("pic_ad_size");
                if (filePart15 != null) {
                    inputStream15 = filePart15.getInputStream();
                }
                
                InputStream inputStream16 = null;
                Part filePart16 = request.getPart("pic_rent_arg");
                if (filePart16 != null) {
                    inputStream16 = filePart16.getInputStream();
                }
                
                
                
                String app_opt=request.getParameter("app_opt");
                String land=request.getParameter("land");
                String society_noc=request.getParameter("society_noc");
                String resolution=request.getParameter("resolution");
                String light_bill=request.getParameter("light_bill");
                String cert_of_struct_eng=request.getParameter("cert_of_struct_eng");
                String stab_cert=request.getParameter("stab_cert");
                String traf_noc=request.getParameter("traf_noc");
                String location_plan_opt=request.getParameter("location_plan_opt");
                String site_dtp=request.getParameter("site_dtp");
                String under_1=request.getParameter("under_1");
                String under_2=request.getParameter("under_2");
                String insurance_ad=request.getParameter("insurance_ad");
                String size_ad=request.getParameter("size_ad");
                String rent_ag=request.getParameter("rent_ag");
                String phone_no=request.getParameter("phone_no");
                String email_id=request.getParameter("email_id");
            try {    
                Connection con = connection_class.getConnection();
            
                PreparedStatement ps = con.prepareStatement("insert into booking(uid, hid, start_date, end_date, status,created_by, created_on, modified_by, modified_on, user_status, address,medium,type_advertise_opt,type_advertisement,Location,Location_no,tagline,advertise_file,dim_len,dim_wid,dim_area,dim_ht,street_name,street_wid,near_serial_no,no_of_trees,cut_tree_opt,name_land_owner,submited_noc_opt,doc_article19_opt,form_app,owner_land,society_noc,resol_soc,soc_light_bill,cert_struct_engg,stability_cert,traffic_pol_noc,loc_plan,site_dtp,undertaking1,undertaking2,adv_ins,adv_size,ren_agree,phone_no,email_id,total_cost) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                int uid = Integer.parseInt((String) request.getSession().getAttribute("uid"));
                int hid=Integer.parseInt(request.getParameter("hor_id"));
                ps.setInt(1,uid);
                ps.setInt(2,hid);
                ps.setString(3,from);
                ps.setString(4,to);
               ps.setString(5,status);
                java.sql.Timestamp modified_on = new java.sql.Timestamp(new java.util.Date().getTime());
                ps.setString(6,"Admin");
                ps.setTimestamp(7,modified_on);
                ps.setString(8,"Admin");
                ps.setTimestamp(9,modified_on);
                ps.setString(10, status);
                ps.setString(11, address);
                ps.setString(12,medium_ad);
                ps.setString(13,type_ad);
                ps.setString(14,type_ad_txt);
                ps.setString(15,location_opt);
                ps.setString(16, location);
                ps.setString(17, tagline);
                ps.setBlob(18,inputStream1);
                ps.setString(19,dim_len);
                ps.setString(20,dim_wid);
                ps.setString(21,dim_area);
                ps.setString(22,dim_height);
                ps.setString(23,street_name);
                ps.setString(24,street_width);
                ps.setString(25,"ABC");
                ps.setString(26,numoftree);
                ps.setString(27,cut_opt);
                ps.setString(28,own_name);
                ps.setString(29,noc_opt);
                ps.setString(30,article_opt);
                ps.setBlob(31, inputStream2);
                ps.setBlob(32, inputStream3);
                ps.setBlob(33, inputStream4);
                ps.setBlob(34, inputStream5);
                ps.setBlob(35, inputStream6);
                ps.setBlob(36, inputStream7);
                ps.setBlob(37, inputStream8);
                ps.setBlob(38, inputStream9);
                ps.setBlob(39, inputStream10);
                ps.setBlob(40, inputStream11);
                ps.setBlob(41, inputStream12);
                ps.setBlob(42, inputStream13);
                ps.setBlob(43, inputStream14);
                ps.setBlob(44, inputStream15);
                ps.setBlob(45, inputStream16);
                ps.setString(46,phone_no);
                ps.setString(47, email_id);
                ps.setInt(48, Integer.parseInt(request.getParameter("cost")));
                
                   int i=ps.executeUpdate();
                    if(i!=0)
                    {
                        ResultSet keys = ps.getGeneratedKeys();
                        if(keys.next())
                        {
                           int id = keys.getInt(1);
                           PreparedStatement ps1 = con.prepareStatement("insert into book_status(bookid,uid,status) values(?,?,?)");
                           ps1.setInt(1, id);
                           ps1.setInt(2, uid);
                           ps1.setInt(3,0);
                           int  j=ps1.executeUpdate();
                           if(j!=0){
                           
                
                        out.println("<script>alert('Application Form Submited Successfully !!!')\n" + "  window.location.href='user/userhome.jsp';\n" + "</script>");
                        
                        con.close();
                           }
                   }       
                        
                    }
                    else
                    {
                      out.println("<script>alert('Some Error Occured !!!')\n" + "  window.location.href='user/userhome.jsp';\n" + "</script>");
                        //sesssion.invalidate();

                        con.close();
                   
                    }
            
            
            } catch (SQLException ex) {
                Logger.getLogger(reg_app.class.getName()).log(Level.SEVERE, null, ex);
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
