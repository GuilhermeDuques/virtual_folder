<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela inicial</title>
    </head>
    <body>
        <div class="jumbotron text-center">
            <h3>Bem-vindo ${user.email}!</h3>
            <a href="/home" class="btn btn-primary">
                Consulta de Arquivos
            </a>
            <a href="/logout" class="btn btn-danger">Sair</a>
        </div>
    </body>
</html>