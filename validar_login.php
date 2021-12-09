<?php

 include 'conexion.php';



$usuario=$_POST['usuario'];
$Contraseña=$_POST['Contraseña'];

//$usuario="2";
//$password="2";



$sql ="SELECT * FROM comerciante   WHERE  	id_usuario='$usuario' AND contraseña='$Contraseña'";


$result=mysqli_query($conexion,$sql);
 

 if ($result->num_rows > 0) {
    echo "1";
}else{

    echo "0";

}

 
    
?>