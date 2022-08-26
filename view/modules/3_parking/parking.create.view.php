<!-- Migas de Pan -->
<div class="row">
<div class="col p-0">
	<div aria-label="breadcrumb">
		<ol class="breadcrumb rounded-0 m-0 p-2">
			<li class="breadcrumb-item"><a href="?c=Dashboard">Inicio</a></li>
			<li class="breadcrumb-item">Módulo Parqueaderos</li>
			<li class="breadcrumb-item active" aria-current="page">Crear Parqueadero</li>
		</ol>
	</div>
</div>
</div>
<!-- Título -->
<div class="titulo row">
<div class="col p-2 border-bottom d-flex">
	<div class="col-7 p-0 d-flex justify-content-start align-items-center">
		<h5 class="m-0">Crear Parqueadero</h5>
	</div>
	<div class="col-5 d-flex justify-content-end align-items-center p-0">
		<a href="?c=Parking&a=read" class="btn btn-primary">Consultar Parqueadero</a>
	</div>				
</div>
</div>
<!-- Área Principal -->
<div class="section-pg row">
<div class="col p-2 bg-light">
	<form action="?c=Parking&a=create" method="post" class="card p-3 bg-light d-lg-flex justify-content-center w-100 border rounded p-2">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="id_parqueadero">Num Identificación del Parqueadero</label>
				<input type="text" class="form-control" name="idParqueadero" id="id_Parqueadero" placeholder="123456789">
			</div>
			<div class="form-group col-md-6">
				<label for="tipo_parqueadero">Tipo de Parqueadero</label>
				<input type="text" class="form-control" name="tipoParqueadero" id="tipo_Parqueadero" placeholder="Privado o Comunal">							
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="uso_parqueadero">Uso del Parqueadero</label>
				<input type="text" class="form-control" name="usoParqueadero" id="uso_parqueadero" placeholder="Carro o Moto">
			</div>
			<div class="form-group col-md-6">
				<label for="estado_parqueadero">Estado del Parqueadero</label>
				<input type="text" class="form-control" name="estadoParqueadero" id="estado_parqueadero" placeholder="Ocupado o Disponible">
			</div>
		</div>										
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="placa_vehiculoFK">Placa del Vehículo</label>
				<input type="text" class="form-control" name="placaVehiculoFK" id="placa_vehiculoFK" placeholder="Entre 5 y 8 caracteres">
			</div>
		</div>
		<button type="submit" class="btn btn-primary mb-2">Enviar</button>
		<button type="button" class="btn btn-dark" data-dismiss="modal" id="cerrar">Cerrar</button>						
	</form>
</div>
</div>