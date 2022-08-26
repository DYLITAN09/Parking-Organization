-- -----------------------------------------------------
-- Estructura bbdd_parking_organization
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS bbdd_parking_organization 
DEFAULT CHARACTER SET utf8 ;
USE bbdd_parking_organization ;

-- -----------------------------------------------------
-- Tabla Usuario
-- -----------------------------------------------------
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


-- -----------------------------------------------------
-- Tabla Vehiculo
-- -----------------------------------------------------
CREATE TABLE Vehiculo (
  placaVehiculo VARCHAR(6) NOT NULL,
  tipoVehiculo VARCHAR(7) NOT NULL,
  marcaVehiculo VARCHAR(15) NOT NULL,
  modeloVehiculo DATE NOT NULL,
  colorVehiculo VARCHAR(15) NOT NULL,
  lineaVehiculo VARCHAR(15) NOT NULL,
  cilindrajeVehiculo VARCHAR(4) NOT NULL,
  PRIMARY KEY (placaVehiculo),
  UNIQUE INDEX placaVehiculo_UNIQUE (placaVehiculo ASC)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla Parqueadero
-- -----------------------------------------------------
CREATE TABLE Parqueadero (
  idParqueadero INT(11) NOT NULL AUTO_INCREMENT,
  tipoParqueadero VARCHAR(7) NOT NULL,
  usoParqueadero VARCHAR(8) NOT NULL,
  estadoParqueadero VARCHAR(13) NOT NULL,
  idUsuarioFK INT(11) NOT NULL,
  placaVehiculoFK VARCHAR(6) NOT NULL,
  PRIMARY KEY (idParqueadero),
  INDEX ind_parqueadero_usuario (idUsuarioFK ASC),
  INDEX ind_parqueadero_vehiculo (placaVehiculoFK ASC),
  UNIQUE INDEX idParqueadero_UNIQUE (idParqueadero ASC),
  CONSTRAINT fk_parqueadero_usuario
    FOREIGN KEY (idUsuarioFK)
    REFERENCES bbdd_parking_organization.Usuario (idUsuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_parqueadero_vehiculo
    FOREIGN KEY (placaVehiculoFK)
    REFERENCES bbdd_parking_organization.Vehiculo (placaVehiculo)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla Apartamento
-- -----------------------------------------------------
CREATE TABLE Apartamento (
  idApartamento INT(11) NOT NULL AUTO_INCREMENT,
  interiorApartamento VARCHAR(12) NOT NULL,
  numeroApartamento VARCHAR(3) NOT NULL,
  idUsuarioFK INT(11) NOT NULL,
  PRIMARY KEY (idApartamento),
  UNIQUE INDEX idApartamento_UNIQUE (idApartamento ASC),
  INDEX ind_apartamento_usuario (idUsuarioFK ASC),
  CONSTRAINT fk_apartamento_usuario
    FOREIGN KEY (idUsuarioFK)
    REFERENCES bbdd_parking_organization.Usuario (idUsuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla RegistroVisita
-- -----------------------------------------------------
CREATE TABLE RegistroVisita (
  idRegVisita INT(11) NOT NULL AUTO_INCREMENT,
  idUsuarioFK INT(11) NOT NULL,
  idApartamentoFK INT(11) NOT NULL,
  UNIQUE INDEX idRegVisita_UNIQUE (idRegVisita ASC),
  INDEX ind_registrovisita_apartamento (idApartamentoFK ASC),
  INDEX ind_registrovisita_usuario (idUsuarioFK ASC),
  PRIMARY KEY (idRegVisita),
  CONSTRAINT fk_registrovisita_apartamento
    FOREIGN KEY (idApartamentoFK)
    REFERENCES bbdd_parking_organization.Apartamento (idApartamento)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_registrovisita_usuario
    FOREIGN KEY (idUsuarioFK)
    REFERENCES bbdd_parking_organization.Usuario (idUsuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla VehiculoVisita
-- -----------------------------------------------------
CREATE TABLE VehiculoVisita (
  placaVehiculoFK VARCHAR(6) NULL,
  idRegVisitaFK INT(11) NULL,
  INDEX ind_vehiculovisita_vehiculo (placaVehiculoFK ASC),
  INDEX ind_vehiculovisita_registrovisita (idRegVisitaFK ASC),
  CONSTRAINT fk_vehiculovisita_vehiculo
    FOREIGN KEY (placaVehiculoFK)
    REFERENCES bbdd_parking_organization.Vehiculo (placaVehiculo)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_vehiculovisita_registrovisita
    FOREIGN KEY (idRegVisitaFK)
    REFERENCES bbdd_parking_organization.RegistroVisita (idRegVisita)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla DetalleNovedad
-- -----------------------------------------------------
CREATE TABLE DetalleNovedad (
  idNovedad INT(11) NOT NULL AUTO_INCREMENT,
  tipoNovedad VARCHAR(7) NOT NULL,
  fechaNovedad DATE NOT NULL,
  horaNovedad TIME NOT NULL,
  idRegVisitaFK INT(11) NULL,
  PRIMARY KEY (idNovedad),
  UNIQUE INDEX idNovedad_UNIQUE (idNovedad ASC),
  INDEX ind_detallenovedad_registrovisita (idRegVisitaFK ASC),
  CONSTRAINT fk_detallenovedad_registrovisita
    FOREIGN KEY (idRegVisitaFK)
    REFERENCES bbdd_parking_organization.RegistroVisita (idRegVisita)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;
