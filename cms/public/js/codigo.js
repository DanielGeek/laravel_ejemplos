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
           <span class="bg-danger px-2 rounded-circle eliminarRed" red="`+icono+`" url="`+url+`">&times;</span>
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

$(document).on("click", ".eliminarRed", function(){

    var listaRed = JSON.parse($("#listaRed").val());

    var red = $(this).attr("red");
    var url = $(this).attr("url");

    for(var i = 0; i < listaRed.length; i++){
        if(red == listaRed[i]["icono"] && url == listaRed[i]["url"]){
            listaRed.splice(i, 1);
            $(this).parent().parent().parent().parent().remove();
            $("#listaRed").val(JSON.stringify(listaRed));
        }
    }
})

$("input[type='file']").change(function(){

    var imagen = this.files[0];
    var tipo = $(this).attr("name");
    console.log("imagen", imagen);

    if(imagen["type"] != "image/jpeg" && imagen["type"] != "imagen/png"){
        $("input[type='file']").val("");

        notie.alert({
            type: 3,
            text: '¡La imagen debe estar en formato JPG o PNG!',
            time: 7
        })
    }else if(imagen["size"] > 2000000){
        $("input[type='file']").val("");

        notie.alert({
            type: 3,
            text: '¡La imagen no debe pasar mas de 2MB!',
            time: 7
        })
    }else{
        
        var datosImagen = new FileReader;
        datosImagen.readAsDataURL(imagen);

        $(datosImagen).on("load", function(event){

            var rutaImagen = event.target.result;

            $(".previsualizarImg_"+tipo).attr("src", rutaImagen);

        })
    }
})

$(".summernote").summernote();