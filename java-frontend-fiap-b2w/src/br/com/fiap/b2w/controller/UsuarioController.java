package br.com.fiap.b2w.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.b2w.domain.Login;
import br.com.fiap.b2w.domain.Setor;
import br.com.fiap.b2w.domain.Usuario;
import br.com.fiap.b2w.enumeration.UsuarioEnum;
import br.com.fiap.b2w.exception.CadastroLoginException;
import br.com.fiap.b2w.exception.LoginInvalidoException;
import br.com.fiap.b2w.service.LoginService;
import br.com.fiap.b2w.service.UsuarioService;
import br.com.fiap.b2w.utils.Conversores;

@WebServlet("/Usuario")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UsuarioController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LoginService loginSvc = new LoginService();
		UsuarioService usuarioSvc = new UsuarioService();
		Conversores utils = new Conversores();
		
		String loginUsuario = request.getParameter("email");
		String senhaUsuario = "b2wsenha";
		
		Login login = new Login(loginUsuario, senhaUsuario, true);
		
		try {
			loginSvc.cadastrarLogin(login);
			
			String nomeUsuario = request.getParameter("nome");
			String setorUsuario =request.getParameter("inputSetor");
			Long acessoUsuario = Long.parseLong(request.getParameter("inputAcesso"));					
			
			String descricaoSetor = utils.retornaDescricaoSetor(Integer.parseInt(setorUsuario));
			
			Setor setor = new Setor(Long.parseLong(setorUsuario), descricaoSetor);
			Usuario usuario = new Usuario(nomeUsuario, setor, UsuarioEnum.valueOf(acessoUsuario), true, 0, login);
			
			usuarioSvc.cadastrarUsuario(usuario);
			
			response.setStatus(200);
			
			
		} catch(CadastroLoginException | SQLException | LoginInvalidoException e) {
			response.setStatus(404);
			response.addHeader("erroLogin", "Login inválido ou já existente");
		} catch(Exception e) {
			response.setStatus(500);
		}
		
	}
}
