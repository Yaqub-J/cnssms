<?php 
include "DB_connection.php";
include "data/setting.php";
$setting = getSetting($conn);

if ($setting != 0) {

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Welcome to <?=$setting['school_name']?></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="icon" href="cnslogo.png">
</head>
<body class="body-home">
    <div class="black-fill"><br /> <br />
    	<div class="container">
        <section class="welcome-text d-flex justify-content-center align-items-center flex-column">
        	<img src="cnslogo.png" >
        	<h4><strong>Welcome to <?=$setting['school_name']?></strong></h4>
			<h5><?=$setting['slogan']?></h5>
            <div class="row">
               <a href="login.php" class="col btn btn-success m-2 py-2">
                  <h5><strong>CLICK HERE TO LOGIN</strong></h5>
               </a> 
			</div>
        </section>
        <div class="text-center text-light" style="background: rgba(19, 18, 18, 0.651) !important;">
        	Copyright &copy; <?=$setting['current_year']?> <?=$setting['school_name']?>. All rights reserved.
        </div>

    	</div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>
<?php }else {
	header("Location: login.php");
	exit;
}  ?>