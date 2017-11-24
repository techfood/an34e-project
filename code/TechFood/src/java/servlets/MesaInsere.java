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
import model.Mesa;

@WebServlet(name = "mesainsere", urlPatterns = {"/mesainsere"})
public class MesaInsere extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Mesa mesa = new model.Mesa(Integer.parseInt(request.getParameter("numMesa")),Integer.parseInt(request.getParameter("lugarMesa")));
        
        try {
            if(mesa.mesaInsere(mesa)){
                response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(MesaInsere.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
