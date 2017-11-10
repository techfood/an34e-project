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

@WebServlet(name = "cadastro", urlPatterns = {"/cadastro"})
public class Cadastro extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {

            Funcionario user = new Funcionario(0, request.getParameter("nome"), request.getParameter("cpf"),
                    request.getParameter("cargo"), request.getParameter("senha"),request.getParameter("rua"), request.getParameter("cidade"),
                    request.getParameter("cep"),request.getParameter("fone"));
            
            if (user.procura(user.getCpfFunc()) != null ) {
                
                request.setAttribute("cadastro", false);
                request.getRequestDispatcher("/jsp/errocadastro.jsp").forward(request, response);
            
            } else {
                if (user.gravar(user)) {
                    
                    request.getSession().setAttribute("usuario", true);
                    request.getSession().setAttribute("cpf", user.getCpfFunc());
                    response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
                 
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
