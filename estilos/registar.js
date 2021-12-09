
function registar (){

alert(" ha presionando");

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
 

alert("datos "+ usuario+" "+nombre+" "+apellido+" "+Correo+" "+cedula+" "+direccion+" "+negocio+" "+nacido+" "+Contraseña+" "+operacion+" "+Telefono+" "+cuenta);









} 



function ir_inicio (){
    window.location.href = "inicio.html";
    } 







    function registrar (){

        alert(" ejecucion de funcion enviar datos");

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

            alert(" ejecucion de funcion validar login");

            var usuario = document.getElementById("usuario").value;
            var Contraseña = document.getElementById("Contraseña").value;
   
            $.ajax({
           
                type: "POST",
                url : "validar_login.php",
                data :{ usuario:  usuario , Contraseña:Contraseña },
                success : function (response){
                  if(response==1){
                      
                   alert(" acceso exitoso");

                   
                  }else {

                    alert(" El usuario o contraseña son incorrectas");

                  }
   
                }
   
   
           });





        }

 