<html>
<head>

<title>Universal</title>

<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="css/docs.min.css" rel="stylesheet">
</head>

<body style="background-image: url('images/banner.jpg');">

<nav class="navbar navbar-default navbar-inverse" role="navigation">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse navbar-form navbar-right" id="bs-example-navbar-collapse-1">
	    	<label for="user" style="font-weight: bold; color: #ffffff">Bienvenido:	${name}</label> 
	      	<a class="btn btn-default" href="/logout">SALIR</a>
	    </div>
	  </div>
	</nav>
	
    <!-- Page Content -->
    <div class="container">
    
    <div id="page-wrapper" style="min-height: 275px;">
		<div class="bs-docs-header" id="content" tabindex="-1">
			<div class="container">
				<br>
				<header>
					<h1 style="font-weight: bold; color: #ffffff">
						<img alt="Logo Universal" src="images/logo.jpg" style="opacity: 0.5;">
						BIENVENIDO A UNIVERSAL
					</h1>
					<h3 style="font-size: 14; font-weight: bold; color: #ffffff">
					</h3>
					<br>
				</header>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-9">
							<div align="center">
								<form action="redirectComprobantes">
									<input type="submit" class="btn btn-primary btn-lg" value="CONSULTA COMPROBANTES">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-9">
							<div align="center">
							<form action="redirectUpload">
								<input type="submit" class="btn btn-primary btn-lg" value="SUBIR COMPROBANTES">
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-9">
							<div align="center">
								<form action="redirectUsuarios">
									<input type="submit" class="btn btn-primary btn-lg" value="GESTI&Oacute;N DE USUARIOS">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-9">
							<div align="center">
								<form action="/loadInitialConfiguracion">
									<input type="submit" class="btn btn-primary btn-lg" value="CONFIGURACI&Oacute;N DE CORREO">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p style="font-weight: bold; color: #ffffff">Copyright &copy; Universal 2017</p>
            </div>
        </div>
    </footer>

    </div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>