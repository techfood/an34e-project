<%@page import="model.Cardapio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Funcionario"%>
<%@page import="model.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%Cardapio card = new Cardapio();
  ArrayList<Cardapio> cardapio;
  cardapio = card.listaCardapio();%>
  
<%Pedido pedi = new Pedido();
  ArrayList<Pedido> pedido;
  pedido = pedi.pedidoLista();%>

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
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
  </head>
  <body>
      <%if(session.getAttribute("cpf")!= null && session.getAttribute("usuario").equals(new Boolean(true))){
                String userLogin = (String) session.getAttribute("cpf");
                Funcionario user = new Funcionario();
                user = user.procura(userLogin);%>
                    
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
    <a class="nav-item nav-link"><%= user.getNomeFunc()%></a>
    <a class="nav-item nav-link" href="<%=request.getContextPath()%>/logout" style="float: right"><img src="<%=request.getContextPath()%>/Imagens\sair.png" alt="Card image cap"></a>
    </div>
</nav>
      

                
      
<div class="bot">
  <div class="card-deck">
      
    <%if(user.getCargoFunc().equalsIgnoreCase("gerente")){%>
      
    <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
      <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/Imagens\user.png" alt="Card image cap">
      <div class="card-body">
        <div class="dropdown-divider"></div>
            <ul class="nav">
                <li class="nav-item dropdown nav-dark">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1.5rem; color: #ffffff">FUNCIONÁRIO</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#" onclick="cadFunc()">Novo</a>
                    <a class="dropdown-item" href="#">Consultar</a>
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
                    <a class="dropdown-item" href="#" onclick="consCardG()">Consultar</a>
                    <a class="dropdown-item" href="#">Editar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                  </div>
                </li>
            </ul>
      </div>
      </div>
      
      <%}else{%>
      
      <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
      <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/Imagens\cardapio.png" alt="Card image cap">
      <div class="card-body">
        <div class="dropdown-divider"></div>
            <ul class="nav">
                <li class="nav-item dropdown nav-dark">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: 1.5rem; color: #ffffff">CARDÁPIO</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#" onclick="consCard()">Consultar</a>
                  </div>
                </li>
            </ul>
      </div>
      </div>
    <%}%>  
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
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#" onclick="cadMesa()">Cadastrar mesa</a>
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
                    <a class="dropdown-item" href="#" onclick="cadPed()">Novo</a>
                    <a class="dropdown-item" href="#" onclick="consPed()">Consultar</a>
                    <a class="dropdown-item" href="#">Editar</a>
                    <a class="dropdown-item" href="#">Excluir</a>
                  </div>
                </li>
            </ul>
      </div>
      </div>
    </div> 
      <div class="bot" id="campo" style="margin-left: 0; margin-right: 0; width: 100%;"></div> 
</div>
     

    
<%}else{%>
        ERRO! Usuário não logado<br>
  <a href="./login.jsp">Efetuar login<span class="sr-only">(current)</span></a>
        <% } %> 
<%--
<div class="bot">
   <div class="card-deck">
     <%for(Cardapio cadaPost : cardapio){%>
     <div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">
       <%if(!cadaPost.getImagemCard().equals("")){%>  
        <img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" alt="Card image cap">
       <%}%> 
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
  </div>  --%> 



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    

    
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.slim.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    
    <script>
        var funcCad = '<div class="back">'+   
                        '<h2 style="color: #ffffff">Cadastrar funcionário</h2>'+ 
                        '<form action="<%=request.getContextPath()%>/cadastro" method="POST">'+
                            '<div class="form-group">'+
                                '<label for="nome" name="nome">Nome</label>'+
                                '<input type="text" class="form-control" pattern="[a-zA-Z\s]+$" required name="nome" placeholder="Digite o nome ">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="cpf" name="cpf">CPF</label>'+
                                '<input type="text" class="form-control" pattern="[0-9]+$" required name="cpf" placeholder="Digite o CPF">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="cargo" name="cargo">Cargo</label>'+
                                '<input type="text" class="form-control" pattern="[a-z\s]+$" required name="cargo" placeholder="Digite o cargo do funcionário">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="password" name="senha">Senha</label>'+
                                '<input type="password" class="form-control" required name="senha" placeholder="Digite a senha">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="rua" name="rua">Endereço</label>'+
                                '<input type="text" class="form-control" required name="rua" placeholder="Digite o endereço">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="cidade" name="cidade">Cidade</label>'+
                                '<input type="text" class="form-control" pattern="[a-zA-Z\s]+$" required name="cidade" placeholder="Digite a cidade">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="cep" name="cep">CEP</label>'+
                                '<input type="text" class="form-control" pattern="[0-9]+$" required name="cep" placeholder="Digite o CEP ">'+
                            '</div>'+
                            '<div class="form-group">'+
                                '<label for="fone" name="fone">Telefone</label>'+
                                '<input type="text" class="form-control" pattern="[0-9]+$" required name="fone" placeholder="Digite o telefone">'+
                            '</div>'+
                            '<div class="form-check"></div>'+
                            '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>'+
                        '</form>'+ 
                    '</div>';
            
        var cardCad = '<div class="back">'+
    '<h2 style="color: #ffffff">Cadastrar cardápio</h2>'+
        '<form action="<%=request.getContextPath()%>/criacardapio" method = "POST" enctype="multipart/form-data">'+
            '<div class="form-group">'+
                '<label for="nomeCard" name="nomeCard">Nome</label>'+
                '<input type="text" class="form-control" name="nomeCard" placeholder="Digite o nome do produto">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="precoCard" name="precoCard">Preço</label>'+
                '<input type="text" class="form-control" name="precoCard" placeholder="Digite o preço do produto">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="obsCard" name="obsCard">Observação</label>'+
                '<input type="text" class="form-control" name="obsCard" placeholder="Digite a observação do produto">'+
            '</div>'+
            '<div class="form-group">'+
               '<label for="file" name="file">Imagem</label>'+
                <%-- '<input type="file" class="form-control-file" id="exampleFormControlFile1">'+--%>
                 '<div id="teste">'+
                
                '<input type="file" multiple="multiple" id="upload" name="file"/>'+
                '<button type="submit" class="btn btn-primary" id="botao" style="background-color: #fe6103; border: none">Selecionar arquivo</button>'+
                '<label for="file" id="texto" name="file">Nenhum arquivo selecionado</label>'+
            '</div>'+
            '</div>'+
            '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>'+
        '</form>'+
'</div>'; 

        var cardConsG = '<div class="card-deck">'+
        '<%for(Cardapio cadaPost : cardapio){%>'+
     '<div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">'+
       '<%if(!cadaPost.getImagemCard().equals("")){%>'+  
        '<img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" alt="Card image cap">'+
       '<% }%>'+ 
        '<div class="card-body">'+
          '<h4 class="card-title"><%= cadaPost.getNomeCard()%></h4>'+
          '<p class="card-text">R$ <%= cadaPost.getPrecoCard()%></p>'+
        '</div>'+       
       '<div class="card-footer" style="background-color: #6a2d08; border-radius: 0;">'+
          '<small class="text-muted"><%= cadaPost.getObsCard()%></small>'+
        '</div>'+
        '<div class="back" style="margin-left: 15%;">'+       
            '<form action="<%=request.getContextPath()%>/apagacardapio" method="POST">'+
               '<input type="hidden" name="id" value="<%= cadaPost.getIdCard()%>">'+
               '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Apagar</button>'+
            '</form>'+
        '</div>'+
      '</div>'+ 
     '<%}%>'+         
        '</div>';

        var cardCons = '<div class="card-deck">'+
        '<%for(Cardapio cadaPost : cardapio){%>'+
     '<div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">'+
       '<%if(!cadaPost.getImagemCard().equals("")){%>'+  
        '<img class="card-img-top" style="border-radius: 0;" src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" alt="Card image cap">'+
       '<% }%>'+ 
        '<div class="card-body">'+
          '<h4 class="card-title"><%= cadaPost.getNomeCard()%></h4>'+
          '<p class="card-text">R$ <%= cadaPost.getPrecoCard()%></p>'+
        '</div>'+       
       '<div class="card-footer" style="background-color: #6a2d08; border-radius: 0;">'+
          '<small class="text-muted"><%= cadaPost.getObsCard()%></small>'+
        '</div>'+
      '</div>'+ 
     '<%}%>'+         
        '</div>';

        var pedCad = '<div class="back">'+
    '<h2 style="color: #ffffff">Realizar pedido</h2>'+
        '<form action="<%=request.getContextPath()%>/pedidoinsere" method="post">'+
            '<div class="form-group">'+
                '<label for="idMesa" name="lidMesa">Mesa</label>'+
                '<input type="text" class="form-control" name="idMesa" placeholder="Digite o número da mesa">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="idCardapio" name="lidCardapio">Produto</label>'+
                '<input type="text" class="form-control" name="idCardapio" placeholder="Digite o código do produto">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="idFunc" name="lidFunc">Funcionário</label>'+
                '<input type="text" class="form-control" name="idFunc" placeholder="Digite o cpf do funcionário">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="obser" name="lobser">Observação</label>'+
                '<input type="text" class="form-control" name="obser" placeholder="Digite a observação do pedido">'+
            '</div>'+
            '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Pedir</button>'+
        '</form>'+
'</div>';

        var pedCons = '<div class="card-deck">'+
        '<%for(Pedido cadaPedido : pedido){%>'+
     '<div class="card" style="background-color: #fe6103; border: 0; border-radius: 0; min-width: 22.55%; margin-top: 3%;">'+ 
        '<div class="card-body">'+
          '<h4 class="card-title">Produto <%= cadaPedido.getIdCardapio()%> | Pedido nº <%= cadaPedido.getIdPedido()%></h4>'+
          '<p class="card-text">Mesa <%= cadaPedido.getIdMesa()%></p>'+
          '<p class="card-text">Funcionario <%= cadaPedido.getIdFunc()%></p>'+
        '</div>'+       
       '<div class="card-footer" style="background-color: #6a2d08; border-radius: 0;">'+
          '<small class="text-muted"><%= cadaPedido.getObser()%></small>'+
        '</div>'+
        '<div class="back" style="margin-left: 15%;">'+       
            '<form action="<%=request.getContextPath()%>/pedidodeleta" method="post">'+
               '<input type="hidden" name="idPedido" value="<%= cadaPedido.getIdPedido()%>">'+
               '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cancelar</button>'+
            '</form>'+
        '</div>'+
      '</div>'+
      '<%}%>'+
    '</div>';

        var mesaCad = '<div class="back">'+
    '<h2 style="color: #ffffff">Cadastrar mesa</h2>'+
        '<form action="<%=request.getContextPath()%>/mesainsere" method="post">'+
            '<div class="form-group">'+
                '<label for="numMesa" name="lnumMesa">Número</label>'+
                '<input type="text" class="form-control" name="nummesa" placeholder="Digite o número da mesa">'+
            '</div>'+
            '<div class="form-group">'+
                '<label for="lugarMesa" name="llugarMesa">Quantidade de lugares</label>'+
                '<input type="text" class="form-control" name="lugarMesa" placeholder="Digite a quantidade de lugares da mesa">'+
            '</div>'+
            '<button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>'+
        '</form>'+
'</div>';
        
        
function cadFunc() {
    document.getElementById("campo").innerHTML = funcCad;
}
function cadCard() {
    document.getElementById("campo").innerHTML = cardCad;
}
function consCardG() {
    document.getElementById("campo").innerHTML = cardConsG;
}
function consCard() {
    document.getElementById("campo").innerHTML = cardCons;
}
function cadPed() {
    document.getElementById("campo").innerHTML = pedCad;
}
function consPed() {
    document.getElementById("campo").innerHTML = pedCons;
}

function cadMesa() {
    document.getElementById("campo").innerHTML = mesaCad;
}
    </script>
    
    <script>
    $(function(){
    $('#upload').on('change',function(){
        var numArquivos = $(this).get(0).files.length;
        if ( numArquivos > 1 ) {
          $('#texto').val( numArquivos+' arquivos selecionados' );
        } else {
          $('#texto').val( $(this).val() );
        }
    });
});
  </script>
    

    
  </body>
</html> 