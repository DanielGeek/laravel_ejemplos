<?php

namespace App\Http\Controllers;
//clase Administradores para traer la tabla usuarios
use App\Administradores;
use App\Blog;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

// Mostrar todos los usuarios

class AdministradoresController extends Controller
{
    public function index(){
        
        $administradores = Administradores::all();
        $blog = Blog::all();

        return view("paginas.administradores", array("administradores"=>$administradores, "blog"=>$blog));

    }

    // Mostrar un usuario
    public function show($id){

        $administradores = Administradores::where("id", $id)->get();
        $blog = Blog::all();

        if(count($administradores) != 0){

            return view("paginas.administradores", array("status"=> 200, "administradores"=> $administradores, "blog"=>$blog));

        }else{
            
            return view("paginas.administradores", array("status"=>404, "blog"=>$blog)); 
        }
    }

    //  Editar un usuario
    public function update($id, Request $request){

        // Recoger datos
        $datos = array("name"=>$request->input("name"),
                       "email"=>$request->input("email"),
                       "password_actual"=>$request->input("password_actual"),
                       "rol"=>$request->input("rol"),
                       "imagen_actual"=>$request->input("imagen_actual"));

        $password = array("password"=>$request->input("Password"));
        $foto = array("foto"=>$request->file("foto"));

        // validat los datos
        // laravel.com/5.x/validation
        if(!empty($datos)){

            $validar = \Validator::make($datos, [
                'name' => "required|regex:/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/i",
                'email' => "required|regex:/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$/i"
            ]);
        

            if($password["password"] != ""){
                $validarPassword = \Validator::make($password, [
                    "password" => "required|regex:/^[0-9a-zA-Z]+$/i"
                    
                    ]);

                    if($validarPassword->fails()){
                        return redirect("/administradores")->with("no-validacion", "");
                    }else{

                        $nuevaPassword = Hash::make($password['password']);
                    }
            }else{

                $nuevaPassword = $datos["password_actual"];

            }

            if($foto["foto"] != ""){
                $validarFoto = \Validator::make($foto, [
                    "foto" => 'required|image|mimes:jpg,jpeg,png|max:2000000'
                    
                    ]);

                if($validarFoto->fails()){
                    return redirect("/administradores")->with("no-validacion", "");
                }
            }

            if($validar->fails()){

                return redirect("/administradores")->with("no-validacion", "");

            }else{

                if($foto["foto"] != "")
                {
                    if(!empty($datos["imagen_actual"])){

                        if($datos["imagen_actual"] != "img/administradores/admin.png") {

                            unlink($datos['imagen_actual']);

                        }
                    }

                    $aleatorio = mt_rand(100, 999);

                    $ruta = "img/administradores".$aleatorio.".".$foto["foto"]->guessExtension();

                    move_uploaded_file($foto["foto"], $ruta);

                }else{

                    $ruta = $datos["imagen_actual"];

                }

                $datos = array("name"=> $datos["name"],
                                "email"=>$datos["email"],
                                "password"=>$nuevaPassword,
                                "rol"=>$datos["rol"],
                                "foto"=>$ruta);

                $administradores = Administradores::where('id', $id)->update($datos);

                return redirect("/administradores")->with("ok-editar", "");

            }
        }else{
            
            return redirect("/administradores")->with("error", "");

        }

    }

    // Eliminar un registro
    public function destroy($id, Request $request){
        
        $validar = Administradores::where("id", $id)->get();
        
        if(!empty($validar) && $id != 1){
            
            if($validar[0]["foto"] != "")
            {
                if(!empty($validar[0]["foto"])){

                    if($validar[0]["foto"] != "img/administradores/admin.png") {

                        unlink($validar[0]["foto"]);

                    }
                }

            }
            $administrador = Administradores::where("id", $validar[0]["id"])->delete();

            // return redirect("/administradores")->with("ok-eliminar", "");
            return "ok";

        }else{

            return redirect("/administradores")->with("no-borrar", "");

        }
    }
}
