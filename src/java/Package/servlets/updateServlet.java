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
public class updateServlet extends HttpServlet {

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
            String password = request.getParameter("user_password");
            HttpSession s = request.getSession();
            UserDao dao = new UserDao(ConnectionProvider.getConnection());  
            User user = (User)s.getAttribute("CurrentUser");          
            user.setPassword(password);
            user.setLastname(lastname);
            user.setFirstname(firstname);
            out.println("hiii");
            if((dao.checkPassword(password))== true)
            {
                if(dao.updateUser(user) == true)
                {
                    message msg = new message("Profile Has been Updated Successfully","success","alert-success");
                    s.setAttribute("msg", msg);
                    response.sendRedirect("indexHome.jsp");
                    out.println("awesome");
                }
                else
                {
                    message msg = new message("Something Went Wrong...!","error","alert-danger");
                    s.setAttribute("msg", msg);
                    response.sendRedirect("indexHome.jsp");
                    out.println("error");
                }
            }
            else
            {
                    message msg = new message("Your Password didnt meet criteria...!","error","alert-danger");
                    s.setAttribute("msg", msg);
                    response.sendRedirect("indexHome.jsp");
                    out.println("error");
                    
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
