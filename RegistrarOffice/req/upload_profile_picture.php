<?php

// Include database connection
require('../../DB_connection.php');
$errors = array();
 
$extension = array("jpeg","jpg","png","gif");                                  
$ext = pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);
 
if(!in_array($ext, $extension)){
        array_push($errors, "File type is invalid, Please select image only.");
}
 
$bytes = 1024;
$allowedKB = 100;
$totalBytes = $allowedKB * $bytes;
 
if($_FILES["file"]["size"] > $totalBytes){
        array_push($errors, "File size must be less than 100KB!!!");
}
 
if(file_exists("UploadFolder/".$_FILES["file"]["name"]))
{
        array_push($errors, "File is already exist!!!");
}
 
$count = count($errors);
 
if($count == 0){
        move_uploaded_file($_FILES["file"]["tmp_name"],"UploadFolder/".$_FILES["file"]["name"]);
        echo "File uploaded successfully!!!";
}
else{
        foreach($errors as $error){
                echo $error;
        }
}