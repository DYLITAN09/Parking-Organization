<?php session_start();
	require_once 'model/model_dto/UserDto.php';
	require_once 'model/model_dao/UserDao.php';
	class Parking {
		private $userDao;
		private $module;
		public function __construct(){
			$this->userDao = new UserDao;
			$this->module = $_SESSION['module'];
		}
		public function index(){
			if (isset($_SESSION['userDto']) && $userDto->getIdRol() != 2) {
				require_once 'view/roles/'.$this->module.'/header.php';
				require_once 'view/modules/3_parking/parking.create.view.php';
				require_once 'view/roles/'.$this->module.'/footer.php';
			} else {
				header('Location: ?');	
			}
		}		
// Crear Parqueadero
		public function create(){
			$userDto = unserialize($_SESSION['userDto']);
			if (isset($_SESSION['userDto']) && ($userDto->getIdRol() == 1 || $userDto->getIdRol() == 4)) {
				if ($_SERVER['REQUEST_METHOD'] == 'GET') {
					require_once 'view/roles/'.$this->module.'/header.php';
					require_once 'view/modules/3_parking/parking.create.view.php';
					require_once 'view/roles/'.$this->module.'/footer.php';
				} elseif ($_SERVER['REQUEST_METHOD'] == 'POST') {
					$userDto = new UserDto;
					$userDto->setIdParqueadero($_POST['idParqueadero']);				
					$userDto->setTipoParqueadero($_POST['tipoParqueadero']);
					$userDto->setUsoParqueadero($_POST['usoParqueadero']);
					$userDto->setEstadoParqueadero($_POST['estadoParqueadero']);
					$userDto->setPlacaVehiculoFK($_POST['placaVehiculoFK']);
					$this->userDao->create($userDto);
					header('Location: ?c=Parking&a=create');				
				}
			} else {
				header('Location: ?');
			}
		}
		// Consultar Parqueadero
		public function read(){
			$userDto = unserialize($_SESSION['userDto']);
			if (isset($_SESSION['userDto']) && ($userDto->getIdRol() == 1 || $userDto->getIdRol() == 4)) {
				$users = $this->userDao->read();
				require_once 'view/roles/'.$this->module.'/header.php';
				require_once 'view/modules/3_parking/parking.read.view.php';
				require_once 'view/roles/'.$this->module.'/footer.php';
			} else {
				header('Location: ?');
			}
		}
		// Actualizar Parqueadero
		public function update(){
			$userDto = unserialize($_SESSION['userDto']);
			if (isset($_SESSION['userDto']) && ($userDto->getIdRol() == 1 || $userDto->getIdRol() == 4)) {
				if ($_SERVER['REQUEST_METHOD'] == 'GET') {
					$user = $this->userDao->getById($_GET['idParqueadero']);
					$perfil = ['admin', 'user', 'customer', 'seller'];
					$estado = ['inactivo', 'activo'];
					require_once 'view/roles/'.$this->module.'/header.php';
					require_once 'view/modules/3_parking/parking.update.view.php';
					require_once 'view/roles/'.$this->module.'/footer.php';				
				} elseif ($_SERVER['REQUEST_METHOD'] == 'POST') {
					$userDto = new UserDto;
					$userDto->setIdParqueadero($_POST['idParqueadero']);				
					$userDto->setTipoParqueadero($_POST['tipoParqueadero']);				
					$userDto->setUsoParqueadero($_POST['usoParqueadero']);
					$userDto->setEstadoParqueadero($_POST['estadoParqueadero']);
					$userDto->setPlacaVehiculoFK($_POST['placaVehiculoFK']);
					$this->userDao->update($userDto);
					header('Location: ?c=Parking&a=read');
				}
			} else {
				header('Location: ?');
			}
		}
		// Eliminar Parqueadero
		public function delete(){
			$userDto = unserialize($_SESSION['userDto']);
			if (isset($_SESSION['userDto']) && $userDto->getIdRol() == 1) {
				$this->userDao->delete($_GET['idUser']);
				header('Location: ?c=Parking&a=read');
			} else {
				header('Location: ?c=Parking&a=read');
			}
		}		
	}


