/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Package.servlets;

import Package.dao.UserDao;
import Package.entites.User;
import Package.entites.message;
import Package.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Adminpc
 */

@MultipartConfig
public class RegisterServlet extends HttpServlet {

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
            String firstname = request.getParameter("first_name");
            String lastname = request.getParameter("last_name");
            String username = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            if("Admin".equals(username) || firstname == null ||lastname == null || username == null ||password == null || email == null)
            {
                out.println("error");
            }
            else
            {
                
                User user = new User(firstname,lastname,username ,password , email);
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                
                if((dao.checkPassword(password))== true)
                {
                   
                    if(dao.checkUser(username)== true)
                    {
                        
                        if(dao.checkEmail(email)== true)
                        {  
                           
                            if( dao.saveUser(user)== true)
                            { 
                                
                               HttpSession sess = request.getSession();
                               sess.setAttribute("CurrentUser", user);
                               user.setUsername(username);
                               //response.sendRedirect("indexHome.jsp");//logged
                               out.println(user.getCode());
                            }
                            else
                            {
                                out.println("SaveError");
                            }
                            
                        }
                        else
                        {
                            out.println("emailerror");
                        }
                    }
                    else
                    {
                        out.println("usererror");
                    }
                }
                else
                {
                     out.println("InvalidPassword");  
                }
            }
        }
         catch( Exception e)
        {
            e.printStackTrace();
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
