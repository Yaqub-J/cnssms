<?php 
session_start();
if (isset($_SESSION['r_user_id']) && 
    isset($_SESSION['role'])     &&
    isset($_GET['section_id'])) {

  if ($_SESSION['role'] == 'Registrar Office') {
     include "../DB_connection.php";
     include "data/section.php";

     $id = $_GET['section_id'];
     if (removeSection($id, $conn)) {
     	$sm = "Successfully deleted!";
        header("Location: section.php?success=$sm");
        exit;
     }else {
        $em = "Unknown error occurred";
        header("Location: section.php?error=$em");
        exit;
     }


  }else {
    header("Location: section.php");
    exit;
  } 
}else {
	header("Location: section.php");
	exit;
} 