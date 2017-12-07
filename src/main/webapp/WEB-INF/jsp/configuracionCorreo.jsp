<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	<div class="bs-docs-header" id="content" tabindex="-1" style="background-color: #2c3e50;">
		<div class="container">
			<header >
				<h1 style="font-weight: bold; color: #ffffff">
					<img alt="Logo Universal" src="images/logo2.png" style="opacity: 0.5">
					CONFIGURACI&Oacute;N DE CORREO
				</h1><br><br>
			</header>
		</div>
	</div>

	<div class="bd-example" data-example-id="">
		<div class="container">
			<form:form action="/redirectConfiguracionCorreo" method="post" commandName="configuracion">
				<form:hidden path="idConfiguracion"/>
				<div class="form-group row">
					<label for="cuentaCorreo" class="col-sm-10 col-form-label" style="font-weight: bold; color: #337ab7">						
					 EN ESTA P&Aacute;GINA PODR&Aacute;S CONFIGURAR UNA NUEVA CUENTA DE CORREO
					</label>
				</div>
				<c:if test="${sinDatos eq 'sinDatos'}">
	            	<div id="sinDatos" class="alert alert-danger">
	                	<p>No existe Configuraci&oacute;n</p>
	               	</div>
	            </c:if>	
				<br>
				<div class="form-group row">
					<label for="nothing" class="col-sm-3 col-form-label">						
					 &nbsp;
					</label>
	                <c:if test="${ok != null}">
		                <div class="alert alert-info">
	    	                <p>Haz actualizado exitosamente la configuraci&oacute;n del correo!.</p>
	                    </div>
	                 </c:if>
				</div>
				<div class="form-group row">
					<label for="inputEmail" class="col-sm-3 col-form-label">Correo del Remitente</label>
					<div class="col-sm-4">
						<form:input path="remitente" required="required" class="form-control" id="correoRemitente"
							placeholder="Correo del Remitente" type="email" value="${configuracion.remitente}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPlantilla" class="col-sm-3 col-form-label">Plantilla del
						asunto</label>
					<div class="col-sm-4">
						<form:input path="asunto" required="required" class="form-control" id="plantillaAsunto"
							placeholder="Plantilla del asunto" type="text" value="${configuracion.asunto}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPlantilla" class="col-sm-3 col-form-label">Mensaje</label>
					<div class="col-sm-4">
						<form:input path="mensaje" required="required" class="form-control" id="plantillaMensaje"
							placeholder="Mensaje" type="text" value="${configuracion.mensaje}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPuerto" class="col-sm-3 col-form-label">Puerto</label>
					<div class="col-sm-4">
						<form:input path="puerto" required="required" class="form-control" id="puerto"
							placeholder="Puerto" type="text" value="${configuracion.puerto}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputSMTP" class="col-sm-3 col-form-label">Servidor SMTP</label>
					<div class="col-sm-4">
						<form:input path="smtp" required="required" class="form-control" id="servidorSMTP"
							placeholder="Servidor SMTP" type="text" value="${configuracion.smtp}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputCC" class="col-sm-3 col-form-label">Direcci&oacute;n con
						copia</label>
					<div class="col-sm-4">
						<form:input path="direccion" required="required" class="form-control" id="direccionCopia" 
							placeholder="Direcci&oacute;n con copia" type="text" value="${configuracion.direccion}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="checkAuth" class="col-sm-3 col-form-label">&nbsp;</label>
					<div class="col-sm-4">
						<label class="form-check-label">
							<c:if test="${configuracion.autenticacion==true}"> 
								<form:checkbox path="autenticacion" class="form-check-input" value="${configuracion.autenticacion}" checked="checked"/> Autenticaci&oacute;n
							</c:if>
							<c:if test="${configuracion.autenticacion!=true}">
								<form:checkbox path="autenticacion" class="form-check-input"/> Autenticaci&oacute;n
							</c:if>
						</label>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputUsuario" class="col-sm-3 col-form-label">Usuario</label>
					<div class="col-sm-4">
						<form:input path="usuario" class="form-control" id="usuario"
							placeholder="Usuario" type="text" value="${configuracion.usuario}"/>
						<form:errors path="usuario" cssClass="text-warning"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-3 col-form-label">Contrase&ntilde;a</label>
					<div class="col-sm-4">
						<form:input path="password" required="required" class="form-control" id="password"
							placeholder="Contrase&ntilde;a" type="password" value="${configuracion.password}"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="checkSSL" class="col-sm-3 col-form-label">&nbsp;</label>
					<div class="col-sm-4">
						<label class="form-check-label">
							<c:if test="${configuracion.ssl==true}"> 
								<form:checkbox path="ssl" class="form-check-input" value="${configuracion.ssl}" checked="checked"/> Seguridad SSL
							</c:if>
							<c:if test="${configuracion.ssl!=true}"> 
								<form:checkbox path="ssl" class="form-check-input"/> Seguridad SSL
							</c:if>
						</label>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputFechaActualizada" class="col-sm-3 col-form-label">Fecha de Actualizaci&oacute;n</label>
					<div class="col-sm-4">
						<form:input path="fechaAlta" required="required" class="form-control" id="inputFechaActualizada"
							placeholder="Fecha de Actualización" type="text" value="${configuracion.fechaAlta}"/>
					</div>
				</div>				
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-3 col-form-label">&nbsp;</label>
					<div class="col-sm-4">
						<button type="submit" class="btn btn-success">Guardar Configuraci&oacute;n</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
<%@ include file="common/footer.jspf" %>