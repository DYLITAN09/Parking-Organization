-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- DDL: LENGUAJE DE DEFINICIÓN DE DATOS (ESTRUCTURA)
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
## Crear la Base de datos (CREATE DATABASE)
-- ---------------------------------------------------------------------------------------------
CREATE DATABASE bbdd_parking_organization;
-- ---------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- Crear una Tabla (Create TABLE usuario)
-- ---------------------------------------------------------------------------------------------
CREATE TABLE Usuario (
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

-- ---------------------------------------------------------------------------------------------
-- Crear una Tabla (Create TABLE parqueaderos_nuevos)
-- ---------------------------------------------------------------------------------------------
CREATE TABLE parqueadero_nuevos (
  idParqueadero INT(11) NOT NULL AUTO_INCREMENT,
  tipoParqueadero VARCHAR(7) NOT NULL,
  usoParqueadero VARCHAR(8) NOT NULL,
  estadoParqueadero VARCHAR(13) NOT NULL,
  idUsuarioFK INT(11) NOT NULL,
  placaVehiculoFK VARCHAR(6) NOT NULL,
  PRIMARY KEY (idParqueadero)
) ENGINE = InnoDB;

-- --------------------------------------------------------------------------------------------
## Crear una nueva tabla de solo los Vehiculos que sean Coches
-- --------------------------------------------------------------------------------------------
CREATE TABLE vehiculo_coche SELECT * FROM vehiculo
WHERE tipoVehiculo = 'Coche'
-- --------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- AGREGAR UN CAMPO DE UNA TABLA (ALTER TABLE, ADD, COLUMN)
-- ---------------------------------------------------------------------------------------------
## Agregar campo a una tabla
-- ---------------------------------------------------------------------------------------------
ALTER TABLE usuario ADD COLUMN hijos INT(11);
-- ---------------------------------------------------------------------------------------------


-- ---------------------------------------------------------------------------------------------
-- MODIFICAR UN CAMPO DE UNA TABLA (ALTER TABLE, CHANGE, COLUMN)
-- --------------------------------------------------------------------------------------------
ALTER TABLE apartamento CHANGE interiorApartamento interiorApartamento VARCHAR(50);
-- --------------------------------------------------------------------------------------------


-- --------------------------------------------------------------------------------------------
-- AGREGAR UN CAMPO DE UNA TABLA CON UN VALOR POR DEFECTO (SET DEFAULT)
-- ---------------------------------------------------------------------------------------------
## Agregar campo a una tabla con un valor por defecto
-- ---------------------------------------------------------------------------------------------
ALTER TABLE usuario ALTER COLUMN correoUsuario SET DEFAULT 'usuario@correo.com';
-- ---------------------------------------------------------------------------------------------


-- ---------------------------------------------------------------------------------------------
-- MODIFICAR UN CAMPO DE UNA TABLA CON UN VALOR POR DEFECTO (SET DEFAULT)
-- ---------------------------------------------------------------------------------------------
## Agregar campo a una tabla con un valor por defecto eliminando el mismo
-- ---------------------------------------------------------------------------------------------
ALTER TABLE usuario ALTER COLUMN correoUsuario DROP DEFAULT;
-- ---------------------------------------------------------------------------------------------


-- ---------------------------------------------------------------------------------------------
-- ELIMINAR UN CAMPO DE UNA TABLA (ALTER TABLE, DROP, COLUMN)
-- ---------------------------------------------------------------------------------------------
ALTER TABLE usuario DROP COLUMN telefijoUsuario;
-- ---------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ELIMINAR TABLAS Y BASES DE DATOS (DROP)
-- ---------------------------------------------------------------------------------------------
## Eliminar Tabla
-- ---------------------------------------------------------------------------------------------
DROP TABLE apartamento;
DROP TABLE detallenovedad;
DROP TABLE parqueadero;
DROP TABLE registrovisita;
DROP TABLE usuario;
DROP TABLE vehiculo;
DROP TABLE vehiculovisita;

----------------------------------------------------------------------------------------------
## Eliminar Base de Datos
-- ---------------------------------------------------------------------------------------------
DROP DATABASE bbdd_parking_organization;
-- ---------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------
-- ELIMINAR REGISTROS DE UNA TABLA (TRUNCATE)
-- ---------------------------------------------------------------------------------------------
## Eliminar todos los registros de una tabla
-- ---------------------------------------------------------------------------------------------
TRUNCATE apartamento;
TRUNCATE detallenovedad;
TRUNCATE parqueadero;
TRUNCATE registrovisita;
TRUNCATE usuario;
TRUNCATE vehiculo;
TRUNCATE vehiculovisita;
-- ---------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
## Renombrar la tabla usuario por cliente
-- ---------------------------------------------------------------------------------------------
RENAME TABLE usuario TO cliente;
-- ---------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------
## Renombrar la tabla Parqueadero por Aparcamiento
-- ---------------------------------------------------------------------------------------------
RENAME TABLE parqueadero TO aparcamiento;
-- ---------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------
-- Otras Acciones
-- ---------------------------------------------------------------------------------------------
## Mostrar bases de datos (SHOW DATABASES)
-- ---------------------------------------------------------------------------------------------
SHOW DATABASES;
-- ---------------------------------------------------------------------------------------------
## Usar base de datos (USE bbdd_parking_organization )
-- ---------------------------------------------------------------------------------------------
USE bbdd_parking_organization ;
-- ---------------------------------------------------------------------------------------------
## Mostrar Tablas (SHOW TABLES)
-- ---------------------------------------------------------------------------------------------
SHOW TABLES;
-- ---------------------------------------------------------------------------------------------
## Mostrar columnas de las Tablas (SHOW TABLES)
-- ---------------------------------------------------------------------------------------------
SHOW COLUMNS FROM apartamento;
SHOW COLUMNS FROM detallenovedad;
SHOW COLUMNS FROM parqueadero;
SHOW COLUMNS FROM registrovisita;
SHOW COLUMNS FROM usuario;
SHOW COLUMNS FROM vehiculo;
SHOW COLUMNS FROM vehiculovisita;
-- ---------------------------------------------------------------------------------------------
## Mostar cómo se crearon las tablas de la bbdd_parking_organization
-- ---------------------------------------------------------------------------------------------
SHOW CREATE TABLE apartamento;
SHOW CREATE TABLE detallenovedad;
SHOW CREATE TABLE parqueadero;
SHOW CREATE TABLE registrovisita;
SHOW CREATE TABLE usuario;
SHOW CREATE TABLE vehiculo;
SHOW CREATE TABLE vehiculovisita;
-- ---------------------------------------------------------------------------------------------
