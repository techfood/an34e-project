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
      
      <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #fe6103; height: 110px; padding-left: 5%;padding-right: 5%; padding-top: 20px; z-index: 2;">
            <a class="navbar-brand" href="./index.html"><img src="<%=request.getContextPath()%>/Imagens\Logo.png"></a>
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
                
      <%Cardapio card = new Cardapio();
        ArrayList<Cardapio> cardapio;
        cardapio = card.listaCardapio();
        %>
                
  <div class="bot">
   <div class="card-deck">
     <%for(Cardapio cadaPost : cardapio){%>
     <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
       <%if(!cadaPost.getImagemCard().equals("")){%>  
        <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" alt="Card image cap">
       <% }%> 
        <div class="card-body">
          <h4 class="card-title"><%= cadaPost.getNomeCard()%></h4>
          <p class="card-text">R$ <%= cadaPost.getPrecoCard()%></p>
        </div>
       
       <div class="card-footer" style="background-color: #6a2d08; border-radius: 0;">
          <small class="text-muted"><%= cadaPost.getObsCard()%></small>
        </div>
      </div> 
     <%}%>
   </div>           
  </div>   
   
   <div class="footer-bottom">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="copyright">
					© 2017, Techfood, All rights reserved
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="design">
					 <a href="./index.html">Mazzano </a> |  <a target="_blank" href="#">Web Design & Development by Techfood</a>
				</div>
			</div>
		</div>
</div>
         
     <%--<%Cardapio card = new Cardapio();
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
      <%}%> --%>
  </body>
</html>