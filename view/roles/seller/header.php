<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Sistema de Información</title>
	<!-- Estilos -->
	<link rel="shortcut icon" href="assets/img/logo-circ.png">
	<link rel="shortcut icon" href="assets/img/css.png">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">	
	<link rel="stylesheet" href="assets/css/all.css">
	<link rel="stylesheet" href="assets/css/styles_dash.css">
	<link rel="stylesheet" href="assets/css/styles_pg.css">
</head>
<body>
	<div class="container">		
		<!-- Navegador -->
		<nav class="row sticky-top d-flex admin">
			<div class="logo col-lg-3 d-flex justify-content-center pt-3 border border-bottom-0">
				<img class="img-fluid" src="assets/img/logo-circ.png" alt="">
			</div>
			<div class="col-lg-9 p-0">
				<div class="navbar navbar-expand-lg navbar-light">
					<div class="navbar navbar-expand-lg navbar-light">
                <div id="btn-menu-lateral">
                   <i class="fas fa-minus-square fa-spin"></i>
                </div>			
					<button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon text-light"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
								<a class="nav-link text-white" href="#"><span class="sr-only">(current)</span></a>
							</li>
						</ul>
						<ul class="navbar-nav">
							<li class="nav-item active">
								<a class="nav-link text-white ocul-navbar" href="?c=Dashboard">Inicio <span class="sr-only">(current)</span></a>
							</li>
						</ul>
						<ul class="navbar-nav">							
							<li class="nav-item">
								<a class="nav-link text-white ocul-navbar" href="5_others/correo.html" target="area_trabajo">Correo</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white ocul-navbar" href="5_others/calendario.html" target="area_trabajo">Calendario</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white ocul-navbar" href="5_others/actividades.html" target="area_trabajo">Actividades</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Guarda de Seguridad
								</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
									<a class="dropdown-item ocul-navbar" href="1_users/configurar_usuario.html" target="area_trabajo">Configuración</a>
									<a class="dropdown-item ocul-navbar" href="?c=Logout">Cerrar Sesión</a>
								</div>
							</li>						
						</ul>						
					</div>
				</div>
			</div>
		</nav>
		<!-- Principal -->
		<section id="principal" class="row bg-success border">
			<!-- Panel lateral -->
			<aside id="panel-lateral" class="col-12 col-lg-3 p-0">
				<div class="logosena col-12 text-center p-0">
					<img id="img-ocul" class="p-3" src="assets/img/logo-usuar.png" alt="">
                    <h6>Sesión Iniciada: Guarda de Seguridad</h6>
				</div>
				<div id="modulos" class="modulos col-12 p-0">
					<div class="accordion" id="accordionExample">

						<div class="card">
                      <div class="card-header p-1 p-lg-0" id="headingTwo">
                          <h2 class="mb-0">
                         <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Gestión de Visitantes</button>
                          </h2>
                      </div>
                      <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample" style>
                        <div class="card-body p-lg-1">
                           <div class="card">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item p-0 bg-light">
                                    <a href="view/modules/2_visitors/registrar_visitante.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Registrar Visitante</a>
                                </li>
                                <li class="list-group-item p-0 bg-light">
                                    <a href="view/modules/2_visitors/consultar_visitante.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Consultar Visitante</a>
                                </li>
                                <li class="list-group-item p-0 bg-light">
                                    <a href="view/modules/2_visitors/actualizar_visitante.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Actualizar Visitante</a>
                                </li>
                                <li class="list-group-item p-0 bg-light">
                                    <a href="view/modules/2_visitors/eliminar_visitante.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Eliminar Visitante</a>
                                </li>
                            </ul> 
                           </div> 
                        </div>
                  </div>
              </div> 
                <div class="card">
                   <div class="card-header p-1 p-lg-0" id="headingThree">
                       <h2 class="mb-0">
                          <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Gestión de Parqueaderos</button> 
                       </h2>
                   </div>
                   <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample" style>
                       <div class="card-body p-lg-1">
                           <div class="card">
                               <ul class="list-group list-group-flush">
                                   <li class="list-group-item p-0 bg-light">
                                    <a href="?c=Parking&a=create" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Registrar Parqueadero</a>
                                   </li>
                                   <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/3_parking/consultar_parqueadero.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Consultar Parqueadero</a>  
                                   </li>
                                   <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/3_parking/actualizar_parqueadero.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Actualizar Parqueadero</a>  
                                   </li>
                                   <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/3_parking/eliminar_parqueadero.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Eliminar Parqueadero</a>  
                                   </li>
                               </ul>
                           </div>
                           </div>
                       </div>
                   </div>
                   <div class="card">
                       <div class="card-header p-1 p-lg-0" id="headingFour">
                           <h2 class="mb-0">
                              <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                            Gestión de Vehículos</button> 
                           </h2>
                       </div>
                       <div id="collapseFour" class="collapse show" aria-labelledby="headingFour" data-parent="#accordionExample" style>
                           <div class="card-body p-lg-1">
                               <div class="card">
                                   <ul class="list-group list-group-flush">
                                       <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/4_vehiculos/registrar_vehiculo.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Registrar Vehículo</a>
                                       </li>
                                      <li class="list-group-item p-0 bg-light">
                                        <a href="view/modules/4_vehiculos/consultar_vehiculo.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Consultar Vehículo</a>
                                      </li>
                                      <li class="list-group-item p-0 bg-light">
                                        <a href="view/modules/4_vehiculos/actualizar_vehiculo.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Actualizar Vehículo</a>
                                      </li>
                                      <li class="list-group-item p-0 bg-light">
                                        <a href="view/modules/4_vehiculos/eliminar_vehiculo.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Eliminar Vehículo</a>
                                      </li> 
                                   </ul>
                               </div>
                           </div>
                       </div>
                   </div>
                 <div class="card">
                   <div class="card-header p-1 p-lg-0" id="headingFive">
                       <h2 class="mb-0">
                          <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Gestión de Acceso Vehícular</button> 
                       </h2>
                   </div>
                   <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample" style>
                       <div class="card-body p-lg-1">
                           <div class="card">
                               <ul class="list-group list-group-flush">
                                   <li class="list-group-item p-0 bg-light">
                                    <a href="view/modules/5_acceso_vehicular/registrar_accesovehicular.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Registrar Acceso Vehícular</a>
                                   </li>
                                   <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/5_acceso_vehicular/consultar_accesovehicular.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Consultar Acceso Vehícular</a>  
                                   </li>
                                   <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/5_acceso_vehicular/actualizar_accesovehicular.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Actualizar Acceso Vehícular</a>  
                                   </li>
                                   <li class="list-group-item p-0 bg-light">
                                     <a href="view/modules/5_acceso_vehicular/eliminar_accesovehicular.php" target="area_trabajo" class="card-link d-block p-2 px-lg-3 py-lg-1 ocul-aside">Eliminar Acceso Vehícular</a>  
                                   </li>
                               </ul>
                           </div>
                           </div>
                       </div>
                   </div>
               </div>
            </div>
        </aside>
			<!-- Área trabajo -->
			<main id="area_principal" class="col-12 col-lg-9 p-0 border d-flex">
				<!-- Contenedor -->
				<div class="body-pg container-fluid">  