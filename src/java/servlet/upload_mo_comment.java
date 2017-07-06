/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.dbconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author w15rdknl
 */
public class upload_mo_comment extends HttpServlet {

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
        response.setContentType("application/json");

        // http parameters 
        String fn = request.getParameter("fn");
        String user = request.getParameter("user");
        String callbackFunc = request.getParameter("jsonp_test");
        String j_pdf_mo_comment = "true";

        //connect db
        Connection connection;
        connection = dbconnection.getConnection_mocomment();
        JSONArray myarray = new JSONArray();
        PreparedStatement ps = null;

        /* */
        String sql_stmt = "IF NOT EXISTS (SELECT * FROM [AAD].[dbo].[t_mfg_document_links] WHERE key_value = '" + fn.substring(0, fn.indexOf(".pdf")) + "' "
                + "AND document_type = 'PDF' "
                + "AND document_title = 'PROMS PDF')"
                + "INSERT INTO [AAD].[dbo].[t_mfg_document_links] (key_category,key_value, \n"
                + "document_type,document_title,document_path,user_id,bu_code,virtual_directory) \n"
                + "VALUES ('ITEM'," + "'" + fn.substring(0, fn.indexOf(".pdf")) + "'" + ",'PDF','PROMS PDF','T:\\MO PDF\\" + fn + "','" + user + "','WD','MoComments')";

        
        /*
        String sql_stmt = "IF NOT EXISTS (SELECT * FROM [AAD].[dbo].[t_mfg_document_links] WHERE key_value = '" + fn.substring(0, fn.indexOf(".pdf")) + "' "
                + "AND document_type = 'PDF' "
                + "AND document_title = 'PROMS PDF')"
                + "INSERT INTO [AAD].[dbo].[t_mfg_document_links] (key_category,key_value, \n"
                + "document_type,document_title,document_path,user_id,bu_code,virtual_directory) \n"
                + "VALUES ('ITEM'," + "'" + fn.substring(0, fn.indexOf(".pdf")) + "'" + ",'PDF','PROMS PDF','http://w15proms/bluesheet/pic/" + fn + "','" + user + "','WD','MoComments')";
        */
        try {
            ps = connection.prepareStatement(sql_stmt);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            j_pdf_mo_comment = "false";
            System.out.println("error to Mo Comment data: " + e.getMessage());
        } finally {
            try {
                //connection.setAutoCommit(true);                
                if (ps != null) {
                    ps.close();
                }
                if (connection != null) {
                    connection.close();
                }
                JSONObject myjsonobj = new JSONObject();
                myjsonobj.put("j_pdf_mo_comment", j_pdf_mo_comment);
                myarray.put(myjsonobj);
            } catch (SQLException | JSONException e) {
                System.out.println(e.getMessage());
            }
        }

        String jsonpDataStr = myarray.toString();
        String return_str = callbackFunc + "(" + jsonpDataStr + ")";

        PrintWriter out = response.getWriter();
        out.print(return_str);
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
