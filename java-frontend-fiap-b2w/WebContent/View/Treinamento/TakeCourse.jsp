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
				<li><a href="./CoursesList.jsp">Cursos</a></li>
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
						<a class="dropdown-item" href="../Gerenciamento/Gerenciamento.jsp">Área
							gerencial</a> <a class="dropdown-item" href="./CreateCourse.jsp">Criar
							Treinamento</a>
					</div>
				</div>
			</nav>
			<section class="bloco bg-img">
				<div class="course-header">
					<div class="course-img">
						<img src="../../Styles/images/Cursos/b2w1.png" alt="Curso1">
					</div>
					<div class="course-info">
						<h2>Sua empresa</h2>
						<h3>Gestão de pessoas</h3>
						<p>Neste curso você verá quais são os setores de sua companhia
							de forma detalhada, e como funcionam</p>
					</div>
				</div>

				<div class="slides-section">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="slide-container">
									<div class="slide-content">
										<h2 class="slide-title">1ª Parte</h2>
										<h4 class="slide-description">Leitura do texto sobre
											cultura e pilares da B2W</h4>
										<button class="btn btn-secondary">Acessar</button>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="slide-container">
									<div class="slide-content">
										<h2 class="slide-title">2ª Parte</h2>
										<h4 class="slide-description">Primeiro questionário</h4>
										<button class="btn btn-secondary" data-toggle="modal"
											data-target="#exampleModalLong">Acessar</button>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="slide-container">
									<div class="slide-content">
										<h2 class="slide-title">Parabéns!</h2>
										<h4 class="slide-description">Você concluiu esse
											treinamento!</h4>
										<button class="btn btn-secondary">Finalizar</button>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleControls"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</section>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg" id="exampleModalLong"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Questionário
						#2</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="questions"></div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Enviar!</button>
				</div>
			</div>
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
	<script src="../../Scripts/TakeCourse/takeCourse.js"></script>
	<script src="../../Scripts/Chat/chat.js"></script>
</body>

</html>