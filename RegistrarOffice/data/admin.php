<?php 

function adminPasswordVerify($admin_pass, $conn, $r_user_id){
   $sql = "SELECT * FROM registrar_office
           WHERE r_user_id=?";
   $stmt = $conn->prepare($sql);
   $stmt->execute([$r_user_id]);

   if ($stmt->rowCount() == 1) {
     $admin = $stmt->fetch();
     $pass  = $admin['password'];

     if (password_verify($admin_pass, $pass)) {
     	return 1;
     }else {
     	return 0;
     }
   }else {
    return 0;
   }
}