<%@page import="br.com.fiap.b2w.enumeration.UsuarioEnum"%>
<%@page import="br.com.fiap.b2w.domain.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" href="../../Styles/global.css">
<link rel="stylesheet" href="../../Styles/style.css">
<link rel="stylesheet" href="../../Styles/chat.css">
<title>Tela do curso</title>
</head>

<body>
	<%
		Usuario usuario = (Usuario) session.getAttribute("Usuario");
	%>
	<div class="page">
		<nav class="vertical" id="lateral">
			<div class="sidebar-img-container"></div>
			<ul>
				<li><a href="../PaginaInicial/PrimeiroAcesso.jsp">Home</a></li>
				<li><a href="../Treinamento/CoursesList.jsp">Cursos</a></li>
			</ul>
		</nav>

		<div class="chat-icon">
			<div class="principal">
				<span id="chat-close">X</span>
				<h2>Converse com a Mila!</h2>
				<div class="conversa"></div>
				<span class="writing">Digitando ...</span> <input type="text"
					id="pergunta" name="pergunta" class="campo"
					placeholder="Digite aqui" />
				<button id="enviar" onclick="carregarDados()">Enviar</button>
			</div>
		</div>
		<div class="telas">
			<nav class="navbar navbar-light bg-primary">
				<span class="navbar-text"> B2Wboarding - Treinamentos B2W </span>
				<div class="user-info">
					<button class="btn btn-primary btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<%
							out.print(usuario.getNome());
						%>
					</button>

					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">Meu perfil</a>
						<div class="dropdown-divider"></div>
						<%
							if (usuario.getTipoUsuario() != UsuarioEnum.ASSOCIADO) {
						%>
						<a class="dropdown-item" href="../Gerenciamento/Gerenciamento.jsp">Área
							gerencial</a> <a class="dropdown-item"
							href="../Treinamento/CreateCourse.jsp">Criar Treinamento</a>
						<%
							}
						%>
					</div>
				</div>
			</nav>
			<section class="bloco bg-img">
				<div class="flex-display">
					<div class="content">
						<div class="card-deck">
							<div class="card config-card">
								<div class="company-tag">
									<h2>Gerir Usuários</h2>
								</div>
								<!-- <img src="../images/cards/b2w1.png" class="card-img-top" alt="..."> -->
								<div class="card-body">
									<p class="card-text">Crie, altere, consulte e delete
										usuários do sistema.</p>
									<a href="./ConfigUsuarios.jsp"
										class="btn btn-primary text-center">Acessar</a>
								</div>
							</div>

							<div class="card config-card">
								<div class="company-tag">
									<h2>Relatórios</h2>
								</div>
								<!-- <img src="../images/cards/ETICA[1247].jpeg" class="card-img-top" alt="..."> -->
								<div class="card-body">
									<p class="card-text">Gerar relatórios de treinamentos e
										usuários.</p>
									<a href="#" class="btn btn-secondary text-center">Indisponível</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
	<script src="../../Scripts/Chat/chat.js"></script>

</body>

</html>