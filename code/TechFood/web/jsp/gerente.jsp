<%@page import="model.Cardapio"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%Cardapio card = new Cardapio();
  ArrayList<Cardapio> cardapio;
  cardapio = card.listaCardapio();%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
    <title>TECHFood! - Pagina do funcionário</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/Imagens\icon.ico">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
  </head>
  <body>
    
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #fe6103; height: 110px; padding-left: 5%;padding-right: 5%; padding-top: 20px; z-index: 2;">
  <a class="navbar-brand" href="<%=request.getContextPath()%>/index.html"><img src="<%=request.getContextPath()%>/Imagens\Logo.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="font-size: 20px; margin-top: 40px;">
    <div class="navbar-nav">
      <a class="nav-item nav-link" href="<%=request.getContextPath()%>/index.html">Home</a>
      <a class="nav-item nav-link" href="./cardapio.jsp">Cardápio</a>
      <a class="nav-item nav-link" href="./login.jsp">Login</a>
    </div>
  </div>
</nav>

<div class="bot">
  <div class="card-deck">
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
      <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/Imagens\user.png" alt="Card image cap">
      <div class="card-body">
        <div class="dropdown-divider"></div>
            <ul class="nav">
                <li class="nav-item dropdown nav-dark">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1.5rem; color: #ffffff">FUNCIONÁRIO</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#" onclick="cadFunc()">Novo</a>
                    <a class="dropdown-item" href="#" onclick="FuncCons()">Consultar</a>
                    <a class="dropdown-item" href="#">Editar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                  </div>
                </li>
            </ul>
        </div>      
    </div>
    
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
      <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/Imagens\cardapio.png" alt="Card image cap">
      <div class="card-body">
        <div class="dropdown-divider"></div>
            <ul class="nav">
                <li class="nav-item dropdown nav-dark">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1.5rem; color: #ffffff">CARDÁPIO</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#" onclick="cadCard()">Novo</a>
                    <a class="dropdown-item" href="#" onclick="consCard('campo', 'cardapio')">Consultar</a>
                    <a class="dropdown-item" href="#">Editar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                  </div>
                </li>
            </ul>
      </div>
      </div>
          <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
      <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/Imagens\mesa.png" alt="Card image cap">
      <div class="card-body">
        <div class="dropdown-divider"></div>
            <ul class="nav">
                <li class="nav-item dropdown nav-dark">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1.5rem; color: #ffffff">RESERVA</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Novo</a>
                    <a class="dropdown-item" href="#">Consultar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Fechar conta</a>
                  </div>
                </li>
            </ul>
        </div>      
    </div>
    
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
      <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/Imagens\mais.png" alt="Card image cap">
      <div class="card-body">
        <div class="dropdown-divider"></div>
            <ul class="nav">
                <li class="nav-item dropdown nav-dark">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1.5rem; color: #ffffff">PEDIDO</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Novo</a>
                    <a class="dropdown-item" href="#">Consultar</a>
                    <a class="dropdown-item" href="#">Editar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                  </div>
                </li>
            </ul>
      </div>
      </div>
    </div>
</div>
      
<div class="bot" id="campo"></div>

<div class="bot" id="cardapio" style="display:none;">
<div class="card-deck" style="margin-top: 350px;">
     <%for(Cardapio cadaPost : cardapio){%>
     <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
       <%if(!cadaPost.getImagemCard().equals("")){%>  
        <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" alt="Card image cap">
       <% }%> 
        <div class="card-body">
          <h4 class="card-title"><%= cadaPost.getNomeCard()%> | ID <%= cadaPost.getIdCard()%></h4>
          <p class="card-text">R$ <%= cadaPost.getPrecoCard()%></p>
        </div>       
       <div class="card-footer" style="background-color: #6a2d08; border-radius: 0;">
          <small class="text-muted"><%= cadaPost.getObsCard()%></small>
        </div>
        <div class="back" style="margin-left: 15%;">       
          <form action="<%=request.getContextPath()%>/apagacardapio" method="POST">
            <input type="hidden" name="id" value="<%= cadaPost.getIdCard()%>">
            <button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Apagar</button>
          </form>
        </div>
      </div>
     <%}%>
   </div>
</div>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="<%=request.getContextPath()%>/js/funcionario.js"></script>
    <script src="<%=request.getContextPath()%>/js/cardapio.js"></script>
    
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.slim.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    
<script>
function FuncCons() {
    document.getElementById("campo").innerHTML = "Heloloeo";
}
</script>
    
  </body>
</html>