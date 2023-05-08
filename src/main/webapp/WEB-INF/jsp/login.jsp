<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>Login</title>
    </head>
    <body>
    <nav class="navbar navbar-dark bg-primary">
        <a class="navbar-brand" href="https://www.infnet.edu.br/infnet/">
            <img src="https://lms.infnet.edu.br/moodle/pluginfile.php/1/theme_remui/logomini/1626792135/infnet.png" width="30" height="30" class="d-inline-block align-top" alt="">
            Infnet
        </a>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
            <button class="btn btn-success my-2 my-sm-0" type="submit">Pesquisar</button>
        </form>
        <a class="navbar-brand" href="login">LOGIN</a>
    </nav>
    <div class="container">
        <div class="col-md-6 cadastro">
            <a href="/user/registration" class="btn-btn-primary">Crie o seu login</a>
            <div class="form-group">
                <form action="/user/login" method="post">
                    <c:if test="$(not empt permissao)">
                        <div class="alert alert-danger">
                            <strong>Erro: </strong> $(permissao)
                        </div>
                    </c:if>
                    <div class="form-group">
                        Email
                        <input type="email" name="email" id="email" class="form-control" required="">
                    </div>
                    <div class="form-group">
                        Senha
                        <input type="password" name="senha" id="senha" class="form-control" required="">
                    </div>
                    <div class="form-group">
                        <input type="submit" id="submit" class="btn-primary" value="Logar">
                    </div>
                </form>
            </div>
        </div>
    </div>
    </body>
</html>