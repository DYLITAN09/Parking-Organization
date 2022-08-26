-- ------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAS DE SELECCIÓN:
-- SUBCONSULTA CORRELACIONADA (IN, NOT IN): 
-- ------------------------------------------------------------------------------------------------------------------------------
## Vehiculos que SI estan registrados (la placa) en el parqueadero cuyo estado es Disponible
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT tipoVehiculo, marcaVehiculo FROM vehiculo WHERE placaVehiculo IN
(SELECT placaVehiculoFK FROM parqueadero WHERE estadoParqueadero = 'Disponible')

-- ------------------------------------------------------------------------------------------------------------------------------
## Vehiculos que NO estan registrados (la placa) en el parqueadero cuyo estado es Disponible
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT tipoVehiculo, marcaVehiculo FROM vehiculo WHERE placaVehiculo NOT IN
(SELECT placaVehiculoFK FROM parqueadero WHERE estadoParqueadero = 'Disponible')

-- -------------------------------------------------------------------------------------
-- CONSULTAS DE SELECCIÓN (SUBCONSULTAS):
-- 		# ESCALONADA: Devuelve un único registro
-- -------------------------------------------------------------------------------------
## Placa y Marca de los Vehiculos cuyo cilindraje sea menor al promedio.
-- -------------------------------------------------------------------------------------
SELECT placaVehiculo, marcaVehiculo FROM vehiculo 
WHERE cilindrajeVehiculo < (SELECT AVG(cilindrajeVehiculo) FROM vehiculo)
-- -------------------------------------------------------------------------------------
