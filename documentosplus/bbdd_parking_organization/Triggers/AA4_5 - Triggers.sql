-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Triggers o Disparadores- BBDD (Proyecto) 
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Crear Tabla de Usuarios Borrados y Actualizados
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE usuario_borrado_actualizado (
  idUsuario INT(11) NOT NULL AUTO_INCREMENT,
  tipoDocUsuario VARCHAR(2) NOT NULL,
  nombresUsuario VARCHAR(30) NOT NULL,
  apellidosUsuario VARCHAR(30) NOT NULL,
  tipoUsuario VARCHAR(13) NOT NULL,
  telcelularUsuario VARCHAR(10) NOT NULL,
  telefijoUsuario VARCHAR(7) NULL,
  correoUsuario VARCHAR(50) NOT NULL,
  contraseñaUsuario VARCHAR(8) NOT NULL,
  ocupacionUsuario VARCHAR(30) NOT NULL,
  PRIMARY KEY (idUsuario),
  UNIQUE INDEX idUsuario_UNIQUE (idUsuario ASC)
) ENGINE = InnoDB;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Disparador que despues de ELIMINAR un Usuario va a ingresar el mismo en la tabla Usuario_Borrado_Actualizado
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE TRIGGER insertarUsuario_tabla_new_ad
AFTER DELETE ON `usuario` 
FOR EACH ROW
BEGIN 
	INSERT INTO usuario_borrado_actualizado SET idUsuario = OLD.idUsuario, tipoDocUsuario = OLD.tipoDocUsuario, nombresUsuario = OLD.nombresUsuario,
	apellidosUsuario = OLD.apellidosUsuario, tipoUsuario = OLD.tipoUsuario, telcelularUsuario = OLD.telcelularUsuario, 
	telefijoUsuario = OLD.telefijoUsuario, correoUsuario = OLD.correoUsuario, contraseñaUsuario = OLD.contraseñaUsuario, 
	ocupacionUsuario = OLD.ocupacionUsuario; 
END//
DELIMITER ;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Para activar el Disparador insertarUsuario_tabla_new_ad
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM usuario 
WHERE idUsuario = 1;


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Disparador que despues de ACTUALIZAR un Usuario va a ingresar el mismo en la tabla Usuario_Borrado_Actualizado
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE TRIGGER usuarioInsertar_otra_tabla_au
AFTER UPDATE ON `usuario` 
FOR EACH ROW
BEGIN 
	INSERT INTO usuario_borrado_actualizado SET idUsuario = OLD.idUsuario, tipoDocUsuario = OLD.tipoDocUsuario, nombresUsuario = OLD.nombresUsuario,
	apellidosUsuario = OLD.apellidosUsuario, tipoUsuario = OLD.tipoUsuario, telcelularUsuario = OLD.telcelularUsuario, 
	telefijoUsuario = OLD.telefijoUsuario, correoUsuario = OLD.correoUsuario, contraseñaUsuario = OLD.contraseñaUsuario, 
	ocupacionUsuario = OLD.ocupacionUsuario; 
END//
DELIMITER ;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Para activar el Disparador usuarioInsertar_otra_tabla_au
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE usuario SET 
tipoDocUsuario = 'CC',
nombresUsuario = 'Nicole Tatiana',
apellidosUsuario = 'Florez Guzman', 
tipoUsuario = 'Residente',
telcelularUsuario = 1142461890,
telefijoUsuario = 3152618,
correoUsuario = 'nicoletatis@gmail.com',
contraseñaUsuario = '39QRtZcV',
ocupacionUsuario = 'Docente'
WHERE idUsuario = 17; 


-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Crear Tabla de Apartamentos Borrados y Actualizados
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE apartamento_borrado_actualizado (
  idApartamento INT(11) NOT NULL AUTO_INCREMENT,
  interiorApartamento VARCHAR(12) NOT NULL,
  numeroApartamento VARCHAR(3) NOT NULL,
  idUsuarioFK INT(11) NOT NULL,
  PRIMARY KEY (idApartamento)
) ENGINE = InnoDB;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Disparador que despues de ELIMINAR un apartamento va a ingresar el mismo en la tabla apartamento_Borrado_Actualizado
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE TRIGGER insertarApartamento_ad
AFTER DELETE ON `apartamento` 
FOR EACH ROW
BEGIN 
	INSERT INTO apartamento_borrado_actualizado SET idApartamento = OLD.idApartamento, interiorApartamento = OLD.interiorApartamento, 
	numeroApartamento = OLD.numeroApartamento, idUsuarioFK = OLD.idUsuarioFK;
END//
DELIMITER ;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Para activar el Disparador insertarApartamento_ad
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM apartamento
WHERE idApartamento = 10;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Disparador que despues de ACTUALIZAR un Apartamento va a ingresar el mismo en la tabla apartamento_Borrado_Actualizado
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELIMITER //
CREATE TRIGGER insertarApartamento_au
AFTER UPDATE ON `apartamento` 
FOR EACH ROW
BEGIN 
	INSERT INTO apartamento_borrado_actualizado SET idApartamento = OLD.idApartamento, interiorApartamento = OLD.interiorApartamento, 
	numeroApartamento = OLD.numeroApartamento, idUsuarioFK = OLD.idUsuarioFK;
END//
DELIMITER ;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Para activar el Disparador insertarApartamento_au
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
UPDATE apartamento SET 
interiorApartamento = 'Antiguo',
numeroApartamento = '4A',
idUsuarioFK = 6
WHERE idApartamento = 6; 

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Eliminar Los Disparadores
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DROP TRIGGER insertarUsuario_tabla_new_ad;
DROP TRIGGER usuarioInsertar_otra_tabla_au;
DROP TRIGGER insertarApartamento_ad;
DROP TRIGGER insertarApartamento_au;


