<?php

include 'conexion.php';


 

$usuario=$_POST['usuario'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$Correo=$_POST['Correo'];
$cedula=$_POST['cedula'];
$direccion=$_POST['direccion'];
$negocio=$_POST['negocio'];
$nacido =$_POST['nacido'];
$Contraseña=$_POST['Contraseña'];
$operacion=$_POST['operacion'];
$Telefono=$_POST['Telefono'];
$cuenta=$_POST['cuenta'];
$saldo=0;

 


 /*
$usuario="10";
$nombre="10";
$apellido="10";
$Correo="10";
$cedula="10";
$direccion="10";
$negocio="10";
$nacido ="10";
$Contraseña="10";
$operacion="10";
$Telefono="10";
$cuenta="10";
$saldo=0;
*/



$tildes = $conexion->query("SET NAMES 'utf8'"); //Para que se inserten las tildes correctamente



mysqli_query($conexion, "INSERT INTO comerciante (id_usuario,apellido,correo,cèdula,nombre,direcciòn,negocio,fe_nacimi,contraseña,n_operaciòn,telefono,id_cuenta) 
                                          VALUES ('$usuario','$apellido','$Correo','$cedula','$nombre','$direccion','$negocio','$nacido','$Contraseña','$operacion','$Telefono','$cuenta')");

 
mysqli_query($conexion, "INSERT INTO saldo (id_usuario ,saldo_total)  VALUES ('$usuario','$saldo' )");

 



mysqli_close( $conexion); // Cerramos la conexion con la base de datos

echo '1';




?>