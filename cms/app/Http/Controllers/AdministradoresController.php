<?php

namespace App\Http\Controllers;
use App\Administradores;

use Illuminate\Http\Request;

class AdministradoresController extends Controller
{
    public function index(){
        
        $administradores = Administradores::all();

        return view("paginas.administradores", array("administradores"=>$administradores));

    }
}
