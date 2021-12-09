<?php

 include 'conexion.php';

 include 'conexion_banco.php';

 
 $data1 = array();





 
 $monto =$_POST['monto'];
 $articulo = $_POST['articulo'];
 $correo = $_POST['correo'];
 $nombre = $_POST['nombre'];
 $apellido = $_POST['apellido'];
 $telefono = $_POST['telefono'];
 $cvv = $_POST['cvv'];
 $n_tarjeta = $_POST['n_tarjeta'];
 $fe_expi = $_POST['fe_expi'];
 $tipo = $_POST['tipo'];
 



/// id de pago /
 $id_pago= rand(22122, 15221);
 $date= new Datetime();
 $date->format('d-m-Y M:i:s');
 $fechapago=$date->format('d-m-Y M:i:s');
  





// prueba
/*
 $monto ="1";
 $articulo ="1";
 $correo = "1";
 $nombre ="1";
 $apellido = "1";
 $telefono = "1";
 $cvv ="1";
 $n_tarjeta = "123123213";
 $fe_expi = "1";
 $tipo ="1";
*/


 $estado = "procesado";
///// identificador
 $comerciante ="Carlos12";






$sql ="SELECT * FROM clientes   WHERE  n_tarjeta='$n_tarjeta' ";
$result=mysqli_query($conebank,$sql);
                 


if ($mostrar=mysqli_fetch_array($result)) {
    if( $monto <=$mostrar['saldo']){
      $nuevosaldo=$mostrar['saldo']-$monto; 
     mysqli_query($conebank, "update  clientes set saldo ='$nuevosaldo' where n_tarjeta ='$n_tarjeta'");
     
    
     


     

     
     $sql ="SELECT * FROM saldo   WHERE  id_usuario	 ='$comerciante'";
      $result=mysqli_query($conexion,$sql);
                      
     if ($mostrar1=mysqli_fetch_array($result)) {
 
        $nuevosaldo2   =$mostrar1['saldo']+$monto;

      mysqli_query($conexion, "update  saldo set saldo ='$nuevosaldo2' where   id_usuario	 ='$comerciante'");
      

       

      mysqli_query($conexion, " INSERT INTO deposito (monto_pago,estado,nombre,correo,n_tarjeta,tipo_tar,articulo,fe_expira,telefono,apellido,id_pago,fecha_pago,id_usuario) 
                                             VALUES ('$monto','$estado','$nombre','$correo','$n_tarjeta','$tipo',' $articulo','$fe_expi','$telefono','$apellido','$id_pago','$fechapago','$comerciante');
      
      ");


     }



    











     $data1['status'] = 'ok';
     }





   } else {


      $data1['status'] = 'error';
   }
   

  



 
 
 echo json_encode($data1);
 
?>