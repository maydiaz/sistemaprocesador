function ir_menu_comerciante1  (){

       alert(" probando");
    window.location.href = "menu_de_comerciante.html";
    } 




        
    function consultar_cuenta(){
         
        $.ajax({
            type:'POST',
            url:'buscarcuentas.php',
            dataType: "json",
            data:{usuario:localStorage.getItem("sesion")},
            success:function(data){
                if(data.status == 'ok'){
                   
                  $('.cuenta_lista').text("Cuenta "+data.result.id_cuenta);
                   

                }else{
                    
                    alert("no encontrado");
                } 
            }
        });
}