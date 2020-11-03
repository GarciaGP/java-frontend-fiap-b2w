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
<link rel="stylesheet" href="../../Styles/style.css">
<link rel="stylesheet" href="../../Styles/chat.css">
<title>B2W - Bem vindo!</title>
</head>

<body>
	<%
		Usuario usuario = (Usuario) session.getAttribute("Usuario");
	%>

	<div class="page">

		<nav class="vertical" id="lateral">
			<div class="sidebar-img-container"></div>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="../Treinamento/CoursesList.jsp">Cursos</a></li>
			</ul>
		</nav>

		<div class="chat-icon" id="chat">
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
						<a class="dropdown-item" href="../Gerenciamento/Gerenciamento.jsp">Área gerencial</a> <a
							class="dropdown-item" href="../Treinamento/CreateCourse.jsp">Criar
							Treinamento</a>
						<%
							}
						%>
					</div>
				</div>
			</nav>
			<section class="secoes">
				<section class="bloco bloco-img" id="home">
					<div class="content">
						<div class="holder">
							<div class="welcome-title">
								<h2>
									Parabéns
									<%
									out.print(usuario.getNome());
								%>!
								</h2>
							</div>
							<div class="welcome-text">
								<p>Agora você faz parte do nosso time!</p>
							</div>
							<div class="welcome-text">
								<p>Venha aprender tudo sobre a B2W conosco!</p>
							</div>
						</div>
					</div>
				</section>
				<section class="bloco" id="treinamentos">
					<div class="content">
						<div class="company">
							<div class="company-tag">
								<h2>Quem somos</h2>
							</div>
							<div class="company-description">
								<p>A B2W surgiu com a fusão de lojas pioneiras no comércio
									eletrônico, Submarino e Americanas.com, que no ano anterior já
									havia adquirido o controle do Shoptime, conhecido pelas vendas
									em canal fechado.</p>

								<p>A Americanas.com era um braço das Lojas Americanas,
									varejista de shoppings centers do país, enquanto o Submarino
									era um sucesso de vendas online com faturamento mensal
									milhonário.</p>

								<p>Hoje a B2W possui as maiores e mais queridas marcas da
									internet.</p>

								<p>A companhia atua nas frentes: e-commerce (1P) e
									Marketplace (3P) por meio das marcas Americanas.com, Submarino,
									Shoptime; serviços de crédito ao consumidor Submarino Finance e
									Digital Finance; pagamentos, crédito e serviços financeiros
									através da Ame; plataforma de tecnologia; e soluções de
									logística, distribuição e atendimento ao cliente.</p>
							</div>
							<div class="company-tag">
								<h2>Missão</h2>
							</div>
							<div class="company-description">
								<p>“Realizar os sonhos e atender as necessidades de consumo
									das pessoas, poupando tempo e dinheiro e superando as suas
									expectativas.”</p>
							</div>
							<div class="company-tag">
								<h2>Valores</h2>
							</div>

							<div class="flex-display spacing-top">
								<div class="value-card">
									<div class="card-inner">
										<div class="card-front people"></div>
										<div class="card-back">
											<div class="card-content">
												<ul>
													<li>Um sonho grande e desafiador faz todo mundo remar
														na mesma direção</li>
													<li>Gente boa, trabalhando em equipe, crescendo na
														medida de seu talento e sendo recompensada por isso;</li>
													<li>Escolher pessoas melhores do que nós, treiná-las,
														desafiá- las e mantê-las é a nossa principal tarefa;</li>
													<li>A liderança pessoal é vital, tanto nas atitudes
														heroicas quantos nos pequenos gestos do dia a dia.</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
								<div class="value-card">
									<div class="card-inner">
										<div class="card-front methods"></div>
										<div class="card-back">
											<div class="card-content">
												<ul>
													<li>Foco é essencial. Não dá para ser ótimo em tudo,
														tem que se concentrar no essencial;</li>
													<li>Tudo tem que ter um dono com responsabilidade e
														autoridade. O debate é bom, mas no final alguém tem que
														decidir;</li>
													<li>Escolher pessoas melhores do que nós, treiná-las,
														desafiá- las e mantê-las é a nossa principal tarefa;</li>
													<li>Bom senso é tão bom quanto grandes conhecimentos.
														O simples é melhor que o complicado.</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
								<div class="value-card">
									<div class="card-inner">
										<div class="card-front results"></div>
										<div class="card-back">
											<div class="card-content">
												<ul>
													<li>Ser obsessivo com custos e despesas, que são as
														únicas variáveis sob o nosso controle, ajuda a manter a
														sobrevivência a longo prazo;</li>
													<li>Entender velocidade, urgência e complacência zero
														como fatores de vantagem competitiva duradoura;</li>
													<li>Ética, trabalho duro e consistência são a base
														para o crescimento da Companhia.</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>
				<section class="bloco" id="sobre">
					<div class="content">
						<div class="organogram">
							<div class="img-container">
								<img src="../../Styles/images/Global/ciclo.jpg"
									alt="Organograma" />
							</div>
							<a href="">
								<div class="company-tag">
									<a href="../Treinamento/CoursesList.jsp"><button
											type="button">
											<h2>Iniciar Treinamento!</h2>
										</button></a>
								</div>
							</a>
						</div>
					</div>
				</section>
			</section>
		</div>
	</div>
	<script>
		const primeiroAcesso = true;
	</script>
	<script src="../../Scripts/Chat/chat.js"></script>
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
</body>

</html>