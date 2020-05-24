<?php

namespace App\Http\Controllers;
use App\Administradores;
use App\Blog;

use Illuminate\Http\Request;

class AdministradoresController extends Controller
{
    public function index(){
        
        $administradores = Administradores::all();
        $blog = Blog::all();

        return view("paginas.administradores", array("administradores"=>$administradores, "blog"=>$blog));

    }
}
