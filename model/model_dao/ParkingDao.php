<?php 
	class UserDao{
		private $pdo;
		public function __construct(){
			try {
				$this->pdo = DataBase::conexion();				
			} catch (Exception $e) {
				die($e->getMessage());
			}
		}
		# Iniciar Sesión
		public function loginStart($userDto){
			$sql = 'SELECT * FROM usuarios WHERE
				usuario_correo = :userEmailLog AND
				usuario_pass = sha1(:userPassLog)';
			$dbh = $this->pdo->prepare($sql);
			$dbh->bindValue('userEmailLog', $userDto->getEmailUser());
			$dbh->bindValue('userPassLog', $userDto->getPassUser());
			$dbh->execute();
			$userDb = $dbh->fetch();
			if ($userDb) {
				$userDto = new UserDto(
					$userDb['id_rol'],
					$userDb['id_usuario'],
					$userDb['usuario_doc_identidad'],
					$userDb['usuario_nombres'],
					$userDb['usuario_apellidos'],
					$userDb['usuario_correo'],
					$userDb['usuario_pass'],
					$userDb['usuario_estado']
				);
				return $userDto;
			} else {
				return false;
			}
		}
 // Registrar o Crear Parqueadero
		public function create($userDto){
			try {
				// Crear la Consulta
				$sql = 'INSERT INTO parqueadero VALUES (
							:idParqueadero,
							:tipoParqueadero,
							:usoParqueadero,
							:estadoParqueadero,
							:placaVehiculoFK
						)';
				// Preparar la BBDD para la consulta
				$dbh = $this->pdo->prepare($sql);
				// Vincular los datos del objeto a la consulta de Inserción
				$dbh->bindValue('idParqueadero',$userDto->getIdParqueadero());			
				$dbh->bindValue('tipoParqueadero',$userDto->getTipoParqueadero());		
				$dbh->bindValue('usoParqueadero',$userDto->getUsoParqueadero());
				$dbh->bindValue('estadoParqueadero',$userDto->getEstadoParqueadero());
				$dbh->bindValue('placaVehiculoFK',$userDto->getPlacaVehiculoFK());
				// Ejecutar la consulta
				$dbh->execute();
			} catch (Exception $e) {
				die($e->getMessage());	
			}
		}
		# Consultar o Listar Parqueadero
		public function read(){
			try {
				$userList = [];
				$sql = 'SELECT * FROM parqueadero';
				$dbh = $this->pdo->query($sql);
				foreach ($dbh->fetchAll() as $user) {
					$userList[] = new ParkingDto(
						$user['id_parqueadero'],
						$user['tipo_parqueadero'],
						$user['uso_parqueadero'],
						$user['estado_parqueadero'],
						$user['placa_vehiculoFK']
					);					
				}
				return $userList;
			} catch (Exception $e) {
				die($e->getMessage());
			}
		}
		# Capturar el Id y traer el registro
		public function getById($idParqueadero){
			try {
				# Consulta
				$sql = "SELECT * FROM parqueadero WHERE id_parqueadero=:id_parqueadero";
				# Preparar la BBDD
				$dbh = $this->pdo->prepare($sql);
				# Vincular los datos
				$dbh->bindValue('id_parqueadero', $idParqueadero);
				# Ejecutar la consulta
				$dbh->execute();
				# Crear un objeto del registro la BBDD
				$userDb = $dbh->fetch();
				# Crear el objedo del modelo
				$user = new UserDto(
						$userDb['id_parqueadero'],
						$userDb['tipo_parqueadero'],
						$userDb['uso_parqueadero'],
						$userDb['estado_parqueadero'],
						$userDb['placa_vehiculoFK']
					);					
				);
				return $user;
			} catch (Exception $e) {
				die($e->getMessage());
			}
		}