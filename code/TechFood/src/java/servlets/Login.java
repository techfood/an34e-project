package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Funcionario;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Funcionario user = new Funcionario(request.getParameter("login"),request.getParameter("senha"));
            
            if(user.getCpfFunc().equals("") || user.getSenhaFunc().equals("")){
                
                request.setAttribute("login", true);
                request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
                
            }else{
               if(user.autentica(user)){
                    request.getSession().setAttribute("usuario", true);
                    request.getSession().setAttribute("cpf", user.getCpfFunc());
                    response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
               }else{
                    response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                    request.setAttribute("login", false);
                    request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
               }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
