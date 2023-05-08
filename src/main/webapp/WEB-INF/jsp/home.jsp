<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
    <title>Virtual Folder</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
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
    <div class="col-3" id="menu">
        <p></p>
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <a class="nav-link" id="v-pills-home-tab" data-toggle="pill" href="home" role="tab" aria-controls="v-pills-home" aria-selected="false">Home</a>
            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="folder" role="tab" aria-controls="v-pills-profile" aria-selected="false">Minha pasta</a>
            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="upload" role="tab" aria-controls="v-pills-messages" aria-selected="false">Upload de arquivo</a>
<%--            <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="download" role="tab" aria-controls="v-pills-settings" aria-selected="false">Download de arquivo</a>--%>
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
            <div style="margin-left: -95px" >
                <img src="https://s2.glbimg.com/ksKTDnF8eMvUIQupmW8lc8AI_CM=/0x0:1094x723/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2018/i/9/pLK5PcSjKfVAuAdMg4eA/armazenamento-google-.jpg">
            </div>
        </div>
    </div>
</div>
</body>
</html>