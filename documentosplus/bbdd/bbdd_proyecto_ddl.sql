-- -----------------------------------------------------
-- Table .ROLES`
-- -----------------------------------------------------
CREATE TABLE ROLES (
  id_rol INT NOT NULL AUTO_INCREMENT,
  rol_nombre VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_rol)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table .`USUARIOS`
-- -----------------------------------------------------
CREATE TABLE USUARIOS (
  id_rol INT NOT NULL DEFAULT 2,
  id_usuario INT NOT NULL AUTO_INCREMENT,
  usuario_doc_identidad INT NOT NULL DEFAULT 0,
  usuario_nombres VARCHAR(100) NOT NULL,
  usuario_apellidos VARCHAR(100) NOT NULL,
  usuario_correo VARCHAR(100) NOT NULL,
  usuario_pass VARCHAR(200) NOT NULL,
  usuario_estado BIT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id_usuario),
  INDEX ind_usuario_rol (id_rol ASC),
  CONSTRAINT fk_usuario_rol
    FOREIGN KEY (id_rol)
    REFERENCES ROLES (id_rol)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table .`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE VEHICULO (
  id_cliente INT NOT NULL,
  placa_vehiculo VARCHAR(100) NOT NULL,
  tipo_vehiculo VARCHAR(100) NOT NULL,
  marca_vehiculo VARCHAR(100) NOT NULL,
  modelo_vehiculo DATE NOT NULL,
  color_vehiculo VARCHAR(20) NOT NULL,
  linea_vehiculo VARCHAR(20) NOT NULL,
  cilindraje_vehiculo VARCHAR(4) NOT NULL,
  INDEX ind_cliente_usuario (id_cliente ASC),
  PRIMARY KEY (id_cliente),
  CONSTRAINT fk_cliente_usuario
    FOREIGN KEY (id_cliente)
    REFERENCES USUARIOS (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table .`PARQUEADERO`
-- -----------------------------------------------------
CREATE TABLE PARQUEADERO (
  id_parqueadero INT NOT NULL,
  tipoParqueadero VARCHAR(7) NOT NULL,
  usoParqueadero VARCHAR(8) NOT NULL,
  estadoParqueadero VARCHAR(13) NOT NULL,
  placaVehiculoFK VARCHAR(6) NOT NULL,
  PRIMARY KEY (id_parqueadero),
  INDEX ind_parqueadero_usuario (id_parqueadero ASC),
  CONSTRAINT fk_parqueadero_usuario
    FOREIGN KEY (id_parqueadero)
    REFERENCES USUARIOS (id_usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table .`APARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE APARTAMENTO (
  id_apartamento INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  id_parqueadero INT NOT NULL,
  interiorApartamento VARCHAR(12) NOT NULL,
  numeroApartamento VARCHAR(3) NOT NULL,
  PRIMARY KEY (id_apartamento),
  INDEX ind_apartamento_vehiculo (id_cliente ASC),
  INDEX ind_apartamento_parqueadero (id_parqueadero ASC),
  CONSTRAINT fk_apartamento_vehiculo
    FOREIGN KEY (id_cliente)
    REFERENCES VEHICULO (id_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_apartamento_parqueadero
    FOREIGN KEY (id_parqueadero)
    REFERENCES PARQUEADERO (id_parqueadero)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;