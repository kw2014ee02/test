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
public class data_get_3 extends HttpServlet {

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
        String p_sn_val = request.getParameter("para_sn_val");
        String callbackFunc = request.getParameter("jsonp_test");

        //connect db
        Connection connection;
        connection = dbconnection.getConnection();
        JSONArray myarray = new JSONArray();
        PreparedStatement ps = null;

        // String sql_stmt = "SELECT * FROM [proms].[dbo].[data_table_1] WHERE " + p_sn + " = '" + p_sn_val + "'";
        try {
            ps = connection.prepareStatement("SELECT * FROM [proms].[dbo].[data_table_3] WHERE page3_sn = ?");
            ps.setString(1, p_sn_val);
            try (ResultSet rs = ps.executeQuery()) {
                ResultSetMetaData rsmd = rs.getMetaData();

                while (rs.next()) {
                    // The column count starts from 1
                    for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                        JSONObject myjsonobj = new JSONObject();
                        switch (rsmd.getColumnName(i)) {
                            case "page3_ta":
                                myjsonobj.put("Name", "textarea_" + rsmd.getColumnName(i));
                                if (rs.getString(rsmd.getColumnName(i)) != null) {
                                    myjsonobj.put("Value", rs.getString(rsmd.getColumnName(i)).trim());
                                } else {
                                    myjsonobj.put("Value", "");
                                }
                                break;
                            default:
                                if (rsmd.getColumnName(i).contains("tick")) {
                                    myjsonobj.put("Name", "checkbox_" + rsmd.getColumnName(i).substring(0,rsmd.getColumnName(i).lastIndexOf("_")));
                                } else {
                                    myjsonobj.put("Name", "input_" + rsmd.getColumnName(i));
                                }
                                if (rs.getString(rsmd.getColumnName(i)) != null) {
                                    myjsonobj.put("Value", rs.getString(rsmd.getColumnName(i)).trim());
                                } else {
                                    myjsonobj.put("Value", "");
                                }

                        }
                        //myjsonobj.put(rsmd.getColumnName(i), rs.getString(rsmd.getColumnName(i)));
                        // myarray.put(myjsonobj);
                        myarray.put(myjsonobj);
                    }

                    //myjsonobj.put(rsmd.getColumnName(22), rs.getString(rsmd.getColumnName(22)));
                    // myjsonobj.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)));
                }

            }
        } catch (SQLException | JSONException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
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
