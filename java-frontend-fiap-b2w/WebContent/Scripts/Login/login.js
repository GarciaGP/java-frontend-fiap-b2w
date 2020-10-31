/**
 * Autor: Gabriel Garcia Manutenção: Implementação inicial
 */

$(document).ready(() => {
	
	const user = document.querySelector('#login_email');
	const pw = document.querySelector('#login_senha');
	
	function getParametros(user, pw){		
		return {
		user: user,
		pw: pw
		};
	}
	
	$("#login").click( e => {
		
		e.preventDefault();
		
		$.ajax({
			  url: location.origin + "/java-frontend-fiap-b2w/Login",
			  type: "get",
			  data: getParametros(user.value, pw.value),
			  success: function(response) {
			    alert("sucesso " + response)
			  },
			  error: function(response, status, error) {
				 alert("Erro " + response.responseText + status + error)
			  }
			  
        });			
	});		
});