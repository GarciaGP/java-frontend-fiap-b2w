package br.com.fiap.b2w.utils;

public class Conversores {
	
	public String retornaDescricaoSetor(int id) {
		
		switch(id) {
		case 1:
			return"Administrativo";
		case 11:
			return"Recursos Humanos";
		case 12:
			return"Tecnologia da Informação";
		case 17:
			return"Operacional";
		case 3:
			return"Armazenamento";
		}
		
		
		return "";
	}
	
}
