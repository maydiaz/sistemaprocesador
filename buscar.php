<?php

 include 'conexion.php';
 

 $data = array();

 
$usuario=$_POST['usuario'];
 

//$usuario="2";
//$password="2";



$sql ="SELECT * FROM saldo   WHERE  id_usuario='$usuario' ";


$result=mysqli_query($conexion,$sql);


if ($result->num_rows > 0) {
    
    $userData = $result->fetch_assoc();
    $data['status'] = 'ok';
    $data['result'] = $userData;

} 
 
 
echo json_encode($data);
 
    
?>