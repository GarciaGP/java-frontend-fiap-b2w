package br.com.fiap.b2w.controller;

import br.com.fiap.b2w.validation.LoginValidator;
import br.com.fiap.b2w.domain.Login;
import br.com.fiap.b2w.domain.Setor;
import br.com.fiap.b2w.domain.Usuario;
import br.com.fiap.b2w.enumeration.UsuarioEnum;
import br.com.fiap.b2w.service.LoginService;
import br.com.fiap.b2w.service.UsuarioService;
import br.com.fiap.b2w.exception.*;
import br.com.fiap.b2w.helper.CryptographyHelper;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usuario = request.getParameter("login_email");
		String senha = request.getParameter("login_senha");

		Login login = new Login();
		login.setLoginUsuario(usuario);
		login.setSenha(senha);
		
		CryptographyHelper.criptografarSenha(login);

		try {
			LoginService loginSvc = new LoginService();

			login = loginSvc.buscarLoginPorUsuarioSenha(login);

			if (login.getId() != null) {
				
				UsuarioService usuarioSvc = new UsuarioService();
				Usuario usuarioLogin = usuarioSvc.consultarUsuarioPorIdDoLogin(login.getId());
				
				
				if(!usuarioLogin.isStatus())
					throw new Exception("Usuário inativo!");

				HttpSession session = request.getSession();

				response.setStatus(200);

				String redirectURL;
				if (login.getPrimeiroAcesso().booleanValue()) {
					loginSvc.atualizarAtatusAcesso(login.getId(), false);
					redirectURL = request.getContextPath() + "/View/PaginaInicial/PrimeiroAcesso.jsp";
				} else {
					redirectURL = request.getContextPath() + "/View/Treinamento/CoursesList.jsp";
				}
				session.setAttribute("Usuario", usuarioLogin);
				response.sendRedirect(redirectURL);

			}

		} catch (DriverException e) {
			response.setStatus(500);
			response.getWriter().print("Erro ao localizar o driver.");
			request.getRequestDispatcher(request.getContextPath() + "/View/Login/index.jsp").forward(request, response);
		} catch (IOException e) {
			response.setStatus(500);
			response.getWriter().println(e.getMessage());
			request.getRequestDispatcher(request.getContextPath() + "/View/Login/index.jsp").forward(request, response);
		} catch (Exception e) {
			response.setStatus(400);
			response.getWriter().println(e.getMessage());
			request.getRequestDispatcher(request.getContextPath() + "/View/Login/index.jsp").forward(request, response);
		}

	}
}
