<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Empresa</title>
	<!-- Estilos -->
	<link rel="shortcut icon" href="assets/img/logo-circ.png">
	<link rel="stylesheet" href="assets/css/bootstrap.min1.css">	
	<link rel="stylesheet" href="assets/css/all.css">	
	<link rel="stylesheet" href="assets/css/styles.css">
	</head>
<body>
	<!-- Contenedor -->
	<div class="container">		
		<!-- Navegador -->		
		<nav class="navegacion row sticky-top d-flex">
			<div class="logo col-lg-3 d-flex justify-content-center p-0">
				<img class="img-fluid" src="assets/img/logo-prueba.jpg">
			</div>
			<div class="col-lg-9 p-0">
				<div class="navbar navbar-expand-lg navbar-light">
					<a class="navbar-brand" href="#"></a>
					<button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon text-light"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active">
								<a class="nav-link text-blue" href="#"><span class="sr-only">(current)</span></a>
							</li>
						</ul>
						<ul class="navbar-nav">
							<li class="nav-item active">
								<a class="nav-link text-blue ocul-navbar" href="#">Inicio <span class="sr-only">(current)</span></a>
							</li>
						</ul>
						<ul class="navbar-nav">							
							<li class="nav-item">
								<a class="nav-link text-blue ocul-navbar" href="#portafolio">Introducción</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-blue ocul-navbar" href="#nosotros" >Nosotros</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-blue ocul-navbar" href="#servicios">Servicios</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-blue ocul-navbar" href="#contactenos">Contáctenos</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle text-blue" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Ingreso
								</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
									<a class="dropdown-item ocul-navbar" href="#" data-toggle="modal" data-target="#iniciar-sesion">Iniciar Sesión</a>
									<a class="dropdown-item ocul-navbar" data-toggle="modal" data-target="#registro" href="#">Registro</a>
								</div>
							</li>						
						</ul>
						 <form class="d-flex">
        <input class="form-control me-sm-2" type="text" placeholder="Buscar">
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Buscar</button>
      </form>											
					</div>
				</div>
			</div>
		</nav>

		<!-- Formulario Modal Ingreso -->		
		<div class="modal fade" id="iniciar-sesion" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header color-sena">
						<h5 class="modal-title text-white" id="exampleModalLabel">Iniciar Sesión</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="?c=Login" method="post">
							<div class="form-group">
								<label for="usuario">usuario</label>
								<input type="email" name="userEmailLog" class="form-control" id="usuario" aria-describedby="emailHelp" value="admin@correo.com">
							</div>
							<div class="form-group">
								<label for="contrasena">Contraseña</label>
								<input type="password" name="userPassLog" class="form-control" id="contrasena" value="12345">
								<a href="recu-cont" data-toggle="modal" data-target="#recu-cont">¿Olvidaste la contraseña?</a>	
							</div>							
							<button type="submit" class="btn btn-primary">Enviar</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						</form>
					</div>					
				</div>
			</div>
		</div>
		<!-- Formulario modal-Olvidó de contraseña -->
		<div class="modal fade" id="recu-cont" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Recuperar Cuenta</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Correo de recuperación</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Repetir correo</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Recibir código al email</label>
  </div>
  <button type="submit" class="btn btn-primary">Enviar</button> <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
</form>
      </div>
    </div>
  </div>
</div>
		<!-- Formulario Modal Registro -->
		<div class="modal fade" id="registro" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header color-sena">
						<h5 class="modal-title text-white" id="exampleModalLabel">Registro</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="registro">
							<div class="form-row">
								<div class="form-group col-6">
									<label for="nombres">Nombres</label>
									<input type="text" class="form-control" id="nombres" placeholder="Nombres">
								</div>
								<div class="form-group col-6">
									<label for="apellidos">Apellidos</label>
									<input type="text" class="form-control" id="apellidos" placeholder="Apellidos">
								</div>
							</div>
							<div class="form-group">
								<label for="correo">E-Mail</label>
								<input type="email" class="form-control" id="correo" placeholder="usuario@correo.com">
							</div>
							<div class="form-row">
								<div class="form-group col-6">
									<label for="contrasena_reg">Contraseña</label>
									<input type="password" class="form-control" id="contrasena_reg" placeholder="Entre 5 y 8 caracteres">
								</div>
								<div class="form-group col-6">
									<label for="confirmacion">Confirmación</label>
									<input type="password" class="form-control" id="confirmacion" placeholder="Confirmar contraseña">
								</div>
							</div>
							<button type="submit" class="btn btn-primary">Enviar</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>							
						</form>
					</div>					
				</div>
			</div>
		</div>