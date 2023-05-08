<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	.jumbotron {
		background-color: #b9eaec;
		color: #FFFFFF;
	}
</style>
</head>
<body>
<div class="jumbotron text-center" style="margin-bottom: 0">
	<img src="https://i.imgur.com/BJdMy1Z.png" width="1200" height="300" alt="Logo do Virtual Folder">
</div>
	<div class="container" style="margin-top: 30px;
             margin-left: 540px">
		<form action="/user/incluir" method="post">
			<div class="form-group" style="color: #0065a3;
                      font-size: 25px;
                      font-family: Calibri">
				<label>Nome:</label> <input type="text" class="form-control" style="width: 400px" placeholder="Insira o seu nome" name="nome" required>
			</div>
			<div class="form-group" style="color: #0065a3;
                      font-size: 25px;
                      font-family: Calibri">
				<label>E-mail:</label> <input type="email" class="form-control" style="width: 400px" placeholder="Insira o seu e-mail" name="email" required>
			</div>
			<div class="form-group" style="color: #0065a3;
                      font-size: 25px;
                      font-family: Calibri">
				<label>Senha:</label> <input type="password" class="form-control" style="width: 400px" placeholder="Insira a sua senha" name="senha" required>
			</div>
			<div class="form-group" style="color: #0065a3;
                      font-size: 25px;
                      font-family: Calibri">
				<label>Github:</label> <input type="text" class="form-control" style="width: 400px" placeholder="Insira o seu github" name="git" required>
			</div>
			<div class="btn-group" style="margin-left: 80px; margin-top: 25px">
				<button type="submit" class="btn btn-info"
						style="
                            background-color: #5BC0DE;
                            border-color: darkblue;
                            color: darkblue;
                            width: 115px;
                            height: 45px;
                            font-size: 20px"
				>Cadastrar</button>
			</div>
			<div class="btn-group" style="margin-left: 5px; margin-top: 25px">
				<a href="${voltar}" class="btn btn-default" role="button"
				   style="
                            background-color: #5BC0DE;
                            border-color: darkblue;
                            color: darkblue;
                            width: 125px;
                            height: 45px;
                            font-size: 20px"
				>Voltar</a>
			</div>
		</form>
		<p></p>
		<p></p>
		<p></p>
	</div>
</body>
</html>