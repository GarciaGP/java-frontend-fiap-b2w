package br.com.fiap.b2w.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Questionario")
public class QuestionarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuestionarioController() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String idTreinamento = "1";
		
		try {
			// TODO: Implementar a busca do questionário
		} catch(Exception e) {
			
		}
		
	}
	
}
