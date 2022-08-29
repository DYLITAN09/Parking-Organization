<?php 
	class DataBase{		
		public function __construct(){}
		public static function conexion(){
			$pdo = new PDO('mysql:host=bsla2srwmwped7z4das1-mysql.services.clever-cloud.com;charset=utf8','ubzephhqm6y51uxk1','FGbhprdAFTvyZcY5urZL1');
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $pdo;
		}
	}
?>