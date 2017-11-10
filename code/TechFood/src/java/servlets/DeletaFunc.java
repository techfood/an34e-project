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

@WebServlet(name = "deletafunc", urlPatterns = {"/deletafunc"})
public class DeletaFunc extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Boolean verift = false; 
        Funcionario func = new Funcionario();
        try {
            verift = func.deleta(Integer.parseInt(request.getParameter("id")));
            if(verift){
                response.sendRedirect("./jsp/restrito.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DeletaFunc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
