<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
  <head>
    <title>TECHFood! - Cardápio</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/css/Imagens\icon.ico">

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
      <a class="nav-item nav-link active" href="./cardapio.jsp">Cardápio <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="./login.jsp">Login</a>
    </div>
  </div>
</nav>

<div class="bot">
  <div class="card-deck" style="margin-top: 3%;">
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; float: left;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_portuguesa.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza Portuguesa</h4>
        <p class="card-text">Pequena - R$30,00<br>Média - R$40,00<br>Grande - R$50,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Mussarela, presunto, tomate, ovo, cebola e azeitona</small>
      </div>
    </div>
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_4queijos.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza 4 Queijos</h4>
        <p class="card-text">Pequena - R$35,00<br>Média - R$45,00<br>Grande - R$55,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Queijo margherita, queijo provolone, catupiry, queijo gorgonzola, parmesão ralado, cebola roxa e tomate</small>
      </div>
    </div>
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_calabresa.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza Calabresa</h4>
        <p class="card-text">Pequena - R$30,00<br>Média - R$40,00<br>Grande - R$50,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Linguiça calabresa, cebolas e azeitona</small>
      </div>
    </div>
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_file.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza Filé ao Alho</h4>
        <p class="card-text">Pequena - R$35,00<br>Média - R$45,00<br>Grande - R$55,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Filé mignon, alho, vinho tinto, creme de leite, champignon, mussarela e provolone</small>
      </div>
    </div>  
  </div>

<div class="card-deck" style="margin-top: 3%;">
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; float: left;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_portuguesa.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza Portuguesa</h4>
        <p class="card-text">Pequena - R$30,00<br>Média - R$40,00<br>Grande - R$50,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Mussarela, presunto, tomate, ovo, cebola e azeitona</small>
      </div>
    </div>
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_4queijos.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza 4 Queijos</h4>
        <p class="card-text">Pequena - R$35,00<br>Média - R$45,00<br>Grande - R$55,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Queijo margherita, queijo provolone, catupiry, queijo gorgonzola, parmesão ralado, cebola roxa e tomate</small>
      </div>
    </div>
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_calabresa.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza Calabresa</h4>
        <p class="card-text">Pequena - R$30,00<br>Média - R$40,00<br>Grande - R$50,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Linguiça calabresa, cebolas e azeitona</small>
      </div>
    </div>
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0;">
      <img class="card-img-top" src="<%=request.getContextPath()%>/Imagens\pizza_file.jpg" alt="Card image cap">
      <div class="card-body">
        <h4 class="card-title">Pizza Filé ao Alho</h4>
        <p class="card-text">Pequena - R$35,00<br>Média - R$45,00<br>Grande - R$55,00</p>
      </div>
      <div class="card-footer">
        <small class="text-muted">Filé mignon, alho, vinho tinto, creme de leite, champignon, mussarela e provolone</small>
      </div>
    </div>  
  </div>

</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.slim.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
  </body>
</html>