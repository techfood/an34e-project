package servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Cardapio;
import utilities.GeradorRandom;

@WebServlet(name = "criacardapio", urlPatterns = {"/criacardapio"})
public class CriaCardapio extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        Cardapio cardapio = new Cardapio();
        Part userFile = request.getPart("file");// representa um arquivo
        
        Boolean ok = true;
        
        String oldFileName = Paths.get(userFile.getSubmittedFileName()).getFileName().toString();
        System.out.println("gegeBVÉDnd´vaisv[asdnv[asdovnEWOBV[dva[eva");
        if(!oldFileName.equals("")){
            String fileName = "/Imagens/Cardapio"+GeradorRandom.geradorCod()+ oldFileName.substring(oldFileName.lastIndexOf("."));//retira a extensão
            InputStream fileContent = userFile.getInputStream();//upafluxo dedados de entradaem bits

            String images= request.getServletContext().getRealPath("");//pega a pasta raiz do projeto e navega ate a pasta atual PHOLO.
            File file = new File(images, fileName);
            
        
        try(InputStream input = fileContent){
            Files.copy(input, file.toPath());
            cardapio.setNomeCard(request.getParameter("nomeCard")); 
            cardapio.setPrecoCard(Float.parseFloat(request.getParameter("precoCard")));
            cardapio.setObsCard(request.getParameter("obsCard"));
            cardapio.setImagemCard(fileName);
            ok = cardapio.gravarCardapio();
            if (ok){
                response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(CriaCardapio.class.getName()).log(Level.SEVERE, null, ex);
        }
        }else{
            try {
                cardapio.setNomeCard(request.getParameter("nomeCard")); 
                cardapio.setPrecoCard(Float.parseFloat(request.getParameter("precoCard")));
                cardapio.setObsCard(request.getParameter("obsCard"));
                cardapio.setImagemCard("");
                ok = cardapio.gravarCardapio();
                if (ok)
                    response.sendRedirect(request.getContextPath()+"/jsp/restrito.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(CriaCardapio.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}