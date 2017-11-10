<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/Imagens\icon.ico">
        <title>Login</title>
    </head>
    <body>
        <div class="cadastro">
            <h1>Login</h1>
            <form action="<%=request.getContextPath()%>/login" method="POST">
                <label for="login" name="login">Login:</label>
                <br>
                <input type="text" name="login">
                <br>
                <br>
                <label for="password" name="senha">Senha:</label>
                <br>
                <input type="password" name="senha">
                <br>
                <br>
                <input type="submit" value="Logar">
            </form>
        </div>
    </body>
</html>
