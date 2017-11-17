<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/Imagens\icon.ico">
        <title>TECHFood! - Cadastro</title>
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
                <a class="nav-item nav-link" href="./cardapio.jsp">Cardápio</a>
                <a class="nav-item nav-link active" href="./login.jsp">Login <span class="sr-only">(current)</span></a>
              </div>
            </div>
        </nav>
        <%--<div class ="cadastro">
            <h1>Cadastre-se</h1>
            <form action="<%=request.getContextPath()%>/cadastro" method="POST">
                <label for="nome" name="nome">Nome Completo:</label>
                <br>
                <input type="text" name="nome">
                <br>
                <br>
                <label for="cpf" name="cpf">CPF:</label>
                <br>
                <input type="text" name="cpf">
                <br>
                <br>
                <label for="cargo" name="cargo">Cargo:</label>
                <br>
                <input type="texto" name="cargo">
                <br>
                <br>
                <label for="senha" name="senha">Senha:</label>
                <br>
                <input type="password" name="senha">
                <br>
                <br>
                <label for="endereco" name="rua">Rua:</label>
                <br>
                <input type="text" name="rua">
                <br>
                <br>
                <label for="fone" name="cidade">Cidade:</label>
                <br>
                <input type="text" name="cidade">
                <br>
                <br>
                <label for="fone" name="cep">CEP:</label>
                <br>
                <input type="text" name="cep">
                <br>
                <br>
                <label for="fone" name="fone">Telefone:</label>
                <br>
                <input type="text" name="fone">
                <input type="submit" value="Cadastrar">
            </form>
        </div> --%>
                
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
            <div class="form-check">
            </div>
            <button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Cadastrar</button>
          </form>
        </div> 
    </body>
</html>
