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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Adminpc
 */
public class forgotPasswordServlet extends HttpServlet {

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
            String Gmail = request.getParameter("user_email");
            String ucode = request.getParameter("user_code");
           if( ConnectionProvider.getConnection() == null  )
            {
                 response.sendRedirect("errorPage.jsp");
                 
            }
            else
            {
                    UserDao dao = new UserDao(ConnectionProvider.getConnection());
                     User user = new User(Gmail,ucode);
                    if(dao.checkEmailCode(Gmail , ucode))
                    {
                        HttpSession sess = request.getSession();
                        sess.setAttribute("CurrentForgot", user);      
                        user.setEmail(Gmail);
                        request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
                        
                    }
                    else
                    {
                        message msg = new message("Invalid details","error","alert-danger");
                        HttpSession sess = request.getSession();
                        sess.setAttribute("msg", msg);
                        response.sendRedirect("forgotPassword.jsp");
                    }
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