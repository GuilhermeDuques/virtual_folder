<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>Cadastro</title>
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
                    <!--<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Home</a>-->
                    <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="folder" role="tab" aria-controls="v-pills-profile" aria-selected="false">Minha pasta</a>
                    <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="upload" role="tab" aria-controls="v-pills-messages" aria-selected="false">Upload de arquivo</a>
                    <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="download" role="tab" aria-controls="v-pills-settings" aria-selected="false">Download de arquivo</a>
                    <a class="nav-link" id="v-pills-delete-tab" data-toggle="pill" href="trash" role="tab" aria-controls="v-pills-settings" aria-selected="false">Lixeira</a>
                </div>
            </div>
            <div class="col-9">
                <div class="tab-content" id="v-pills-tabContent">
                    <!--<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">...</div>-->
                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...</div>
                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">...</div>
                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
                    <div class="tab-pane fade" id="v-pills-delete" role="tabpanel" aria-labelledby="v-pills-settings-tab">...</div>
                </div>
            </div>
        </div>
        <div class="container"> 
            <div class="col-md-6 cadastro">
                <!--<h1>Cadastro de Aluno</h1>
                <div>
                    <form action="cadastrar" method="post">
                        <div class="form-group">
                            Nome
                            <input type="text" name="nome" id="nome" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            Telefone
                            <input type="text" name="telefone" id="telefone" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            <input type="submit" id="submit" class="btn-primary" value="Cadastrar">
                        </div>
                    </form>-->

                    <div>
                        <h1>Fazer Upload do Arquivo</h1>
                        <form action="upload" method="post" enctype="multipart/form-data">
                            <input type="text" name="description" />
                            <input type="file" name="file" />
                            <input type="submit" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
