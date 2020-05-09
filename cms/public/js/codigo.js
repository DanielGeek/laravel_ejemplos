// agregar red social
$(document).on("click", ".agregarRed", function(){
    
    var url = $("#url_red").val();
    var icono = $("#icono_red").val().split(",")[0];
    var color = $("#icono_red").val().split(",")[1];

    $(".listadoRed").append(`
    <div class="col-lg-12">
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <div class="input-group-text text-white" style="background:`+color+`">
          <i class="`+icono+`"></i>
        </div>
      </div>
      <input type="text" class="form-control" value="`+url+`">
        <div class="input-group-prepend">
          <div class="input-group-text" style="cursor:pointer">
           <span class="bg-danger px-2 rounded-circle">&times;</span>
          </div>
        </div>
    </div>
  </div>`)

    //actualizar el registro de la bd
    var listaRed = JSON.parse($("#listaRed").val());
    
    listaRed.push({
        "url": url,
        "icono": icono,
        "background": color
    })

    $("#listaRed").val(JSON.stringify(listaRed));
})

$(".summernote").summernote();