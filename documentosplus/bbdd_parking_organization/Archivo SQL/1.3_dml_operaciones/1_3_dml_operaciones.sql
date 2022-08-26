-- -------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------
-- DML: LENGUAJE DE MANIPULACIÓN DE DATOS 
-- -------------------------------------------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------------------------------------------
-- 2. Reemplace 5 registros mediante la sentencia (Replace-Consultas de Acción).
-- -------------------------------------------------------------------------------------------------------------------------
## 1-Reemplazar los datos del Usuario con código 10
-- -------------------------------------------------------------------------------------------------------------------------
REPLACE INTO usuario VALUES 
(10, "PA", "Juan David", "Ochoa Rico", "Guarda", 5201984002, 4520864, 'juanochoaric12@gmail.com', 'Po13a03m', 'Coordinador');

-- -------------------------------------------------------------------------------------------------------------------------
## 2-Reemplazar los datos del Apartamento con código 1
-- -------------------------------------------------------------------------------------------------------------------------
REPLACE INTO apartamento VALUES 
(1, "Antiguo", "1C", 1);

-- -------------------------------------------------------------------------------------------------------------------------
## 3-Reemplazar los datos del Detalle-Novedad con código 15
-- -------------------------------------------------------------------------------------------------------------------------
REPLACE INTO detallenovedad VALUES 
(15, "Salida", "2010-05-08", '21:34:12', 15);

-- -------------------------------------------------------------------------------------------------------------------------
## 4-Reemplazar los datos del Parqueadero con código 20 manteniendo los mismos para UsoParqueadero y PlacaVehiculo
-- -------------------------------------------------------------------------------------------------------------------------
REPLACE INTO parqueadero VALUES 
(20, "Comunal", "Motos", 'Mantenimiento', 20, 'SPL658');

-- -------------------------------------------------------------------------------------------------------------------------
## 5-Reemplazar solo el color, linea y la marca del carro cuya placa es RFE902 en la tabla Vehiculo.
-- -------------------------------------------------------------------------------------------------------------------------
REPLACE INTO vehiculo VALUES 
('RFE902', 'Carro', 'Kia', '2005-05-20', 'Rosado', 'Cerato', 1800);

-- -------------------------------------------------------------------------------------------------------------------------
-- 3. Realice 5 consultas generales y 15 especificas empleabdo la clausula (where).
-- -------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------
--  Las 5 consultas generales.
-- -------------------------------------------------------------------------------------------------------------------------
## 1-Seleccione todos (*) los campos de la tabla Vehiculo
-- -------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo;

-- -------------------------------------------------------------------------------------------------------------------------
## 2-Seleccione todos (*) los campos de la tabla detalleNovedad
-- -------------------------------------------------------------------------------------------------------------------------
SELECT * FROM detallenovedad;

-- -------------------------------------------------------------------------------------------------------------------------
## 3- Seleccione todos los parqueaderos que sean privados (Where y Like)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero
WHERE tipoParqueadero LIKE "%Privado%";

-- -------------------------------------------------------------------------------------------------------------------------
## 4- Seleccione todos los vehiculos que sean moto(Where y Like)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
WHERE tipoVehiculo LIKE "%Moto%";

-- -------------------------------------------------------------------------------------------------------------------------
## 5- Seleccione todos los campos DetalleNovedad donde la fecha de la Novedad esté entre '2004-12-30' y
-- '2010-05-08' (Where y Between)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT * FROM detallenovedad WHERE fechaNovedad BETWEEN '2004-12-30' AND '2010-05-08';

-- -------------------------------------------------------------------------------------------------------------------------
--  Las 15 consultas especificas.
-- -------------------------------------------------------------------------------------------------------------------------
## 1-Seleccione los campos idUsuario, nombresUsuario, apellidosUsuario  y contraseñaUsuario de la tabla usuario
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idUsuario, nombresUsuario, apellidosUsuario, contraseñaUsuario FROM usuario;

-- -------------------------------------------------------------------------------------------------------------------------
## 2-Seleccione los campos placaVehiculo, marcaVehiculo y cilindrajeVehiculo de la tabla vehiculo
-- -------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo, marcaVehiculo, cilindrajeVehiculo FROM vehiculo;

-- -------------------------------------------------------------------------------------------------------------------------
## 3-Seleccione los campos interiorApartamento y numeroApartamento de la tabla apartamento
-- -------------------------------------------------------------------------------------------------------------------------
SELECT interiorApartamento, numeroApartamento FROM apartamento;

-- -------------------------------------------------------------------------------------------------------------------------
## 4-Seleccione los campos idNovedad, tipoNovedad y fechaNovedad de la tabla detallenovedad
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idNovedad, tipoNovedad, fechaNovedad FROM detallenovedad;

-- -------------------------------------------------------------------------------------------------------------------------
## 5-Seleccione los campos idParqueadero, tipoParqueadero y estadoParqueadero de la tabla parqueadero
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idParqueadero, tipoParqueadero, estadoParqueadero FROM parqueadero;

-- -------------------------------------------------------------------------------------------------------------------------
## 6-Seleccione los campos tipoVehiculo y marcaVehiculo donde el tipo sea Carro de la tabla vehiculo (Where e Igual)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT tipoVehiculo, marcaVehiculo FROM vehiculo 
WHERE tipoVehiculo = 'Carro';

-- -------------------------------------------------------------------------------------------------------------------------
## 7-Seleccione los campos nombresUsuario, apellidosUsuario y tipoUsuario donde el tipoUsuario sea Residente de la 
-- tabla Usuario (Where e Igual)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT nombresUsuario, apellidosUsuario, tipoUsuario FROM usuario
WHERE tipoUsuario = 'Residente';

-- -------------------------------------------------------------------------------------------------------------------------
## 8-Seleccione los campos idNovedad, tipoNovedad y horaNovedad donde el tipoNovedad sea Salida de la 
-- tabla detallenovedad (Where e Igual)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idNovedad, tipoNovedad, horaNovedad FROM detallenovedad
WHERE tipoNovedad = 'Salida';

-- -------------------------------------------------------------------------------------------------------------------------
## 9-Seleccione los campos idParqueadero, usoParqueadero y estadoParqueadero donde el estadoParqueadero sea Ocupado 
-- o Mantenimiento de la  tabla parqueadero (Where y or)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idParqueadero, usoParqueadero, estadoParqueadero FROM parqueadero
WHERE estadoParqueadero = 'Ocupado' OR estadoParqueadero = 'Mantenimiento';

-- -------------------------------------------------------------------------------------------------------------------------
## 10-Seleccione los campos idUsuario, tipoDocUsuario, nombresUsuario y ApellidosUsuario donde el tipoDocUsuario sea PA
-- o CE de la tabla usuario (Where y or)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idUsuario, tipoDocUsuario, nombresUsuario, apellidosUsuario FROM usuario
WHERE tipoDocUsuario = 'PA' OR tipoDocUsuario = 'CE';

-- -------------------------------------------------------------------------------------------------------------------------
## 11-Seleccione los campos idApartamento y interiorApartamento donde el interiorAparamento sea Clasico
-- o Moderno de la tabla apartamento (Where y or)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT idApartamento, interiorApartamento FROM apartamento
WHERE interiorApartamento = 'Clasico' OR interiorApartamento = 'Moderno';

-- -------------------------------------------------------------------------------------------------------------------------
## 12-Seleccione los campos placaVehiculo, marcaVehiculo, modeloVehiculo y cilindrajeVehiculo donde el cilindrajeVehiculo
-- sea mayor a 1000 de la tabla vehiculo (Where y >)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo, marcaVehiculo, modeloVehiculo, cilindrajeVehiculo FROM vehiculo
WHERE cilindrajeVehiculo > 1000;

-- -------------------------------------------------------------------------------------------------------------------------
## 13-Seleccione los campos placaVehiculoFK y idRegVisitaFK donde la placaVehiculoFK
-- sea igual a BVA991 de la tabla vehiculoVisita (Where e =)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculoFK, idRegVisitaFK FROM vehiculovisita
WHERE placaVehiculoFK = 'BVA991';

-- -------------------------------------------------------------------------------------------------------------------------
## 14-Seleccione los campos marcaVehiculo y colorVehiculo donde la marcaVehiculo
-- sea igual a BMW de la tabla vehiculo (Where e =)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT marcaVehiculo, colorVehiculo FROM vehiculo
WHERE marcaVehiculo = 'BMW';

-- -------------------------------------------------------------------------------------------------------------------------
## 15-Seleccione los campos tipoParqueadero y estadoParqueadero donde el tipoParqueadero
-- sea igual a Comunal de la tabla parqueadero (Where e =)
-- -------------------------------------------------------------------------------------------------------------------------
SELECT tipoParqueadero, estadoParqueadero FROM parqueadero
WHERE tipoParqueadero = 'Comunal';

-- -----------------------------------------------------------------------------------------------------------------------------
## 4. Realice 7 consultas empleando operadores relaciones y logicos. Según aplique.
-- -----------------------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------------------------
## 1- Seleccione todos los Datos de los vehiculos que tienen un Cilindraje entre 500 y 3900 de la tabla vehiculo (Between y And)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo WHERE cilindrajeVehiculo BETWEEN 500 AND 3900;

-- -----------------------------------------------------------------------------------------------------------------------------
## 2- Seleccione todos los Datos de las Novedades que tienen una hora mayor a las 14:00:00 de la tabla detallenovedad (>)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT * FROM detallenovedad WHERE horaNovedad > '14:00:00';

-- -----------------------------------------------------------------------------------------------------------------------------
## 3- Seleccione todos los Datos de los vehiculos que son de color Rojo o Negro de la tabla vehiculo (= y OR)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
WHERE colorVehiculo = 'Rojo' OR colorVehiculo = 'Negro';

-- -----------------------------------------------------------------------------------------------------------------------------
## 4- Seleccione todos los datos que tengan una fecha menor a 2020-11-10 en la tabla detalleNovedad (<)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT * FROM detallenovedad WHERE fechaNovedad < '2020-11-10';

-- -----------------------------------------------------------------------------------------------------------------------------
## 5- Seleccione el campo IdApartamento y numero Apartamento donde numeroApartamento sea igual a 2A (=)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT idApartamento, numeroApartamento FROM apartamento WHERE numeroApartamento = '2A';

-- -----------------------------------------------------------------------------------------------------------------------------
## 6- Seleccione el campo placaVehiculo, marcaVehiculo y cilindrajeVehiculo donde cilindrajeVehiculo sea menor o igual a 1000 (<=)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo, marcaVehiculo, cilindrajeVehiculo FROM vehiculo WHERE cilindrajeVehiculo <= 1000;

-- -----------------------------------------------------------------------------------------------------------------------------
## 7- Seleccione el campo idParqueadero, usoParqueadero y estadoParqueadero donde estadoParqueadero 
-- sea Mantenimiento o Disponible (= y OR)
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT idParqueadero, usoParqueadero, estadoParqueadero FROM parqueadero
WHERE estadoParqueadero = 'Mantenimiento' OR estadoParqueadero = 'Disponible';

-- ------------------------------------------------------------------------------------------------------------------------------
## 5. Realice 3 consultas de columnas calculadas. Según aplique.
-- -----------------------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------------------------
## 1- Seleccione la placaVehiculo, marcaVehiculo y cilindrajeVehiculo de la tabla vehiculo y cree un campo 
-- calculado del cilindrajeVehiculo + 2 teniendo en cuenta que pueden aumentar su cilindraje
-- llamando el nuevo campo como nuevoCilindrajeVehiculo
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo, marcaVehiculo, cilindrajeVehiculo, cilindrajeVehiculo + 2 AS nuevoCilindrajeVehiculo 
FROM vehiculo

-- -----------------------------------------------------------------------------------------------------------------------------
## 2- Seleccione todos los datos de la tabla parqueadero agregando solo 1 fila de muestra, creando un campo 
-- calculado del conteo total de los estadoParqueadero que estan en Mantenimiento u ocupados restandolos con 25 (Total de Datos) 
-- obteniendo el total de los parqueaderos que SI estan disponibles llamando el nuevo campo como parqueaderoSiDisponibles
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT *, count(estadoParqueadero) - 25 AS parqueaderosSiDisponibles
FROM parqueadero
WHERE estadoParqueadero BETWEEN 'Mantenimiento' AND 'Ocupado';

-- -----------------------------------------------------------------------------------------------------------------------------
## 3- Seleccione la placaVehiculo, lineaVehiculo y modeloVehiculo de la tabla vehiculo, cree un campo
-- calculado de la diferencia de días entre la fecha almacenada y la fecha actual,
-- agrupandola por el tipoVehiculo = Carro
-- -----------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo, tipoVehiculo, lineaVehiculo, modeloVehiculo, 
DATE_FORMAT(NOW(),'%Y-%m-%d') AS dia_de_hoy, DATEDIFF(NOW(),modeloVehiculo) AS diferencia_dias 
FROM vehiculo WHERE tipoVehiculo = 'Carro';

-- ------------------------------------------------------------------------------------------------------------------------------
## 6. Realice 3 consultas empleando busqueda de patrones (like y not like). Según aplique.
-- ------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------
## 1- Seleccione el nombreUsuario, apellidosUsuario y tipoDocUsuario que tengan un tipoDocumento CC (Like)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT nombresUsuario, apellidosUsuario, tipoDocUsuario FROM usuario
WHERE tipoDocUsuario LIKE "%CC%";

-- ------------------------------------------------------------------------------------------------------------------------------
## 2- Seleccione los usuarios que tengan como ocupacionUsuario la de Arquitecto (Like)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM usuario
WHERE ocupacionUsuario LIKE "%Arquitecto%";

-- ------------------------------------------------------------------------------------------------------------------------------
## 3- Seleccione los vehiculos cuya marca inice con la letra D (Like)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
WHERE marcaVehiculo LIKE "D%";

-- ------------------------------------------------------------------------------------------------------------------------------
## Not Like
-- ------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------
## 1- Seleccione los vehiculos cuya placa NO inice con la letra J (Not Like)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
WHERE placaVehiculo NOT LIKE "J%";

-- ------------------------------------------------------------------------------------------------------------------------------
## 2- Seleccione los apartamentos cuyo interior NO sea Moderno (Not Like)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM apartamento
WHERE interiorApartamento NOT LIKE "%Moderno%";

-- ------------------------------------------------------------------------------------------------------------------------------
## 3- Seleccione el idParqueadero y usoParqueadero de aquellos parqueaderos cuyo uso NO sea para Carro (Not Like)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT idParqueadero, usoParqueadero FROM parqueadero
WHERE usoParqueadero NOT LIKE "%Carro%";


-- -----------------------------------------------------------------------------------------------------------------------------
## 7. Realice 5 consultas empleando la clausula (having) Y 
-- 8. Realiece 5 consultas por agrupamiento de registros (GroupBy).
-- -----------------------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------------------------
## 1- Seleccione todos los datos de vehiculo agrupados por la placa del mismo considerando aquellos que tengan un cilindraje
-- menor a 2000. (Having < MAX GROUP BY)
-- ------------------------------------------------------------------------------------- ----------------------------------------
SELECT *  FROM vehiculo
GROUP BY placaVehiculo
HAVING MAX(cilindrajeVehiculo) < 2000;

-- -----------------------------------------------------------------------------------------------------------------------------
## 2- Seleccione todos los datos de vehiculos agrupados por la placa del mismo considerando aquellos que tengan un cilindraje
-- con un valor mayor a 1500. (Having > MIN GROUP BY)
-- ------------------------------------------------------------------------------------- ----------------------------------------
SELECT *  FROM vehiculo
GROUP BY placaVehiculo
HAVING MIN(cilindrajeVehiculo) > 1500;

-- -----------------------------------------------------------------------------------------------------------------------------
## 3- Seleccione la placa, marca, color y cilindraje de vehiculos agrupados por la placa del mismo considerando aquellos que 
-- tengan un cilindraje con un valor menor o igual a 3000. (Having <= MAX GROUP BY)
-- ------------------------------------------------------------------------------------- ----------------------------------------
SELECT placavehiculo, marcaVehiculo, colorVehiculo, cilindrajeVehiculo  FROM vehiculo
GROUP BY placaVehiculo
HAVING MAX(cilindrajeVehiculo) <= 3000;

-- -----------------------------------------------------------------------------------------------------------------------------
## 4- Seleccione el tipoVehiculo, hallando el promedio del CilindrajeVehiculo que sera almacenado 
-- en un nuevo campo llamado media_cilindraje tomando y agrupando aquellos datos cuyo tipoVehiculo sea igual
-- a carro de la tabla vehiculo (AVG HAVING AS = GROUP BY)
-- ------------------------------------------------------------------------------------- ----------------------------------------
SELECT tipoVehiculo, AVG(cilindrajeVehiculo) AS media_cilindraje FROM vehiculo
GROUP BY tipoVehiculo HAVING tipoVehiculo = 'Carro';

-- -----------------------------------------------------------------------------------------------------------------------------
## 5- Seleccione el tipoVehiculo, hallando el total de los valores del campo CilindrajeVehiculo que sera almacenado 
-- en un nuevo campo llamado suma_cilindraje tomando y agrupando aquellos datos cuyo tipoVehiculo sea igual
-- a moto de la tabla vehiculo (SUM HAVING AS = GROUP BY)
-- ------------------------------------------------------------------------------------- ----------------------------------------
SELECT tipoVehiculo, SUM(cilindrajeVehiculo) AS suma_cilindraje FROM vehiculo
GROUP BY tipoVehiculo HAVING tipoVehiculo = 'Moto';



-- -----------------------------------------------------------------------------------------------------------------------------
## 9. Actualice 10 de los 25 registros ingresados.
-- -----------------------------------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------------------------------
## 1-Primer Registro- Actualizar todos los datos del Apartamento que tiene idApartamento 1
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE apartamento SET 
interiorApartamento = 'Moderno',
numeroApartamento = '1A',
idUsuarioFK = 1
WHERE idApartamento = 1; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 2-Segundo Registro- Actualizar todos los datos del Apartamento que tiene idApartamento 2
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE apartamento SET 
interiorApartamento = 'Antiguo',
numeroApartamento = '4A',
idUsuarioFK = 2
WHERE idApartamento = 2; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 3-Tercer Registro- Actualizar todos los datos del detalleNovedad que tiene idNovedad 12
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE detallenovedad SET 
tipoNovedad = 'Ingreso',
fechaNovedad = '2009-11-10',
horaNovedad = '12:43:10', 
idRegVisitaFK = 12
WHERE idNovedad = 12; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 4-Cuarto Registro- Actualizar todos los datos del detalleNovedad que tiene idNovedad 19
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE detallenovedad SET 
tipoNovedad = 'Salida',
fechaNovedad = '2011-03-12',
horaNovedad = '13:40:12', 
idRegVisitaFK = 19
WHERE idNovedad = 19; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 5-Quinto Registro- Actualizar el campo comunal por publico de la tabla parqueadero
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE parqueadero SET tipoParqueadero = 'Publico'
WHERE tipoParqueadero = 'Comunal';

-- -----------------------------------------------------------------------------------------------------------------------------
## - 6-Sexto Registro- Actualizar todos los datos del parqueadero que tiene idParqueadero 20
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE parqueadero SET 
tipoParqueadero = 'Privado',
usoParqueadero = 'Carro',
estadoParqueadero = 'Ocupado', 
idUsuarioFK = 20,
placaVehiculoFK = 'SPL658'
WHERE idParqueadero = 20; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 7-Septimo Registro- Actualizar todos los datos del usuario que tiene idUsuario 9
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE usuario SET 
tipoDocUsuario = 'CE',
nombresUsuario = 'Juliana Maria',
apellidosUsuario = 'Quiroz Roa', 
tipoUsuario = 'Residente',
telcelularUsuario = 1027620911,
telefijoUsuario = 8902387,
correoUsuario = 'julimar458@gmail.com',
contraseñaUsuario = '4Oeqp9Mt',
ocupacionUsuario = 'Ingeniera Quimica'
WHERE idUsuario = 9; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 8-Octavo Registro- Actualizar el campo PA por TI de la tabla usuario
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE usuario SET tipoDocUsuario = 'TI'
WHERE tipoDocUsuario = 'PA';

-- -----------------------------------------------------------------------------------------------------------------------------
## - 9-Noveno Registro- Actualizar todos los datos del Vehiculo cuya placa es HKS673
-- ------------------------------------------------------------------------------------- ----------------------------------------
UPDATE vehiculo SET 
tipoVehiculo = 'Carro',
marcaVehiculo = 'Renault', 
modeloVehiculo = '2021-11-08',
colorVehiculo = 'Amarillo',
lineaVehiculo = 'Logan',
cilindrajeVehiculo = 1400
WHERE placaVehiculo = 'HKS673'; 

-- -----------------------------------------------------------------------------------------------------------------------------
## - 10-Decimo Registro- Actualizar el campo Carro por Coche en la tabla Vehiculo
-- -----------------------------------------------------------------------------------------------------------------------------
UPDATE vehiculo SET tipoVehiculo = 'Coche'
WHERE tipoVehiculo = 'Carro';


-- -----------------------------------------------------------------------------------------------------------------------------
## 10. Elimine 5 registros.
-- -----------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------
## 1-Eliminar el usuario con idUsuario = 3
-- -------------------------------------------------------------------------------------------------------------------------------
DELETE FROM usuario WHERE idUsuario = 3;

-- -------------------------------------------------------------------------------------------------------------------------------
## 2-Eliminar el vehiculo con placaVehiculo = AXZ444
-- -------------------------------------------------------------------------------------------------------------------------------
DELETE FROM vehiculo WHERE placaVehiculo = 'AXZ444';

-- -------------------------------------------------------------------------------------------------------------------------------
## 3-Eliminar el Parqueadero con idParqueadero = 16
-- -------------------------------------------------------------------------------------------------------------------------------
DELETE FROM parqueadero WHERE idParqueadero = 16;

-- -------------------------------------------------------------------------------------------------------------------------------
## 4-Eliminar todos los Apartamentos que sean Moderno
-- -------------------------------------------------------------------------------------------------------------------------------
DELETE FROM apartamento WHERE interiorApartamento = 'Moderno';

-- -------------------------------------------------------------------------------------------------------------------------------
## 5-Eliminar los parqueaderos que tengan como estadoParqueadero Ocupado y Mantenimiento
-- -------------------------------------------------------------------------------------------------------------------------------
DELETE FROM parqueadero
WHERE estadoParqueadero = 'Ocupado' OR estadoParqueadero = 'Mantenimiento';

-- -------------------------------------------------------------------------------------------------------------------------------
## Insertar dos valores Nuevos en la Tabla Usuario
-- -------------------------------------------------------------------------------------------------------------------------------
INSERT INTO usuario VALUES
(NULL, 'CE', 'Johan Dario', 'Moran Taringo', 'Residente', 5316831632, 2345172, 'johanmoran@biblegateway.com', 'nMaQ6onz', 'Pintor'),
(NULL, 'CC', 'John Anderson', 'Coral Rey', 'Residente', 4513759001, 9146162, 'johnander@seattletimes.com', '1AwsQzcF', 'Coordinador')

-- -------------------------------------------------------------------------------------------------------------------------------
## Insertar dos valores Nuevos en la Tabla Vehiculo.
-- -------------------------------------------------------------------------------------------------------------------------------
INSERT INTO vehiculo VALUES
('YTO901', 'Carro', 'Honda', '2009-04-21', 'Verde', 'Civic', 2000),
('QWT321', 'Moto', 'Ducati', '2007-11-08', 'Amarillo', '950R', 1000)

-- -------------------------------------------------------------------------------------------------------------------------------
## Insertar dos valores Nuevos en la Tabla Parqueadero.
-- -------------------------------------------------------------------------------------------------------------------------------
INSERT INTO parqueadero VALUES
(null, 'Privado', 'Carro', 'Disponible', 26, 'YTO901'),
(null, 'Comunal', 'Motos', 'Ocupado', 27, 'QWT321')


-- -----------------------------------------------------------------------------------------------------------------------------
## 11. Ordene los datos en forma Descendente y Ascendente.(OrderBy ) según el criterio que aplique.
-- -----------------------------------------------------------------------------------------------------------------------------
-- TABLA APARTAMENTO
-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de la tabla apartamento donde el interiorApartamento  sea igual a 
-- 'Antiguo' y 'Clasico',tambien que lo ordene por el idApartamento (Descendente)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM apartamento 
WHERE interiorApartamento = 'Antiguo' OR interiorApartamento = 'Clasico' 
ORDER BY idApartamento DESC;

-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de la tabla apartamento donde el interiorApartamento  sea igual a 
-- 'Antiguo' y 'Clasico',tambien que lo ordene por el idApartamento (Ascendente)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM apartamento 
WHERE interiorApartamento = 'Antiguo' OR interiorApartamento = 'Clasico' 
ORDER BY idApartamento ASC;

---------------------------------------------------------------------------------------------------------------------------------
-- TABLA DETALLENOVEDAD
-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de la tabla detalleNovedad donde el tipoNovedad sea igual a 
-- 'Salida' y 'Ingreso',tambien que lo ordene por el idNovedad (Descendente)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM detallenovedad
WHERE tipoNovedad = 'Salida' OR tipoNovedad = 'Ingreso' 
ORDER BY idNovedad DESC;

-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de la tabla detalleNovedad donde el tipoNovedad sea igual a 
-- 'Salida' y 'Ingreso',tambien que lo ordene por el idNovedad (Ascendente)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM detallenovedad
WHERE tipoNovedad = 'Salida' OR tipoNovedad = 'Ingreso' 
ORDER BY idNovedad ASC;


---------------------------------------------------------------------------------------------------------------------------------
-- TABLA PARQUEADERO
-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione idParqueadero, usoParqueadero y estadoParqueadero de la tabla parqueadero donde el usoParqueadero sea igual a 
-- 'Motos',tambien que lo ordene por el idParqueadero (Descendente)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT idParqueadero, usoParqueadero, estadoParqueadero  FROM parqueadero
WHERE usoParqueadero = 'Motos' 
ORDER BY idParqueadero DESC;

-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione idParqueadero, usoParqueadero y estadoParqueadero de la tabla parqueadero donde el usoParqueadero sea igual a 
-- 'Motos',tambien que lo ordene por el idParqueadero (Ascendente)
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT idParqueadero, usoParqueadero, estadoParqueadero  FROM parqueadero
WHERE usoParqueadero = 'Motos' 
ORDER BY idParqueadero ASC;


