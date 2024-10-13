<?php  



$sName = "localhost";
$uName = "root";
$pass  = "";
$db_name = "cnsgombe_sms_db";

// $sName = "localhost";
// $uName = "cnsgombe_sms_db";
// $pass  = "7z7zeX7q8hFqS2TMdhPD";
// $db_name = "cnsgombe_sms_db";

try {
	$conn = new PDO("mysql:host=$sName;dbname=$db_name", $uName, $pass);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOExeption $e){
	echo "Connection failed: ". $e->getMessage();
	exit;
}