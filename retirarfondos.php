<?php

 include 'conexion.php';

 include 'conexion_banco.php';

 //$cuenta=89076050;
 //$monto=10;

$cuenta=$_POST['cuenta'];
$monto=$_POST['monto'];

//$usuario="2";
//$password="2";



$sql ="SELECT * FROM saldo   WHERE  cuenta='$cuenta' ";
$result=mysqli_query($conexion,$sql);
                 


 
 

if ($mostrar=mysqli_fetch_array($result)) {
    
    
    //se se verifica que el monto a retirar no sea mayor a saldo actual

    if( $monto <=$mostrar['saldo']){
      $nuevosaldo=$mostrar['saldo']-$monto; 
       
      
   //se actualiza saldo en el procesador de pago
   mysqli_query($conexion, "update  saldo set saldo= '$nuevosaldo' where cuenta ='$cuenta'");
   
   
    //se transfiere saldo a cuenta del banco

     
    // se realiza consulta de saldo
     $sql2 ="SELECT * FROM clientes   WHERE  cuenta='$cuenta' ";
      $result2=mysqli_query($conebank,$sql2);
      
          // se extrae saldo
      if ($mostrar2=mysqli_fetch_array($result2)) {
         // se actualiza saldo se termina con la transferencia
        $nuevosaldo2=$mostrar2['saldo']+$monto; 
        mysqli_query($conebank, "update  clientes set saldo= '$nuevosaldo2' where cuenta ='$cuenta'");
       }

       echo "1";

     }else {

        echo "2";

     }
    
     

     

} 




//  echo json_encode($data); indicador de trasnferencia

 
    
?>