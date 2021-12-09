<?php

header('Content-type:application/xls');
header('Content-Disposition: attachment; filename=nombre_archivo.xls');

include 'conexion.php';











?>
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