<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
    <title>Folder</title>
</head>
    <body>
<%--        <h1> Upload de Arquivo</h1>--%>
        <nav class="navbar navbar-dark bg-primary">
            <a class="navbar-brand" href="https://www.infnet.edu.br/infnet/">
                <img src="https://lms.infnet.edu.br/moodle/pluginfile.php/1/theme_remui/logomini/1626792135/infnet.png" width="30" height="30" class="d-inline-block align-top" alt="">
                Infnet
            </a>
            <div class="show_user">
                <h3 style="float: left;margin-right: 15px">
                    ${user.email}
                </h3>
                <a href="/"><span class="">
            <img src="https://i.imgur.com/kFPdWsj.png" width="30" height="35" class="" style="float: right" alt="">
        </span></a>
                <h3 style="float: right;margin-right: 15px">Logout</h3>
                <img src="https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png" width="40" height="40" class="" style="float: right;margin-right: 35px" alt="">
            </div>
        </nav>
        <div class="row">
            <div class="col-3">
                <p></p>
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="home" role="tab" aria-controls="v-pills-home" aria-selected="false">Home</a>
                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="folder" role="tab" aria-controls="v-pills-profile" aria-selected="false">Minha pasta</a>
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="upload" role="tab" aria-controls="v-pills-messages" aria-selected="false">Upload de arquivo</a>
<%--                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="download" role="tab" aria-controls="v-pills-settings" aria-selected="false">Download de arquivo</a>--%>
                    <a class="nav-link" id="v-pills-delete-tab" data-toggle="pill" href="trash" role="tab" aria-controls="v-pills-settings" aria-selected="false">Lixeira</a>
                </div>
            </div>
            <div class="col-9">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab"></div>
                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab"></div>
                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab"></div>
                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab"></div>
                    <div class="tab-pane fade" id="v-pills-delete" role="tabpanel" aria-labelledby="v-pills-settings-tab"></div>
                </div>
            </div>
        </div>
        <div>
            <div class="col-12">
                <div class="container" style="background-color: #007bff;border-radius: 10px;color: white;margin-top: 25px; padding-bottom: 25px">
                    <h1>Upload de Arquivos</h1>
           <form action="/file/cadastro" method="post" style="background-color: #007bff;border-radius: 10px;color: white;margin-top: 50px" enctype="multipart/form-data">
               <input type="text" name="description" />
               <input type="file" name="file" />
               <input type="submit" style="color: #007bff;border-radius: 10px;font-weight: bold" value="Enviar" />
           </form>
            <c:if test="${msg!=null}">
                <c:out value="${msg}"></c:out>
            </c:if>
                </div>
            </div>
        </div>
        <p></p>
        <a href="/home"> <<< Voltar</a>
    </body>
</html>