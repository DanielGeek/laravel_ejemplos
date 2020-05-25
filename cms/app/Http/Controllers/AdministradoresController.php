<?php

namespace App\Http\Controllers;
//clase Administradores para traer la tabla usuarios
use App\Administradores;
use App\Blog;

use Illuminate\Http\Request;


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
}
