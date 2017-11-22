<%@page import="model.Cardapio"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>TECHFood! - Cardápio</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/Imagens\icon.ico">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
  </head>
  <body>
        <%Cardapio card = new Cardapio();
         ArrayList<Cardapio> cardapio;
        cardapio = card.listaCardapio();
        %>
         
         <%for(Cardapio cadaPost : cardapio){%>
            <div>
                <p><%= cadaPost.getNomeCard()%></p>
                <p><%= cadaPost.getObsCard()%></p>
                <p><%= cadaPost.getPrecoCard()%></p>
                <%if(!cadaPost.getImagemCard().equals("")){%>
                    <img src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" width="300" height="300"/>
               <% }%>
            </div>
      <%}%>
  </body>
</html>