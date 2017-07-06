/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.*;
import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.*;

/**
 *
 * @author w15rdknl
 */
public class login extends HttpServlet {

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

        String term_1 = request.getParameter("name");
        String term_2 = request.getParameter("pwd");
        System.out.println("Data from ajax call " + term_1 + term_2);

        JSONArray myarray = new JSONArray();
        String callbackFunc = request.getParameter("jsonp_test");
        String jsonpDataStr = "";

        try {
            LdapContext ctx = login_ad.getConnection(term_1, term_2);
            //String a1 = test_ActiveDirectory.getUser("w15rdaha", ctx).getDistinguishedName();
            String a_DistinguishedName = login_ad.getUser(term_1, ctx).getDistinguishedName();
            String a_UserPrincipal = login_ad.getUser(term_1, ctx).getUserPrincipal();
            String a_UserGroup = login_ad.getUser(term_1, ctx).getUserGroup();
            ctx.close();
            System.out.println("Success!" + a_DistinguishedName + " >>>>" + a_UserPrincipal);

            String[] strarray = a_DistinguishedName.split(",");
            for (String strarray1 : strarray) {
                System.out.println(strarray1);
            }

            String dept_code = "00";
            switch (strarray[1]) {
                case "OU=AC":
                    dept_code = "01";
                    break;
                case "OU=EM":
                    dept_code = "02";
                    break;
                case "OU=Exec":
                    dept_code = "03";
                    break;
                case "OU=GR":
                    dept_code = "04";
                    break;
                case "OU=HR":
                    dept_code = "05";
                    break;
                case "OU=IT":
                    dept_code = "06";
                    break;
                case "OU=Misc Accounts":
                    dept_code = "07";
                    break;
                case "OU=MK":
                    dept_code = "08";
                    break;
                case "OU=OpEx":
                    dept_code = "09";
                    break;
                case "OU=PC":
                    dept_code = "10";
                    break;
                case "OU=PS":
                    dept_code = "11";
                    break;
                case "OU=PU":
                    dept_code = "12";
                    break;
                case "OU=RD":
                    dept_code = "13";
                    break;
                case "OU=TR":
                    dept_code = "14";
                    break;
                case "OU=Vision":
                    dept_code = "15";
                    break;

                default:
                    break;
            }

            // get group info
            String group_search = "NA";
            if (a_UserGroup.contains("WDpromsmaster")) {
                group_search = "WDpromsmaster";
            }
            if (a_UserGroup.contains("WDpromsinkroom")) {
                group_search = "WDpromsinkroom";
            }
            if (a_UserGroup.contains("WDpromscolors")) {
                group_search = "WDpromscolors";
            }
            if (a_UserGroup.contains("WDpromswash")) {
                group_search = "WDpromswash";
            }
            // end get group info

            JSONObject myjsonobj = new JSONObject();
            try {
                myjsonobj.put("ID", term_1);
                myjsonobj.put("NAME", strarray[0].substring(3, strarray[0].length()));
                myjsonobj.put("EMAIL", a_UserPrincipal);
                myjsonobj.put("DEPARTMENT", dept_code);
                myjsonobj.put("GROUP", group_search);
            } catch (JSONException ex) {
                System.out.println(ex.toString());
            }
            myarray.put(myjsonobj);

        } catch (NamingException e) {
            //Failed to authenticate user!
            // e.printStackTrace();

            System.out.println("Authentication faild: " + e.toString());
        }

        jsonpDataStr = myarray.toString();
        try (PrintWriter out = response.getWriter()) {
            out.print(callbackFunc + "(" + jsonpDataStr + ")");
            System.out.println(callbackFunc + "(" + jsonpDataStr + ")");
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
