/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

@WebServlet(name = "pedidoinsere", urlPatterns = {"/pedidoinsere"})
public class PedidoInsere extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Pedido pedido = new Pedido();
        
        boolean ok = false;
        
        try {
        
           // pedido.setIdMesa(Integer.parseInt(request.getParameter("idMesa")));
            pedido.setIdCardapio(Integer.parseInt(request.getParameter("idCardapio")));
            pedido.setIdMesa(Integer.parseInt(request.getParameter("idMesa")));
            pedido.setIdFunc(Integer.parseInt(request.getParameter("idFunc")));
            //pedido.setQuantidade(Integer.parseInt(request.getParameter("idMesa")));
            pedido.setObser(request.getParameter("obser"));
            ok = pedido.pedidoInsere();
            if(ok){
                response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(PedidoInsere.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}