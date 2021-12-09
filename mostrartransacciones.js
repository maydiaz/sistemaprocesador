function ir_menu_comerciante1  (){

    alert(" probando");
 window.location.href = "menu_de_comerciante.html";
 } 




     
 function ver_transacciones(){
      
    $post('mostrartransacciones.php',{usuario:localStorage.getItem("sesion")},function(){

      $("#results").html(response);

    });




}