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
}
