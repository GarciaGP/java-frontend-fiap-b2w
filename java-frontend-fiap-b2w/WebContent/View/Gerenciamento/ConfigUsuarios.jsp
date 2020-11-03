<%@page import="br.com.fiap.b2w.enumeration.UsuarioEnum"%>
<%@page import="br.com.fiap.b2w.domain.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="../../Styles//style.css">
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
				<li><a href="../site.html">Home</a></li>
				<li><a href="./CoursesList.html">Cursos</a></li>
			</ul>
		</nav>

		<div class="chat-icon"></div>
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
						<a class="dropdown-item" href="./Gerenciamento/Gerenciamento.jsp">Área gerencial</a> <a
							class="dropdown-item" href="../Treinamento/CreateCourse.jsp">Criar
							Treinamento</a>
						<%
							}
						%>
					</div>
				</div>
			</nav>
			<section class="bloco bg-img">
				<div class="flex-display">
					<div class="content">
						<div class="user-form-container">
							<form method="POST" id="userForm">
								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="nome">Nome:</label> <input type="nome"
											class="form-control" name="nome" id="nome"
											placeholder="Nome do usuário">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="email">Email</label> <input type="email"
											class="form-control" name="email" id="email"
											placeholder="O email que o usuário usará para logar">
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col-md-6">
										<label for="inputSetor">Setor</label> <select id="inputSetor"
											name="inputSetor" class="form-control">
											<option selected>Selecionar</option>
											<option value="1">ADMINISTRAÇÃO</option>
											<option value="2">TECNOLOGIA DA INFORMAÇÃO</option>
											<option value="3">FINANCEIRO</option>
										</select>
									</div>
									<div class="form-group col-md-6">
										<label for="inputAcesso">Nível de acesso</label> <select
											id="inputAcesso" name="inputAcesso" class="form-control">
											<option selected>Selecionar</option>
											<option value="1">Administrador</option>
											<option value="2">RH</option>
											<option value="3">Gestor</option>
											<option value="4">Associado</option>
										</select>
									</div>
								</div>
								<button type="submit" class="btn btn-primary" id="btnEnviar">Cadastrar</button>
							</form>
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="../../Scripts/ConfigUsuarios/configUsuarios.js">
		
	</script>
</body>

</html>