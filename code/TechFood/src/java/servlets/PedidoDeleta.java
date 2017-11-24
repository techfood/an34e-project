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
import model.Pedido;

@WebServlet(name = "pedidodeleta", urlPatterns = {"/pedidodeleta"})
public class PedidoDeleta extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
         Pedido pedido = new Pedido();
        
        boolean ok = false;
        
        try {
          
            pedido.setIdPedido(Integer.parseInt(request.getParameter("idPedido")));
            
            ok = pedido.pedidoDeleta();
            if(ok){
                response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PedidoInsere.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
