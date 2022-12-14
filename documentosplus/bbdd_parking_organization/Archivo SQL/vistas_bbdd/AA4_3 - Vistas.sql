-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
-- VISTAS -> PRIVACIDAD DE LA INFO, OPTIMIZAR BBDD, ENTORNO DE PRUEBAS				  -- 
-- 		SE CREA UN ACCESO DIRECTO PARA NO OBLIGAR AL MOTOR DE BBDD A CONSULTAR		  --
-- 		#  VIEW (CONSULTAS FRECUENTES)												  --
-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------
-- CREAR VISTAS
-- -------------------------------------------------------------------------------------
## Crear la vista que contiene solo los Apartamentos Modernos
-- -------------------------------------------------------------------------------------
CREATE VIEW apartamento_moderno AS 
SELECT * FROM apartamento
WHERE interiorApartamento = 'Moderno';

-- -------------------------------------------------------------------------------------
## Crear la vista que contiene solo los Parqueaderos Disponibles
-- -------------------------------------------------------------------------------------
CREATE VIEW parqueaderos_disponibles AS 
SELECT * FROM parqueadero
WHERE estadoParqueadero = 'Disponible';

-- -------------------------------------------------------------------------------------
## Crear la vista que contiene solo los Vehiculos que son Moto
-- -------------------------------------------------------------------------------------
CREATE VIEW vehiculos_motos AS 
SELECT placavehiculo,tipoVehiculo, marcaVehiculo, cilindrajeVehiculo FROM vehiculo
WHERE tipoVehiculo = 'Moto';
-- -------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------
-- MODIFICAR VISTA (Ejemplo)
-- -------------------------------------------------------------------------------------
## Modificar la vista Parqueaderos_Disponibles
-- -------------------------------------------------------------------------------------
ALTER VIEW parqueaderos_disponibles AS
SELECT idParqueadero, usoParqueadero, estadoParqueadero FROM parqueadero
WHERE estadoParqueadero = 'Mantenimiento';
-- -------------------------------------------------------------------------------------

-- -------------------------------------------------------------------------------------
-- ACTUALIZAR VISTA (Ejemplo)
-- -------------------------------------------------------------------------------------
## Actualizar un art??culo y comprobar la vista (vehiculos_motos)
-- -------------------------------------------------------------------------------------
UPDATE vehiculo SET cilindrajeVehiculo = cilindrajeVehiculo + 10 
WHERE marcaVehiculo = 'Ducati';

-- -------------------------------------------------------------------------------------
-- ELIMINAR VISTAS (Ejemplo)
-- -------------------------------------------------------------------------------------
## Eliminar la vista apartamento_moderno
-- -------------------------------------------------------------------------------------
DROP VIEW apartamento_moderno;
-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
## Eliminar la vista parqueaderos_disponibles
-- -------------------------------------------------------------------------------------
DROP VIEW parqueaderos_disponibles;
-- -------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
## Eliminar la vista vehiculos_motos
-- -------------------------------------------------------------------------------------
DROP VIEW vehiculos_motos;
-- -------------------------------------------------------------------------------------


