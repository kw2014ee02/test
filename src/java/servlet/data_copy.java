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
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class data_copy extends HttpServlet {

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
        String p_sn_source = request.getParameter("para_sn_source");
        String p_sn_new = request.getParameter("para_sn_new");
        String callbackFunc = request.getParameter("jsonp_test");

        //connect db
        Connection connection;
        connection = dbconnection.getConnection();
        PreparedStatement ps_tbl_1 = null, ps_tbl_2 = null, ps_tbl_3 = null;
        PreparedStatement ps_tbl_col_1 = null, ps_tbl_col_2 = null, ps_tbl_col_3 = null;

        String j_data_copy = "none";

        //p_sn_source = "NF2001-001401E";
        //p_sn_new = "test";
        /*
        String sql_stmt = "IF NOT EXISTS (SELECT * FROM [proms].[dbo].[data_table_1] WHERE page1_sn = ?)"
                + " INSERT INTO [proms].[dbo].[data_table_1] (?,? ) SELECT ( ? ) FROM [proms].[dbo].[data_table_1] WHERE page1_sn = ?";
         */
        //String sql_stmt = "INSERT INTO [proms].[dbo].[data_table_1] (?,?) SELECT (?) FROM [proms].[dbo].[data_table_1] WHERE page1_sn = ?";
        try {
            // table 1
            ps_tbl_col_1 = connection.prepareStatement("SELECT TOP 1 * FROM [proms].[dbo].[data_table_1]");
            ResultSet rs_columns_tbl_1 = ps_tbl_col_1.executeQuery();
            ResultSetMetaData rsmd_columns_tbl_1 = rs_columns_tbl_1.getMetaData();
            String sql_columns_tbl_1 = null;
            for (int i = 1; i <= rsmd_columns_tbl_1.getColumnCount(); i++) {
                switch (rsmd_columns_tbl_1.getColumnName(i)) {
                    case "page1_sn":
                        break;
                    default:
                        if (sql_columns_tbl_1 == null) {
                            sql_columns_tbl_1 = rsmd_columns_tbl_1.getColumnName(i);
                        } else {
                            sql_columns_tbl_1 = sql_columns_tbl_1 + "," + rsmd_columns_tbl_1.getColumnName(i);
                        }
                }
            }
            //String tmp_sql = "INSERT INTO [proms].[dbo].[data_table_1] (" + "page1_sn," + sql_columns + ") SELECT " + "\'" + p_sn_new + "\'," + sql_columns + " FROM [proms].[dbo].[data_table_1] WHERE page1_sn = ?";
            ps_tbl_1 = connection.prepareStatement("INSERT INTO [proms].[dbo].[data_table_1] (" + "page1_sn," + sql_columns_tbl_1 + ") SELECT " + "\'" + p_sn_new + "\'," + sql_columns_tbl_1 + " FROM [proms].[dbo].[data_table_1] WHERE page1_sn = ?");
            ps_tbl_1.setString(1, p_sn_source);

            // table 2
            ps_tbl_col_2 = connection.prepareStatement("SELECT TOP 1 * FROM [proms].[dbo].[data_table_2]");
            ResultSet rs_columns_tbl_2 = ps_tbl_col_2.executeQuery();
            ResultSetMetaData rsmd_columns_tbl_2 = rs_columns_tbl_2.getMetaData();
            String sql_columns_tbl_2 = null;
            for (int i = 1; i <= rsmd_columns_tbl_2.getColumnCount(); i++) {
                switch (rsmd_columns_tbl_2.getColumnName(i)) {
                    case "page2_sn":
                        break;
                    default:
                        if (sql_columns_tbl_2 == null) {
                            sql_columns_tbl_2 = rsmd_columns_tbl_2.getColumnName(i);
                        } else {
                            sql_columns_tbl_2 = sql_columns_tbl_2 + "," + rsmd_columns_tbl_2.getColumnName(i);
                        }
                }
            }
            ps_tbl_2 = connection.prepareStatement("INSERT INTO [proms].[dbo].[data_table_2] (" + "page2_sn," + sql_columns_tbl_2 + ") SELECT " + "\'" + p_sn_new + "\'," + sql_columns_tbl_2 + " FROM [proms].[dbo].[data_table_2] WHERE page2_sn = ?");
            ps_tbl_2.setString(1, p_sn_source);

            // table 3
            ps_tbl_col_3 = connection.prepareStatement("SELECT TOP 1 * FROM [proms].[dbo].[data_table_3]");
            ResultSet rs_columns_tbl_3 = ps_tbl_col_3.executeQuery();
            ResultSetMetaData rsmd_columns_tbl_3 = rs_columns_tbl_3.getMetaData();
            String sql_columns_tbl_3 = null;
            for (int i = 1; i <= rsmd_columns_tbl_3.getColumnCount(); i++) {
                switch (rsmd_columns_tbl_3.getColumnName(i)) {
                    case "page3_sn":
                        break;
                    default:
                        if (sql_columns_tbl_3 == null) {
                            sql_columns_tbl_3 = rsmd_columns_tbl_3.getColumnName(i);
                        } else {
                            sql_columns_tbl_3 = sql_columns_tbl_3 + "," + rsmd_columns_tbl_3.getColumnName(i);
                        }
                }
            }
            ps_tbl_3 = connection.prepareStatement("INSERT INTO [proms].[dbo].[data_table_3] (" + "page3_sn," + sql_columns_tbl_3 + ") SELECT " + "\'" + p_sn_new + "\'," + sql_columns_tbl_3 + " FROM [proms].[dbo].[data_table_3] WHERE page3_sn = ?");
            ps_tbl_3.setString(1, p_sn_source);

            connection.setAutoCommit(false);
            ps_tbl_1.executeUpdate();
            ps_tbl_2.executeUpdate();
            ps_tbl_3.executeUpdate();
            connection.commit();

        } catch (SQLException e) {
            //int gg = e.getErrorCode();
            switch (e.getErrorCode()) {
                case 2627:
                    j_data_copy = "duplicate";
                    break;
                default:
                    j_data_copy = e.toString();

            }
            System.out.println(e.getMessage());
            try {
                connection.rollback();
            } catch (SQLException ex) {
                j_data_copy = j_data_copy + ex.toString();
            }
        } finally {
            try {
                connection.setAutoCommit(true);
                if (ps_tbl_col_1 != null) {
                    ps_tbl_col_1.close();
                }
                if (ps_tbl_1 != null) {
                    ps_tbl_1.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                j_data_copy = j_data_copy + e;
                System.out.println(e.getMessage());
            }
        }

        JSONObject myjsonobj = new JSONObject();
        try {
            myjsonobj.put("err", j_data_copy);
        } catch (JSONException e) {
            System.out.println(e.getMessage());
        }
        JSONArray myarray = new JSONArray();
        myarray.put(myjsonobj);

        //String jsonpDataStr = myarray.toString();
        String return_str = callbackFunc + "(" + myarray.toString() + ")";
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
