<?php
 include 'conexion.php';
?>
<!DOCTYPE html>
<html lang="es">  
  <head>    
    <title>Pagos recibidos</title>    
    <meta charset="UTF-8">
    <meta name="title" content="Título de la WEB">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script type="text/javascript" src="jquery-3.6.0.min.js"></script>
    <link href="estilos/estilo2.css" rel="stylesheet" type="text/css">
    
    
      
  </head>  
  
  
  <body>  


  
    <img class="logo" src="imagenes/logo.jpg" alt="paisaje">    
    <header class="titulo_login"> <h1> Bienvenido     <script>  document.write(localStorage.getItem("sesion") );  </script> </h1> </header>

    
    
    <div class="mostrar_tras"  >   Transacciones    </div>
    < 
     

      
      
                 <table>
                
                  <tr> 
                 <td>  Monto     </td>
                 <td>  Estado    </td>
                 <td>  nombre  </td>
                 <td>   correo  </td>  
                 <td>   N_Tarjeta  </td>
                 <td>   Tipo_Tar  </td>
                 <td>   articulo  </td>
                 <td>   fe_expi  </td>
                 <td>   telefono  </td>
                 <td>   apellido  </td>
                 <td>   id_pago  </td>
                 <td>   fech_pa  </td>
                 
                
                
                </tr>
               
                 <?php
                 
                 $sql ="SELECT * FROM deposito  ";
                 $result=mysqli_query($conexion,$sql);
                 
                 while($mostrar=mysqli_fetch_array($result)){
                 ?>
                 
                 
                 
                 <tr> 
                  <td><?php echo $mostrar['monto_pago']   ?></td>
                  <td><?php echo $mostrar['estado']  ?></td>
                  <td><?php echo $mostrar['nombre']   ?></td>
                  <td><?php echo $mostrar['correo']    ?> </td>
                  <td><?php echo $mostrar['n_tarjeta']    ?> </td>
                  <td><?php echo $mostrar['tipo_tar']    ?> </td>
                  <td><?php echo $mostrar['articulo']    ?> </td>
                  <td><?php echo $mostrar['fe_expira']    ?> </td>
                  <td><?php echo $mostrar['telefono']    ?> </td>
                  <td><?php echo $mostrar['apellido']    ?> </td>
                  <td><?php echo $mostrar['id_pago']    ?> </td>
                  <td><?php echo $mostrar['fecha_pago']    ?> </td>  
                  
                
                
                </tr>


                  <?php
                 }
                 
                 ?>

                  
                </table>
 
    
     
    <a href="http://localhost/generarxls.php">Generar Reporte </a>
    <div class="atras" onclick="ir_menu_comerciante1  () "  >   Atrás   </div>
    






         <script type="text/javascript" src="mostrartransacciones.js"></script>   
         
         
</body>  
</html>



