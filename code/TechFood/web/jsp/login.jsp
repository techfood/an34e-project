<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/Imagens\icon.ico">
        <title>TECHFood! - Login</title>
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
        <div class="back">       
          <form action="<%=request.getContextPath()%>/login" method="POST">
            <div class="form-group">
              <label for="login" name="login">Login</label>
              <input type="text" class="form-control" name="login" placeholder="Digite seu login">
            </div>
            <div class="form-group">
              <label for="password" name="senha">Senha</label>
              <input type="password" class="form-control" name="senha" placeholder="Digite sua senha">
            </div>
            <div class="form-check">
            </div>
            <button type="submit" class="btn btn-primary" style="background-color: #fe6103; border: none">Entrar</button>
          </form>
        </div> 
    </body>
</html>
