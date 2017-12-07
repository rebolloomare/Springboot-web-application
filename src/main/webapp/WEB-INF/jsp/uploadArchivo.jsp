<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	<div class="bs-docs-header" id="content" tabindex="-1" style="background-color: #2c3e50;">
		<div class="container">
			<header >
				<h1 style="font-weight: bold; color: #ffffff">
					<img alt="Logo Universal" src="images/logo2.png" style="opacity: 0.5">
					SUBIR COMPROBANTES
				</h1><br><br>
			</header>
		</div>
	</div>

		<div class="bd-example" data-example-id="">
		<div class="container">
			<form method="post">
			<div class="form-group row">
				<label for="cuentaCorreo" class="col-sm-10 col-form-label" style="font-weight: bold; color: #337ab7">						
				 EN ESTA P&Aacute;GINA PODR&Aacute;S SUBIR ARCHIVOS ZIP
				</label>
			</div>
			<c:if test="${sinArchivo eq 'sinArchivo'}">
            	<div id="sinArchivo" class="alert alert-danger">
                	<p>Selecciona un Archivo con extensi&oacute;n .zip</p>
               	</div>
            </c:if>			
			<div class="form-group row">
				<label for="nothing" class="col-sm-3 col-form-label">						
				 &nbsp;
				</label>
                <c:if test="${ok eq 'ok'}">
	                <div class="alert alert-info">
    	                <p>Haz procesado <label style="font-weight: bold"><c:out value='${numberOfFiles}'/> </label> archivos XML exitosamente!</p>
                    </div>
                 </c:if>
                 <c:if test="${duplicados eq 'duplicados'}">
	                <div class="alert alert-info">
    	                <p>No se procesaron los registros <label style="font-weight: bold">duplicados </label></p>
                    </div>
                 </c:if>
			</div>				
			<div class="form-group row">
				<label for="inputArchivo" class="col-sm-3 col-form-label">Seleccionar un Archivo</label>
				<div class="col-sm-4">
					<input type="file" name="file" id="file" class="btn btn-primary" />
					<div class="has-error">
						<form:errors path="file" class="help-inline" />
					</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword" class="col-sm-3 col-form-label">&nbsp;</label>
				<div class="col-sm-4">
					<input id="button-upload" type="submit" class="btn btn-success" value="Procesar Archivo">
				</div>
			</div>
		</form>
	</div>
	</div>
	<%@ include file="common/footer.jspf" %>