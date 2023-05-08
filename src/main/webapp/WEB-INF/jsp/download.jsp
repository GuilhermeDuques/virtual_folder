<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Folder</title>
</head>
<body>
<nav class="navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="https://www.infnet.edu.br/infnet/">
        <img src="https://lms.infnet.edu.br/moodle/pluginfile.php/1/theme_remui/logomini/1626792135/infnet.png" width="30" height="30" class="d-inline-block align-top" alt="">
        Infnet
    </a>
</nav>
<div class="row">
    <div class="col-3">
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
            <p></p>
            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="home" role="tab" aria-controls="v-pills-home" aria-selected="true">Home</a>
            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="folder" role="tab" aria-controls="v-pills-profile" aria-selected="false">Minha pasta</a>
            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="upload" role="tab" aria-controls="v-pills-messages" aria-selected="false">Upload de arquivo</a>
            <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="download" role="tab" aria-controls="v-pills-settings" aria-selected="false">Download de arquivo</a>
            <a class="nav-link" id="v-pills-delete-tab" data-toggle="pill" href="trash" role="tab" aria-controls="v-pills-settings" aria-selected="false">Lixeira</a>
        </div>
    </div>
    <div class="col-9">
        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">...</div>
            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...</div>
            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
            <div class="tab-pane fade" id="v-pills-delete" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
        </div>
    </div>
</div>

<table>
    <thead>
    <tr>
        <th align="center"><b>Nome</b></th>
        <th align="center"><b>Descrição</b></th>
        <th align="center"><b>Arquivo</b></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="file" items="${items}">
        <c:set value="${fn:endsWith(file.name, 'jpg') or fn:endsWith(file.name, 'png')}" var="isImage"/>
        <tr>
            <td>${file.name}</td>
            <td>${file.description}</td>
            <c:if test="${isImage}">
                <td><img width="50" height="50" src="download.do?id=${file.id}"/></td>
            </c:if>
            <c:if test="${not isImage}">
                <td><a href="download.do?id=${file.id}">Baixar</a></td>
            </c:if>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>