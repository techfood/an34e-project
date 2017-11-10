package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "logout", urlPatterns = {"/logout"})
public class Logout extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        request.getSession().setAttribute("usuario", false);
        request.getSession().setAttribute("cpf", null);
        response.sendRedirect("./index.html");
    }
}
