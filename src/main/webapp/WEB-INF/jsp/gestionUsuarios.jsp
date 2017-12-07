<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	<div class="bs-docs-header" id="content" tabindex="-1" style="background-color: #2c3e50;">
		<div class="container">
			<br>
			<header>
				<h1 style="font-weight: bold; color: #ffffff">
					<img alt="Logo Universal" src="images/logo2.png" style="opacity: 0.5">
					GESTI&Oacute;N DE USUARIOS
				</h1><br><br>
			</header>
		</div>
	</div>	

	<div class="bd-example" data-example-id="">
		<div class="container">
			<form method="post">
				<div class="form-group row">
					<label for="usuarios" class="col-sm-10 col-form-label" style="font-weight: bold; color: #337ab7">						
					 EN ESTA P&Aacute;GINA PODR&Aacute;S AGREGAR NUEVOS USUARIOS
					</label>
				</div>
				<c:if test="${sinUsuario eq 'sinUsuario'}">
	            	<div id="sinUsuario" class="alert alert-danger">
	               		<p>No existen Usuarios</p>
	              	</div>
	            </c:if>
				<div class="form-group row">
					<label for="nothing" class="col-sm-3 col-form-label">						
					 &nbsp;
					</label>
					<c:if test="${ok != null}">
		                <div class="alert alert-info">
	    	                <p>Haz agregado exitosamente un nuevo usuario!.</p>
	                    </div>
	                 </c:if>
				</div>								
					
				<div class="panel panel-primary" align="center" id="idTableUsuarios">
						<div class="panel-heading" align="center" style="font: bold;">Lista de Usuarios Actuales</div>
						<table class="table">
							<thead>
								<tr align="center">
									<th>Nombre</th>
									<th>Apellido Paterno</th>
									<th>Apellido Materno</th>
									<th>Email</th>
									<th>Tel&eacute;fono</th>
									<th>Extensi&oacute;n</th>
									<th>Nombre de Usuario</th>
									<th>Habilitado</th>
									<th>Fecha Alta</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${usuariosList}" var="usuarios">
									<tr>
										<td><c:out value="${usuarios.nombre}"/></td>
										<td><c:out value="${usuarios.apellidoPaterno}"/></td>
										<td><c:out value="${usuarios.apellidoMaterno}"/></td>
										<td><c:out value="${usuarios.email}"/></td>
										<td><c:out value="${usuarios.telefono}"/></td>
										<td><c:out value="${usuarios.extension}"/></td>
										<td><c:out value="${usuarios.nombreUsuario}"/></td>
										<td><c:out value="${usuarios.enabled}"/></td>
										<td><c:out value="${usuarios.fechaAlta}"/></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
				</div>				
				<br>				
				<div class="form-group row">
					<label for="nothing" class="col-sm-3 col-form-label">						
					 &nbsp;
					</label>
				</div>								
				<div class="form-group row">
					<label for="inputNombre" class="col-sm-3 col-form-label">Nombre</label>
					<div class="col-sm-4">
						<input name="nombre" required="required" class="form-control" id="inputNombre"
							placeholder="Nombre" type="text">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPaterno" class="col-sm-3 col-form-label">Apellido Paterno</label>
					<div class="col-sm-4">
						<input name="apellidoPaterno" required="required" class="form-control" id="inputPaterno"
							placeholder="Apellido Paterno" type="text">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputMaterno" class="col-sm-3 col-form-label">Apellido Materno</label>
					<div class="col-sm-4">
						<input name="apellidoMaterno" class="form-control" id="inputMaterno"
							placeholder="Apellido Materno" type="text">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail" class="col-sm-3 col-form-label">Email</label>
					<div class="col-sm-4">
						<input name="email" required="required" class="form-control" id="inputEmail"
							placeholder="Email" type="email">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputTelefono" class="col-sm-3 col-form-label">Tel&eacute;fono</label>
					<div class="col-sm-4">
						<input maxlength="10" name="telefono" required="required" class="form-control" id="inputTelefono"
							placeholder="Tel&eacute;fono" type="text">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputExtension" class="col-sm-3 col-form-label">Extensi&oacute;n</label>
					<div class="col-sm-4">
						<input maxlength="5" name="extension" class="form-control" id="inputExtension"
							placeholder="Extensi&oacute;n" type="text">
					</div>
				</div>				
				<div class="form-group row">
					<label for="comboRol" class="col-sm-3 col-form-label">&nbsp;</label>
					<div class="col-sm-4">
						<select class="form-control" name="rol">
			                <option value="1">Administrador</option>
			                <option value="2">Usuario</option>
			            </select>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputNombreUsuario" class="col-sm-3 col-form-label">Nombre de Usuario</label>
					<div class="col-sm-4">
						<input name="nombreUsuario" required="required" class="form-control" id="inputNombreUsuario"
							placeholder="Nombre de Usuario" type="text">
					</div>
				</div>
				<div class="form-group row">
					<label for="checkEnabled" class="col-sm-3 col-form-label">&nbsp;</label>
					<div class="col-sm-4">
						<label class="form-check-label"> 
							<input name="enabled" class="form-check-input" type="checkbox"> Habilitado
						</label>
					</div>
				</div>				
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-3 col-form-label">Contrase&ntilde;a</label>
					<div class="col-sm-4">
						<input name="password" required="required" class="form-control" id="inputPassword"
							placeholder="Contrase&ntilde;a" type="password">
					</div>
				</div>
				<div class="form-group row">
					<label for="inputRePassword" class="col-sm-3 col-form-label">Confirmar Contrase&ntilde;a</label>
					<div class="col-sm-4">
						<input name="repassword" required="required" class="form-control" id="inputRePassword"
							placeholder="Confirmar Contrase&ntilde;a" type="password">
					</div>
				</div>			
				<c:if test="${noequals != null}">
	                <div class="alert alert-danger">
    	                <p>Las contraseñas no coinciden</p>
                    </div>
                 </c:if>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-3 col-form-label">&nbsp;</label>
					<div class="col-sm-4">
						<button type="submit" class="btn btn-success">Guardar Configuraci&oacute;n</button>
					</div>
				</div>
			</form>
		</div>
	</div>	
	<%@ include file="common/footer.jspf" %>