<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type ="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro de Cadastro</title>
    </head>
    <body>
        <%if(request.getAttribute("cadastro").equals(true)){%>
            
            <div class="cadastro">
                <p>Preencha todos os campos!</p>
                <p><a href="<%=request.getContextPath()%>/jsp/cadastro.jsp">Tente novamente</a></p>
            </div>
        
        <%}else{%>
            
            <div class="cadastro">
                <p>Login ou E-mail já existente!</p>
                <p><a href="<%=request.getContextPath()%>/jsp/cadastro.jsp">Tente novamente</a></p>
            </div>
 
        <%}%>    
    </body>
</html>
