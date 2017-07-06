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
public class data_set_3 extends HttpServlet {

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
        String[] p_1 = request.getParameterValues("all_Element_page3[]");
        String p_sn = request.getParameter("para_sn");
        String p_sn_val = request.getParameter("para_sn_val");
        String callbackFunc = request.getParameter("jsonp_test");

        //connect db
        Connection connection;
        connection = dbconnection.getConnection();
        JSONArray myarray = new JSONArray();
        PreparedStatement ps = null;
        String j_data_set_3 = "true";        
        
        String sql_stmt_insert_tmp_1 = "", sql_stmt_insert_tmp_2 = "";
        String sql_stmt_update_tmp_3 = "";


        /* */
        for (String http_para : p_1) {
            String[] result = http_para.split("\\="); 
            
            // prepare for insert stmt
            if (sql_stmt_insert_tmp_1.equals("")) {
                sql_stmt_insert_tmp_1 = sql_stmt_insert_tmp_1 + result[0];
                if (result.length == 1) {
                    sql_stmt_insert_tmp_2 = sql_stmt_insert_tmp_2 + "NULL";
                } else {
                    sql_stmt_insert_tmp_2 = sql_stmt_insert_tmp_2 + "'" + result[1] + "'";
                }
            } else {
                sql_stmt_insert_tmp_1 = sql_stmt_insert_tmp_1 + "," + result[0];
                if (result.length == 1) {
                    sql_stmt_insert_tmp_2 = sql_stmt_insert_tmp_2 + "," + "NULL";
                } else {
                    sql_stmt_insert_tmp_2 = sql_stmt_insert_tmp_2 + "," + "'" + result[1] + "'";
                }

            }
            //end of prepare for insert stmt
                                    
              // prepare for update stmt
              if (sql_stmt_update_tmp_3.trim().equals("")) {
                  sql_stmt_update_tmp_3=sql_stmt_update_tmp_3 + result[0] + "=";
                  if (result.length == 1) {
                      sql_stmt_update_tmp_3=sql_stmt_update_tmp_3 + "NULL";
                  }
                  else{
                      sql_stmt_update_tmp_3=sql_stmt_update_tmp_3 + "'" + result[1] + "'";
                  }
              }else{
                  sql_stmt_update_tmp_3=sql_stmt_update_tmp_3 + "," + result[0] + "=";
                  if (result.length == 1) {
                      sql_stmt_update_tmp_3=sql_stmt_update_tmp_3 + "NULL";
                  }
                  else{
                      sql_stmt_update_tmp_3=sql_stmt_update_tmp_3 + "'" + result[1] + "'";
                  }
                  
              }            
            //end of prepare for update stmt                             
        }                   
        
        String sql_stmt = "IF NOT EXISTS (SELECT * FROM [proms].[dbo].[data_table_3] WHERE " + p_sn + " = '" + p_sn_val + "')\n"
                + " INSERT INTO [proms].[dbo].[data_table_3] (" + p_sn + "," + sql_stmt_insert_tmp_1 +") VALUES ('" + p_sn_val +"'," +  sql_stmt_insert_tmp_2 +")\n"
                + " ELSE\n"
                + " UPDATE [proms].[dbo].[data_table_3] SET " + sql_stmt_update_tmp_3 + " WHERE " + p_sn + " = '"+ p_sn_val + "'";               

        try {
            ps = connection.prepareStatement(sql_stmt);
            ps.executeUpdate();            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            j_data_set_3 = "false";
            System.out.println("error modifying page 3 data: " + e.getMessage());
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
                myjsonobj.put("j_data_set_3", j_data_set_3);
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
