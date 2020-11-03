<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../../Styles/Login/LoginStyle.css">
    <title>B2W</title>
</head>

<body>

    <div class="container">
        <div class="content">
            <form method="post" action="../../Login">
                <h1>Login</h1>
                <p>
                    <label for="login_email">Email</label>
                    <input id="login_email" name="login_email" required="required" type="text" placeholder="contato@b2w.com.br">
                </p>

                <p>
                    <label for="login_senha">Senha</label>
                    <input id="login_senha" name="login_senha" required="required" type="password" placeholder="***********">
                </p>

                <p>
                    <input type="checkbox" name="manterlogado" id="manterlogado" value="">
                    <label for="manterlogado">Manter Logado?</label>
                </p>

                <input type="submit" value="CONECTAR" id="login">
            </form>
            <a href="#">Esqueci minha senha</a>
        </div>
    </div>
<!--
//<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../../Scripts/Login/login.js">

//-->
</script>
</body>

</html>