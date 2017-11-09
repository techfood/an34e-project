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
import model.Postagem;
import utilidades.GeradorNum;

@WebServlet(name = "Postagem", urlPatterns = {"/Postagem"})
public class Post extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        Postagem postagem = new Postagem();
        Part userFile = request.getPart("file");// representa um arquivo
        
        Boolean ok = true;
        
        String oldFileName = Paths.get(userFile.getSubmittedFileName()).getFileName().toString();
        if(!oldFileName.equals("")){
            String fileName = "/img/photo/Arquivo" + GeradorNum.geradorCod()+ oldFileName.substring(oldFileName.lastIndexOf("."));//retira a extensão
            InputStream fileContent = userFile.getInputStream();//upafluxo dedados de entradaem bits

            String images= request.getServletContext().getRealPath("");//pega a pasta raiz do projeto e navega ate a pasta atual PHOLO.
            File file = new File(images, fileName);
            
        
        try(InputStream input = fileContent){
            Files.copy(input, file.toPath());
            postagem.setUsuario_id(Integer.parseInt(request.getParameter("usuario_id"))); 
            postagem.setTitulo(request.getParameter("titulo"));
            postagem.setTexto(request.getParameter("texto"));
            postagem.setImagem(fileName);
            ok = postagem.gravar();
            if (ok){
                response.sendRedirect("./Restrito.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        }else{
            try {
                postagem.setUsuario_id(Integer.parseInt(request.getParameter("usuario_id"))); 
                postagem.setTitulo(request.getParameter("titulo"));
                postagem.setTexto(request.getParameter("texto"));
                postagem.setImagem("");
                ok = postagem.gravar();
                if (ok)
                    response.sendRedirect("./Restrito.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}