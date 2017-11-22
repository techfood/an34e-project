<%@page import="model.Cardapio"%>
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
        <%if(session.getAttribute("cpf")!= null && session.getAttribute("usuario").equals(new Boolean(true))){
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
                        
                        
                    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #fe6103; height: 110px; padding-left: 5%;padding-right: 5%; padding-top: 20px; z-index: 2;">
                        <a class="navbar-brand" href="./index.html"><img src="<%=request.getContextPath()%>/Imagens\Logo.png"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                              <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="font-size: 20px; margin-top: 40px;">
                            <div class="navbar-nav">
                            <a class="nav-item nav-link" href="<%=request.getContextPath()%>/index.html">Home</a>
                            <a class="nav-item nav-link" href="./cardapio.jsp">Cardápio</a>
                            <a class="nav-item nav-link active" href="./login.jsp">Login <span class="sr-only">(current)</span></a>
                            </div>
                        </div>
                    </nav>
                    <div class="back">   
                        <h1 style="color: #ffffff">Cadastre-se</h1>
                        <form action="<%=request.getContextPath()%>/cadastro" method="POST">
                            <div class="form-group">
                                <label for="nome" name="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" placeholder="Digite o nome do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="cpf" name="cpf">CPF</label>
                                <input type="text" class="form-control" name="cpf" placeholder="Digite o CPF do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="cargo" name="cargo">Cargo</label>
                                <input type="text" class="form-control" name="cargo" placeholder="Digite o cargo do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="password" name="senha">Senha</label>
                                <input type="password" class="form-control" name="senha" placeholder="Digite a senha do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="rua" name="rua">Endereço</label>
                                <input type="text" class="form-control" name="rua" placeholder="Digite o endereço do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="cidade" name="cidade">Cidade</label>
                                <input type="text" class="form-control" name="cidade" placeholder="Digite a cidade do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="cep" name="cep">CEP</label>
                                <input type="text" class="form-control" name="cep" placeholder="Digite o CEP do funcionário">
                            </div>
                            <div class="form-group">
                                <label for="fone" name="fone">Telefone</label>
                                <input type="text" class="form-control" name="fone" placeholder="Digite o telefone do funcionário">
                            </div>
                            <div class="form-check"></div>
                            <button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>
                        </form>
                    </div>
                        
                       
                        
                    <%Cardapio card = new Cardapio();
                    ArrayList<Cardapio> cardapio;
                    cardapio = card.listaCardapio();%>

                    <%for(Cardapio cadaPost : cardapio){%>
                        <div>
                            <%if(!cadaPost.getImagemCard().equals("")){%>
                                <img src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" width="300" height="300"/>
                           <% }%>
                           <p>Numero: <%= cadaPost.getIdCard()%></p>
                           <p>Nome: <%= cadaPost.getNomeCard()%></p>
                           <p>Observações: <%= cadaPost.getObsCard()%></p>
                           <p>Preço: <%= cadaPost.getPrecoCard()%></p>
                           <form action="<%=request.getContextPath()%>/apagacardapio" method="post">
                                <input type="hidden" name="id" value="<%= cadaPost.getIdCard()%>">
                                <input value="Apagar" type="submit">
                            </form>
                        </div>
                    <%}%>
                <%}else{%>
                    <%Cardapio card = new Cardapio();
                    ArrayList<Cardapio> cardapio;
                    cardapio = card.listaCardapio();%>
                    <%for(Cardapio cadaPost : cardapio){%>
                        <div>
                            <%if(!cadaPost.getImagemCard().equals("")){%>
                                <img src="<%=request.getContextPath()%>/<%=cadaPost.getImagemCard()%>" width="300" height="300"/>
                            <%}%>
                            <p>Numero: <%= cadaPost.getIdCard()%></p>
                            <p>Nome: <%= cadaPost.getNomeCard()%></p>
                            <p>Observações: <%= cadaPost.getObsCard()%></p>
                            <p>Preço: <%= cadaPost.getPrecoCard()%></p>
                        </div>
                    <%}%>
                <%}%>   
        <%}else{%>
 		NÃO ESTA LOGADO
        <% } %>    
    </body>
</html>