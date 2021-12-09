








function enviardatos (){

    alert(" PROCESANDO ");

    var monto = document.getElementById("monto").value;
    var articulo = document.getElementById("articulo").value;
    var correo = document.getElementById("correo").value;
    var nombre = document.getElementById("pripietario").value;
    var apellido = document.getElementById("apellido").value;
    var telefono = document.getElementById("telefono").value;
    var cvv = document.getElementById("cvv").value;
    var n_tarjeta = document.getElementById("n_tarjeta").value;
 
    var mes = document.getElementById("mes").value;
    var año = document.getElementById("año").value;

    var fe_expi=mes+" "+año;

    var tipo = document.getElementById("credit_cards1").value;

 


    $.ajax({
         
        type: "POST",
        url : "procesadorpago.php",
        data :{ monto:  monto , 
               articulo :articulo,
                telefono:telefono,
                correo:correo,
                nombre:nombre,
                apellido:apellido,
                cvv:cvv,
                n_tarjeta:n_tarjeta, 
                fe_expi:fe_expi,
                tipo:tipo,

        },
        success : function (data1){
          
          if(data1.status == 'ok'){
              
            alert("PAGO PROCESADO EXITOSAMENTE");
            
           
          }else {

            alert("NO SE PUEDE PROCESAR PAGO");

          }

        }


   });

}