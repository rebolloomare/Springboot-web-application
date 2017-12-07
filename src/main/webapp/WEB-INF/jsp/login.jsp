<html>
	<head>
		<title>Sample Web Application</title>
		<link rel="stylesheet" href="css/styleLogin.css">
	</head>
 
    <body onload="document.getElementById('name').focus();">
        <div id="mainWrapper">
            <div class="login-container">
                <div class="login-card">
                    <div class="login-form">
                    	<font color="red">${errorMessage}</font>
                        <form method="post" class="form-horizontal">
                       		<h4>Informaci&oacute;n de acceso</h4>
							<input id="name" name="name" class="name" type="text" placeholder="Ingresa nombre de usuario" /> 
							<input id="password" name="password" class="pw" type="password" placeholder="Ingresa contrase&ntilde;a" />  
							<input class="button" type="submit" value="Entrar" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>