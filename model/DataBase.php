<?php 
	class DataBase{		
		public function __construct(){}
		public static function conexion(){
			$pdo = new PDO('mysql:host=bsla2srwmwped7z4das1-mysql.services.clever-cloud.com;dbname=bsla2srwmwped7z4das1;charset=utf8','ubzephhqm6y51uxk','FGbhprdAFTvyZcY5urZL');
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $pdo;
		}
	}
?>