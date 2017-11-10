<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
        <title>Cadastro</title>
    </head>
    <body>
        <div class ="cadastro">
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
        </div>
    </body>
</html>
