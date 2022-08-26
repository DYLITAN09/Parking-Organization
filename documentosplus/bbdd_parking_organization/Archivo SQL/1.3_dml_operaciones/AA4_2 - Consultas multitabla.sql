---------------------------------------------------------------------------------------------------------------------------------
--  CONSULTAS DE SELECCIÓN --> EN MÁS DE UNA TABLA (MULTITABLA):				 
--	## UNION EXTERNA (UNION, UNION ALL)											 
--	## UNION INTERNA (INNER JOIN, LEFT JOIN, RIGHT JOIN)
--	## SUBCONSULTAS															

-- ------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAS DE SELECCIÓN:
-- UNIÓN EXTERNA (UNION Y UNION ALL)
-- ------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de la tabla parqueadero, donde el tipo sea igual a
-- Privado; una el resultado con la selección de todos los campos de parqueadero_nuevo,  
-- donde el tipoParqueadero sea igual a Privado
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero WHERE tipoParqueadero = 'Privado' UNION 
SELECT * FROM parqueadero_nuevos WHERE tipoParqueadero = 'Privado' 

-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de parqueadero, donde el estadoParqueadero sea Disponible 
-- y en parqueadero_nuevos el usoParqueadero sea igual a Motos.
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero WHERE estadoParqueadero = 'Disponible' UNION 
SELECT * FROM parqueadero_nuevos WHERE usoParqueadero = 'Motos'

-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos de parqueadero, donde el tipoParqueadero sea igual a Comunal y en
-- la tabla parqueadero_nuevos, todos los campos del mismo
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero WHERE tipoParqueadero = 'Comunal' UNION
SELECT * FROM parqueadero_nuevos

-- ------------------------------------------------------------------------------------------------------------------------------
## Seleccione todos los campos parqueadero, donde el usoParqueadero sea igual a Carro y en 
-- parqueadero_nuevos, todos los parqueaderos incluyendo repeticiones
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero WHERE usoParqueadero = 'Carro' UNION ALL
SELECT * FROM parqueadero_nuevos
-- ------------------------------------------------------------------------------------------------------------------------------



-- ------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAS DE SELECCIÓN:
-- UNION INTERNA (INNER JOIN)
-- ------------------------------------------------------------------------------------------------------------------------------
## Vehiculos (Placas) que han presentado Visitas
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo FROM vehiculo INNER JOIN vehiculovisita
ON vehiculo.placavehiculo = vehiculovisita.placaVehiculoFK

-- ------------------------------------------------------------------------------------------------------------------------------
## Vehiculos (Placas) que han presentado Visitas sin repeticiones
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT DISTINCT placavehiculo FROM vehiculo INNER JOIN vehiculovisita
ON vehiculo.placavehiculo = vehiculovisita.placaVehiculoFK

-- ------------------------------------------------------------------------------------------------------------------------------
## Vehiculos (Placas) que tengan Parqueadero donde la Placa sea diferente de NA
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo INNER JOIN parqueadero 
ON vehiculo.placavehiculo = parqueadero.placaVehiculoFK
WHERE placaVehiculo NOT LIKE 'NA%'


-- ------------------------------------------------------------------------------------------------------------------------------
## Registros de Visitas que tienen un Detalle de Novedad sobre Ingreso 
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM registrovisita INNER JOIN detallenovedad 
ON registrovisita.idRegVisita = detallenovedad.idRegVisitaFK
WHERE tipoNovedad LIKE 'Ingreso'


-- ------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAS DE SELECCIÓN:
-- UNION INTERNA (LEFT JOIN)
-- ------------------------------------------------------------------------------------------------------------------------------
## Aquellos Vehiculos que tengan asignado un Parqueadero sin que el mismo tenga NA.
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT placaVehiculo, tipoVehiculo, marcaVehiculo,colorVehiculo FROM vehiculo
LEFT JOIN parqueadero
ON vehiculo.placaVehiculo = parqueadero.placavehiculoFK
WHERE placaVehiculo NOT LIKE 'NA%'

-- ------------------------------------------------------------------------------------------------------------------------------
## Aquellos Vehiculo que NO tienen Parqueadero
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
LEFT JOIN parqueadero
ON vehiculo.placaVehiculo = parqueadero.placavehiculoFK
WHERE placaVehiculo LIKE 'NA%'

-- ------------------------------------------------------------------------------------------------------------------------------
## Todos los parqueaderosNuevos en Mantenimiento y que tengan vehiculos.
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero_nuevos LEFT JOIN vehiculo 
ON parqueadero_nuevos.placavehiculoFK = vehiculo.placaVehiculo
WHERE estadoParqueadero = 'Mantenimiento' ORDER BY parqueadero_nuevos.placavehiculoFK
-- ------------------------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------------------------------------------------
## Todos los parqueaderosNuevos Disponibles y que NO tengan vehiculos.
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero_nuevos LEFT JOIN vehiculo 
ON parqueadero_nuevos.placavehiculoFK = vehiculo.placaVehiculo
WHERE estadoParqueadero = 'Disponible' AND placavehiculoFK LIKE 'NA%'
ORDER BY parqueadero_nuevos.placavehiculoFK
-- ------------------------------------------------------------------------------------------------------------------------------


-- ------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAS DE SELECCIÓN:
-- UNION INTERNA (RIGHT JOIN)
-- ------------------------------------------------------------------------------------------------------------------------------
## Aquellos parqueaderos que NO tienen asignado un Vehiculo
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
RIGHT JOIN parqueadero
ON vehiculo.placaVehiculo = parqueadero.placavehiculoFK
WHERE placaVehiculo LIKE 'NA%'

-- ------------------------------------------------------------------------------------------------------------------------------
## Aquellos Parqueaderos que SI tienen Vehiculo
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM vehiculo
RIGHT JOIN parqueadero
ON vehiculo.placaVehiculo = parqueadero.placavehiculoFK
WHERE placaVehiculo NOT LIKE 'NA%'

-- ------------------------------------------------------------------------------------------------------------------------------
## Todos los Vehiculos que tienen ParqueaderoNuevo en Mantenimiento.
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero_nuevos RIGHT JOIN vehiculo 
ON parqueadero_nuevos.placavehiculoFK = vehiculo.placaVehiculo
WHERE estadoParqueadero = 'Mantenimiento' ORDER BY parqueadero_nuevos.placavehiculoFK
-- ------------------------------------------------------------------------------------------------------------------------------

-- ------------------------------------------------------------------------------------------------------------------------------
## No tengan vehiculos aquellos ParqueaderosNuevos Diponibles
-- ------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM parqueadero_nuevos RIGHT JOIN vehiculo 
ON parqueadero_nuevos.placavehiculoFK = vehiculo.placaVehiculo
WHERE estadoParqueadero = 'Disponible' AND placavehiculoFK LIKE 'NA%'
ORDER BY parqueadero_nuevos.placavehiculoFK
-- ------------------------------------------------------------------------------------------------------------------------------



