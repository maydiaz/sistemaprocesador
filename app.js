
 
 

function ir_inicio  (){

    alert(" se redirigirá a la pagina inicial");
    window.location.href = "inicio.html";
    } 


    function ir_retirar  (){
 
      window.location.href = "retirar_saldo.html";
      } 


    function ir_saldo  (){
      window.location.href = "ver_saldo.html";
      } 



    function ir_menu_comerciante  (){

      
      window.location.href = "menu_de_comerciante.html";
      } 



      function pagos_ver (){

        alert(" Ver pagos");
        window.location.href = "http://localhost/ver_pagos.php";
     } 
    

     function generar_reporte (){

      alert(" ver repartes");
      window.location.href = "http://localhost/generarxls.php";
   } 


  function ir_menu_ver_cuentas  (){

      
      window.location.href = "ver_cuentas_bancarias.html";
      } 



    function registrar (){

        alert(" Registrando");

        var usuario = document.getElementById("usuario").value;
        var nombre = document.getElementById("nombre").value;
        var apellido = document.getElementById("apellido").value;
        var Correo = document.getElementById("Correo").value;
        var cedula = document.getElementById("cedula").value;
        var direccion = document.getElementById("direccion").value;
        var negocio = document.getElementById("negocio").value;
        var nacido = document.getElementById("nacido").value;
        var Contraseña = document.getElementById("Contraseña").value;
        var operacion = document.getElementById("operacion").value;
        var Telefono = document.getElementById("Telefono").value;
        var cuenta = document.getElementById("cuenta").value;

        $.ajax({
           
             type: "POST",
             url : "agregar_comerciantes.php",
             data :{ usuario:  usuario  , nombre: nombre, apellido:apellido, Correo:Correo, cedula:cedula, direccion: direccion,
                negocio:negocio,nacido:nacido,Contraseña:Contraseña,operacion:operacion, Telefono:Telefono, cuenta:cuenta
             },
             success : function (response){
               if(response==1){
             alert(" Ha creado la cuenta exitosamente");
                
               }

             }


        });

        } 

        function validar (){

          alert(" validando");

          var usuario = document.getElementById("usuario").value;
          var Contraseña = document.getElementById("Contraseña").value;
 
          $.ajax({
         
              type: "POST",
              url : "validar_login.php",
              data :{ usuario:  usuario , Contraseña:Contraseña },
              success : function (response){
                if(response==1){
                    
                 alert(" acceso exitoso");
                 ir_menu_comerciante  ();

                 localStorage.setItem("sesion",usuario);
                 
                }else {

                  alert(" usuario o contraseña son incorrectas");

                }
 
              }
 
 
         });


      }




 

      function cerrar_sesion(){
       
        localStorage.removeItem("sesion");
        alert(" sesión cerrada");
        ir_inicio  ();
     }
 
     
    
     function consultar_saldo(){
         
          $.ajax({
              type:'POST',
              url:'buscar.php',
              dataType: "json",
              data:{usuario:localStorage.getItem("sesion")},
              success:function(data){
                  if(data.status == 'ok'){
                     
                    $('.ver_saldo').text("Su Saldo es "+data.result.saldo);
                     

                  }else{
                      
                      alert("no encontrado");
                  } 
              }
          });
}

 
    


        function consultar_cuentas(){
          
           
        
          $.ajax({
              type:'POST',
              url:'buscar_cuentas.php',
              dataType: "json",
              data:{usuario:localStorage.getItem("sesion")},
              success:function(data){
                  if(data.status == 'ok'){
                       
                    $('.ver_saldo').text("cuenta: "+data.result.id_cuenta);
                     

                  }else{
                      
                      alert("no encontrado");
                  } 
              }
          });


        }




        function retirar (){

          alert(" ejecucion de funcion retirar ");

          var cuenta = document.getElementById("cuenta").value;
          var monto = document.getElementById("monto").value;
 
          $.ajax({
         
              type: "POST",
              url : "retirarfondos.php",
              data :{ cuenta:  cuenta , monto:monto },
              success : function (response){
                if(response==1){
                    
                 alert(" Transferencias exitosa");
                 
 
                 
                }else {

                  alert(" No es posible tranferir");

                }
 
              }
 
 
         });


      }