<?php 
session_start();
if (isset($_SESSION['r_user_id']) && 
    isset($_SESSION['role'])     &&
    isset($_GET['grade_id'])) {

  if ($_SESSION['role'] == 'Registrar Office') {
     include "../DB_connection.php";
     include "data/grade.php";

     $id = $_GET['grade_id'];
     if (removeGrade($id, $conn)) {
     	$sm = "Successfully deleted!";
        header("Location: grade.php?success=$sm");
        exit;
     }else {
        $em = "Unknown error occurred";
        header("Location: grade.php?error=$em");
        exit;
     }


  }else {
    header("Location: grade.php");
    exit;
  } 
}else {
	header("Location: grade.php");
	exit;
} 