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
public class esko extends HttpServlet {

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
        String p_1 = request.getParameter("para_1");
        String callbackFunc = request.getParameter("jsonp_test");

        //connect db
        Connection connection;
        connection = dbconnection.getConnection_esko();

        JSONArray myarray = new JSONArray();
        PreparedStatement ps = null;
        try {
            //ps = connection.prepareStatement("SELECT Name FROM [BSJobs].[admin].[JobParams] WHERE JID = ?");
            /*
            ps = connection.prepareStatement("SELECT Name, Value FROM [BSJobs].[admin].[JobParams] "
                    + "WHERE JID = (SELECT JID FROM [BSJobs].[admin].[Jobs] WHERE OrderId = ?) AND (Name like 'Ink Name %' or Name like 'COMMON INK %') ORDER BY Name ASC");
             */

            ps = connection.prepareStatement("SELECT [BSJobs].[admin].[JobParams].Name, [BSJobs].[admin].[JobParams].Value\n"
                    + "FROM [BSJobs].[admin].[JobParams] \n"
                    + "INNER JOIN [BSJobs].[admin].[Jobs] \n"
                    + "ON [BSJobs].[admin].[JobParams].JID  = [BSJobs].[admin].[Jobs].JID\n"
                    + "WHERE [BSJobs].[admin].[Jobs].OrderId = ?\n"
                    + "AND ([BSJobs].[admin].[JobParams].Name like 'Ink Name %' or [BSJobs].[admin].[JobParams].Name like 'COMMON INK %') "
                    + "ORDER BY [BSJobs].[admin].[JobParams].Name ASC");

            ps.setString(1, p_1);
            try (ResultSet rs = ps.executeQuery()) {
                ResultSetMetaData rsmd = rs.getMetaData();
                while (rs.next()) {

                    //String bb = rs.getString(rsmd.getColumnName(1)).trim().substring(rs.getString(rsmd.getColumnName(1)).trim().length() - 2,rs.getString(rsmd.getColumnName(1)).trim().length());
                    //Integer aa = Integer.parseInt(bb);
                    if (Integer.parseInt(rs.getString(rsmd.getColumnName(1)).trim().substring(rs.getString(rsmd.getColumnName(1)).trim().length() - 2, rs.getString(rsmd.getColumnName(1)).trim().length())) <= 10) {
                        JSONObject myjsonobj = new JSONObject();
                        myjsonobj.put(rsmd.getColumnName(1), rs.getString(rsmd.getColumnName(1)).trim());
                        myjsonobj.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)).trim());
                        myarray.put(myjsonobj);
                    }
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
