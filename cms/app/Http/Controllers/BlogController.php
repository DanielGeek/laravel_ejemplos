<?php

namespace App\Http\Controllers;
use App\Blog;

use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(){
        
        $blog = Blog::all();

        return view("paginas.blog", array("blog"=>$blog));

    }

    // actualizar un registro
    public function update($id, Request $request){
        //recoger los datos
        $datos = array("dominio"=>$request->input("dominio"),
                        "servidor"=>$request->input("servidor"),
                        "titulo"=>$request->input("titulo"),
                        "descripcion"=>$request->input("descripcion"));

        // Validar los datos
        if(!empty($datos)){
            $validar = \Validator::make($datos, [
                "dominio"   => 'required|regex:/^[-\\_\\:\\.\\0-9a-z]+$/i',
                "servidor"  => 'required|regex:/^[-\\_\\:\\.\\0-9a-z]+$/i',
                "titulo"    =>  'required|regex:/^[0-9a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/i',
                "descripcion"   =>  'required|regex:/^[=\\&\\$\\;\\-\\_\\*\\"\\<\\>\\?\\¿\\!\\¡\\:\\,\\.\\0-9a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/i'
            ]);

            //revisa la validacion
            if($validar->fails()){
                
                return redirect("/")->with("no-validacion", "");

            }else{
                $actualizar = array("dominio"=> $datos["dominio"],
                                    "servidor"=> $datos["servidor"],
                                    "titulo"=> $datos["titulo"],
                                    "descripcion"=> $datos["descripcion"]);
                $blog = Blog::where("id", $id)->update($actualizar);

                return redirect("/")->with("ok-editar", "");
            }
        }else{
            return redirect("/")->with("error", "");
        }
    }
}
