<%@page import="java.util.ArrayList"%>
<%@page import="model.Funcionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Restrita</title>
    </head>
    <body>
        <% if(session.getAttribute("cpf")!= null && session.getAttribute("usuario").equals(new Boolean(true))){
                String userLogin = (String) session.getAttribute("cpf");
                Funcionario user = new Funcionario();
                user = user.procura(userLogin);%>
                <p>Nome: <%= user.getNomeFunc()%></p>
                <small><a href="<%=request.getContextPath()%>/logout">logout</a></small>
                <%if(user.getCargoFunc().equalsIgnoreCase("gerente")){%>
                   <form action="<%=request.getContextPath()%>/criacardapio" method = "post" enctype="multipart/form-data">
                        Adicionar Cardapio:<br>
                        Nome:
                        <input type="text" required="required" name="nomeCard"/><br><br>
                        Preço
                        <input type="text" required="required" name="precoCard"/><br><br>
                        Observação:
                        <input type="text" required="required" name="obsCard"><br><br>
                        Imagem:
                        <input type="file" name="file">
                        <input type="submit" value="NOVO">
                    </form>
                <%}%>
        <%}else{%>
 		
        <% } %>    
    </body>
</html>