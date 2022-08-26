// Cambiar cuando se hace click
const botones = document.querySelectorAll(".ocul-navbar");
const cuandoSeHaceClick = function (evento) {	
	if (screen.width < 992) {
		document.getElementById("navbarSupportedContent").classList.toggle('show');		
	}
}
// botones es un arreglo así que lo recorremos
botones.forEach(boton => {
	//Agregar listener
	boton.addEventListener("click", cuandoSeHaceClick);	
});

// Iniciar Sesión
// form  = document.getElementById('enviar');
// form.addEventListener('submit', function (event) {
// 	usuario  = document.getElementById('usuario').value;	
// 	contrasena  = document.getElementById('contrasena').value;
	
// 	if (usuario == "admin@correo.com" && contrasena == 12345) {		
// 		window.location = 'app/index_admin.html';
// 		event.preventDefault();
// 	} else {
// 		alert("Datos Incorrectos");
// 		document.getElementById('contrasena').value = "";
// 		document.getElementById('usuario').value = "";		
// 		event.preventDefault();		
// 	}		
// });

// Registro
form2  = document.getElementById('registro');
form2.addEventListener('submit', function (event) {
	nombres  = document.getElementById('nombres').value;
	apellidos  = document.getElementById('apellidos').value;
	correo  = document.getElementById('correo').value;
	contrasena  = document.getElementById('contrasena_reg').value;
	confirmacion  = document.getElementById('confirmacion').value;
	
	if (nombres != "" && apellidos != "" && correo != "" && contrasena != "" && confirmacion != "") {
		if (contrasena == confirmacion) {
			alert("Los datos fueron enviados exitosamente, espere el correo del Administrador para iniciar sesión");
		} else {
			alert("La contraseña es incorrecta, no coincide con el campo de confirmación");
			document.getElementById('confirmacion').value = "";
			event.preventDefault();		
		}
	} else {
		alert("Llene los campos con los datos correctos");
		event.preventDefault();		
	}		
});
