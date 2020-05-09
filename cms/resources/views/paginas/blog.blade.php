@extends('plantilla')

@section('content')

<div class="content-wrapper" style="min-height: 266px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Blog</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('/')}}">Inicio</a></li>
              <li class="breadcrumb-item active">Blog</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="container-fluid">
        <div class="row">
          <div class="col-12">

            @foreach ($blog as $element)
              
            @endforeach

            <form action="{{url('/')}}/blog/{{$element->id}}" method="post">
              @method('PUT')

              @csrf
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                
                <button type="submit" class="btn btn-primary float-right">Guardar cambios</button>
              
              </div>

              <div class="card-body">
                
                <div class="row">
                  <div class="col-lg-7">
                    <div class="card">
                      <div class="card-body">
                        <!-- Dominio -->
                        <div class="input-group mb-3">
                          <div class="input-group-append">
                            <span class="input-group-text">
                              Dominio
                            </span>
                          </div>
                          <input type="text" class="form-control" name="dominio" value="{{$element->dominio}}" required>
                        </div>

                        <!-- Servidor -->
                        <div class="input-group mb-3">
                          <div class="input-group-append">
                            <span class="input-group-text">
                              Servidor
                            </span>
                          </div>
                          <input type="text" class="form-control" name="servidor" value="{{$element->servidor}}" required>
                        </div>

                        <!-- Título -->
                        <div class="input-group mb-3">
                          <div class="input-group-append">
                            <span class="input-group-text">
                              Título
                            </span>
                          </div>
                          <input type="text" class="form-control" name="titulo" value="{{$element->titulo}}" required>
                        </div>

                        <!-- Descripción -->
                        <div class="input-group mb-3">
                          <div class="input-group-append">
                            <span class="input-group-text">
                              Descripción
                            </span>
                          </div>
                          <textarea class="form-control" rows="5" name="descripcion" required>{{$element->descripcion}}</textarea>
                        </div>

                        <hr class="pb-2">

                        <!-- Palabras claves -->

                        <div class="form-group mb-3">
                          <label for="">Palabras claves</label>

                          @php
                            $tags = json_decode($element->palabras_claves, true);
                            $palabras_claves = "";
                            foreach($tags as $key => $value) {
                              $palabras_claves .= $value.",";
                            }
                            
                          @endphp
                          <input type="text" class="form-control" name="palabras_claves" value="{{$palabras_claves}}" data-role="tagsinput" required>
                        </div>

                        <hr class="pb-2">
                        <!-- Redes sociales -->
                        <label for="">Redes sociales</label>

                        <div class="row">
                          <div class="col-md-5">
                            <div class="input-group mb-3">
                              <div class="input-group-append">
                                <span class="input-group-text">
                                  Icono
                                </span>
                             </div>
                             <select name="" id="icono_red" class="form-control">
                               <option value="fab fa-facebook-f, #1475E0">
                                 Facebook
                               </option>
                               <option value="fab fa-instagram, #B18768">
                                 Instagram
                               </option>
                               <option value="fab fa-twitter, #00A6FF">
                                 Twitter
                               </option>
                               <option value="fab fa-youtube, #F95F62">
                                 Youtube
                               </option>
                               <option value="fab fa-snapchat-ghost, #FF9052">
                                 Snapchat
                               </option>
                               <option value="fab fa-linkedin-in, #0E76A8">
                                 Linkedin
                               </option>
                             </select>
                            </div>
                          </div>
                          <!-- fin 5 col -->
                          <div class="col-5">
                            <div class="input-group mb-3">
                              <div class="input-group-append">
                                <span class="input-group-text">Url</span>
                              </div>
                              <input type="text" class="form-control" id="url_red">

                            </div>
                          </div>
                          <!-- fin 5 col -->
                          <div class="col-2">
                            <button type="button" class="btn btn-primary w-100 agregarRed">
                              Agregar
                            </button>
                          </div>
                          <!-- fin 2 col -->

                        </div>
                        <!-- fin del row -->
                        <div class="row">
                          @php
                          $redes = json_decode($element->redes_sociales, true);
                          
                          foreach($redes as $key => $value) {
                            echo '<div class="col-lg-12">
                            <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <div class="input-group-text text-white" style="background:'.$value["background"].'">
                                  <i class="'.$value["background"].'"></i>
                                </div>
                              </div>
                              <input type="text" class="form-control" value="'.$value["url"].'">
                                <div class="input-group-prepend">
                                  <div class="input-group-text" style="cursor:pointer">
                                   <span class="bg-danger px-2 rounded-circle">&times;</span>
                                  </div>
                                </div>
                            </div>
                          </div>';
                          }
                          @endphp
                          
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-5">
                    <div class="card">
                      <div class="card-body">
                        <div class="row">
                          <div class="col-lg-12">
                            <!-- cambiar logo -->
                            <div class="form-group my-2 text-center">
                              <div class="btn btn-default btn-file mb-3">
                                <i class="fas fa-paperclip"></i>Adjuntar Imagen de Logo
                                <input type="file" name="logo">
                              </div>
                              <img src="{{url('/')}}/{{$element->logo}}" class="img-fluid py-2 bg-secondary">

                              <p class="help-block small met-3">Dimensiones: 700px * 200px | Peso Max. 2MB | Formato: JPG o PNG</p>
                            </div>
                            <hr class="pb-2">
                            <!-- cambiar portada -->
                            <div class="form-group my-2 text-center">
                              <div class="btn btn-default btn-file mb-3">
                                <i class="fas fa-paperclip"></i>Adjuntar Imagen de portada
                                <input type="file" name="portada">
                              </div>
                              <img src="{{url('/')}}/{{$element->portada}}" class="img-fluid py-2 bg-secondary">

                              <p class="help-block small met-3">Dimensiones: 700px * 420px | Peso Max. 2MB | Formato: JPG o PNG</p>
                            </div>

                            <hr class="pb-2">
                            <!-- cambiar icono -->
                            <div class="form-group my-2 text-center">
                              <div class="btn btn-default btn-file mb-3">
                                <i class="fas fa-paperclip"></i>Adjuntar Imagen de Icono
                                <input type="file" name="icono">
                              </div>
                              <br>
                              <img src="{{url('/')}}/{{$element->icono}}" class="img-fluid py-2 rounded-circle">

                              <p class="help-block small met-3">Dimensiones: 150px * 150px | Peso Max. 2MB | Formato: JPG o PNG</p>
                            </div>

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-body">
                        <label for="">Sobre mi <span class="small">(Intro)</span></label>
                        <textarea class="form-control summernote" name="sobre_mi" id="30" rows="10">{{$element->sobre_mi}}</textarea>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="card">
                      <div class="card-body">
                      <label for="">Sobre mi completo <span class="small">(Completo)</span></label>
                        <textarea class="form-control summernote" name="sobre_mi_completo" id="30" rows="10">{{$element->sobre_mi_completo}}</textarea>
                      </div>
                    </div>
                  </div>

                </div>

              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                 <button type="submit" class="btn btn-primary float-right">Guardar cambios</button>
              </div>
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
            </form>
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>

  @endsection