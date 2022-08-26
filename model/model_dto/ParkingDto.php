<?php 
	class UserDto {
	// Atributos Privados (Uso de la Clase)-Parqueadero
		private $idParqueadero;
		private $tipoParqueadero;
		private $usoParqueadero;
		private $estadoParqueadero;
		private $placaVehiculoFK;	
		// Constructor
		public function __construct(){
			$a = func_get_args();
			$i = func_num_args();
			if (method_exists($this, $f='__construct'.$i)) {
				call_user_func_array(array($this, $f), $a);
			}
		}
		public function __construct8($idParqueadero,$tipoParqueadero,$usoParqueadero,$estadoParqueadero,$placaVehiculoFK){
			$this->idParqueadero = $idParqueadero;
			$this->tipoParqueadero = $tipoParqueadero;
			$this->usoParqueadero = $usoParqueadero;
			$this->estadoParqueadero = $estadoParqueadero;
			$this->placaVehiculoFK = $placaVehiculoFK;
		}
		// Métodos SET y GET
		public function setIdParqueaderp($idParqueadero){
			$this->idParqueadero = $idParqueadero;
		}
		public function getIdParqueadero(){
			return $this->idParqueadero;
		}
		public function setTipoParqueadero($tipoParqueadero){
			$this->tipoParqueadero = $tipoParqueadero;
		}
		public function getTipoParqueadero(){
			return $this->tipoParqueadero;
		}
		public function setUsoParqueadero($usoParqueadero){
			$this->usoParqueadero = $usoParqueadero;
		}
		public function getUsoParqueadero(){
			return $this->usoParqueadero;
		}
		public function setEstadoParqueadero($estadoParqueadero){
			$this->estadoParqueadero = $estadoParqueadero;
		}
		public function getEstadoParqueadero(){
			return $this->estadoParqueadero;
		}
		public function setPlacaVehiculoFK($placaVehiculoFK){
			$this->placaVehiculoFK = $placaVehiculoFK;
		}
		public function getPlacaVehiculoFK(){
			return $this->placaVehiculoFK;
		}
	}