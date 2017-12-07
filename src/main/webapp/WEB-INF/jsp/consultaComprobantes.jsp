<%@ include file="common/header.jspf" %> 
<%@ include file="common/navigation.jspf" %>
	<div class="bs-docs-header" id="content" tabindex="-1" style="background-color: #2c3e50;">
		<div class="container">
			<br>
			<header>
				<h1 style="font-weight: bold; color: #ffffff">
					<img alt="Logo Universal" src="images/logo2.png" style="opacity: 0.5"> CONSULTA
					DE COMPROBANTES
				</h1>
				<br> <br>
			</header>
		</div>
	</div>

	<div class="bd-example" data-example-id="">
		<div class="container">
			<div class="form-group row">
				<label for="comprobantes" class="col-sm-10 col-form-label"
					style="font-weight: bold; color: #337ab7"> EN
					ESTA P&Aacute;GINA PODR&Aacute;S CONSULTAR COMPROBANTES </label>
			</div>
			<c:if test="${all eq 'all'}">
            	<div id="all" class="alert alert-danger">
                	<p>No existen Comprobantes</p>
               	</div>
            </c:if>	
			<c:if test="${rfcC eq 'rfcC'}">
            	<div id="CompRFC" class="alert alert-danger">
                	<p>No existen Comprobantes para este RFC</p>
               	</div>
            </c:if>			
			<c:if test="${periodoC eq 'periodoC'}">
            	<div id="CompFechas" class="alert alert-danger">
                	<p>No existen Comprobantes en el Periodo de Fechas seleccionado</p>
               	</div>
            </c:if>
            <c:if test="${razonC eq 'razonC'}">
            	<div id="CompRazon" class="alert alert-danger">
                	<p>No existen Comprobantes para esta Raz&oacute;n Social</p>
               	</div>
            </c:if>
            
	<div class="col-md-8 col-sm-8 col-sm-offset-2 col-xs-12 ">
   	 <div id="accordion" class="panel-group">

        <div class="panel panel-primary">

            <div class="panel-heading">

                <h4 class="panel-title">

					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> 
									<i class="fa fa-plus"></i>B&uacute;scar por Emisor
					</a>

                </h4>

            </div>

            <div id="collapseOne" class="panel-collapse collapse">
				<form method="post">
					<div class="panel-body">
						<div class="form-group row">
							<label for="inputEmisor" class="col-sm-2 col-form-label">RFC Emisor</label>
							<div class="col-sm-3">
								<input name="rfcEmisor" class="form-control" id="inputEmisor" placeholder="RFC Emisor"
									type="text">
							</div>
							<label for="inputNombreEmisor" class="col-sm-2 col-form-label">Raz&oacute;n Social</label>
							<div class="col-sm-4">
								<input name="nombreEmisor" class="form-control" id="inputNombreEmisor"
									placeholder="Raz&oacute;n Social" type="text">
							</div>
							<br><br><br>
							<div class="col-sm-12" align="center">
								<button type="submit" class="btn btn-success">B&uacute;scar</button>
							</div>
						</div>
					</div>
				</form>
            </div>
        </div>

        <div class="panel panel-primary">

            <div class="panel-heading">

                <h4 class="panel-title">

                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">B&uacute;scar por Receptor</a>

                </h4>

            </div>

            <div id="collapseTwo" class="panel-collapse collapse">
				<form method="post">
						<div class="panel-body">
							<div class="form-group row">
								<label for="inputReceptor" class="col-sm-3 col-form-label">RFC Receptor</label>
								<div class="col-sm-3">
									<input name="rfcReceptor" class="form-control" id="inputReceptor" placeholder="RFC Receptor" 
										type="text">
								</div>
								<label for="inputNombreReceptor" class="col-sm-2 col-form-label">Raz&oacute;n Social</label>
								<div class="col-sm-4">
									<input name="nombreReceptor" class="form-control" id="inputNombreReceptor"
										placeholder="Raz&oacute;n Social" type="text">
								</div>
								<br><br><br>
								<div class="col-sm-12" align="center">
									<button type="submit" class="btn btn-success">B&uacute;scar</button>
								</div>
							</div>
						</div>
					</form>
            </div>

        </div>

        <div class="panel panel-primary">

            <div class="panel-heading">

                <h4 class="panel-title">

                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">B&uacute;scar por Periodo</a>

                </h4>

            </div>

            <div id="collapseThree" class="panel-collapse collapse">
				<form method="post">
					<div class="panel-body">
						<div class="form-group row">
							<label for="inputRFC" class="col-sm-3 col-form-label">Fecha Inicio</label>
							<div class="col-sm-3">
								<input name="fechaInicio" required="required" class="form-control" id="inputFechaInicio" 
									placeholder="Fecha Inicio" type="date"/>
							</div>
							<label for="inputRazon" class="col-sm-2 col-form-label">Fecha Fin</label>
							<div class="col-sm-4">
								<input name="fechaFin" required="required" class="form-control" id="inputFechaFin"
									placeholder="Fecha Fin" type="date">
							</div>
							<br><br><br>
							<div class="col-sm-12" align="center">
								<button type="submit" class="btn btn-success">B&uacute;scar</button>
							</div>
						</div>
					</div>
				</form>
            </div>

        </div>
		
    </div>
	
	</div>

		</div>
	</div>
		<div class="panel panel-primary" align="center" id="idTableComprobantes">
			<div class="panel-heading" align="center" style="font: bold;">Lista de Comprobantes</div>
			<table id="table" style="font-size: medium;" class="display">
				<thead>
					<tr align="center">
						<th>Folio</th>
						<th>Subtotal</th>
						<th>Total</th>
						<th>Lugar de Expedición</th>
						<th>RFC Emisor</th>
						<th>Nombre Emisor</th>
						<th>RFC Receptor</th>
						<th>Nombre Receptor</th>
						<th>Fecha Timbrado</th>
						<th>Tipo de Comprobante</th>
						<th colspan="2">Archivos</th>
					</tr>
				</thead>
				<tfoot>
					<tr align="center">
						<th>Folio</th>
						<th>Subtotal</th>
						<th>Total</th>
						<th>Lugar de Expedición</th>
						<th>RFC Emisor</th>
						<th>Nombre Emisor</th>
						<th>RFC Receptor</th>
						<th>Nombre Receptor</th>
						<th>Fecha Timbrado</th>
						<th>Tipo de Comprobante</th>
						<th colspan="2">Archivos</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach items="${comprobantesList}" var="comprobantes">
						<tr align="center">
							<td><c:out value="${comprobantes.folio}"/></td>
							<td><c:out value="${comprobantes.subtotal}"/></td>
							<td><c:out value="${comprobantes.total}"/></td>
							<td><c:out value="${comprobantes.lugarExpedicion}"/></td>
							<td><c:out value="${comprobantes.rfcEmisor}"/></td>
							<td><c:out value="${comprobantes.nombreEmisor}"/></td>
							<td><c:out value="${comprobantes.rfcReceptor}"/></td>
							<td><c:out value="${comprobantes.nombreReceptor}"/></td>
							<td><fmt:formatDate value="${comprobantes.fechaTimbrado}" pattern="dd/MM/yyyy"/> </td>
							<td><c:out value="${comprobantes.tipoComprobante}" /></td>
							<td>
								<a href="<c:url value='/redirectObtieneXML/${comprobantes.uuid}' />" >
									XML
								</a>
							</td>
							<td>
								<a target="_blank" href="<c:url value='/redirectObtienePDF/${comprobantes.uuid}' />">
									PDF
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	<%@ include file="common/footer.jspf" %>