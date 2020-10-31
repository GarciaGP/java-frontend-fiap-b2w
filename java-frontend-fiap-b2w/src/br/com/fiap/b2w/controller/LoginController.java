package br.com.fiap.b2w.controller;

import br.com.fiap.b2w.validation.LoginValidator;
import br.com.fiap.b2w.domain.Login;
import br.com.fiap.b2w.dao.LoginDao;
import br.com.fiap.b2w.exception.*;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        System.out.print("Cheguei no ctr");
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("Cheguei no método");
		
		String usuario = request.getParameter("user");
		String senha = request.getParameter("pw");
		
		LoginValidator val = new LoginValidator();
		
		try {
		LoginDao dsp = new LoginDao();
		
		
		
			Login login = new Login(usuario, senha);
			dsp.buscarLoginPorUsuarioSenha(login);
			val.validarLogin(login);
			
		} catch(DriverException e) { 
			response.setStatus(500);
			response.getWriter().print("Erro ao localizar o driver.");
		} catch (Exception e) {
			response.getWriter().println(e.getMessage());
		}
		
	}
}
