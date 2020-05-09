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
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
                
                <button class="btn btn-primary float-right">Guardar cambios</button>
              
              </div>

              <div class="card-body">
                
                @foreach ($blog as $element)
                  <!-- {{ $element }} -->
                @endforeach
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
                          <input type="text" class="form-control" name="palabras_claves" value="{{$palabras_claves}}" required>
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
                          <div class="col-lg-6">
                            <div class="input-group mb-3">
                              <div class="input-group-prepend">
                                <div class="input-group-text text-white" style="background: #1475E0">
                                  <i class="fab fa-facebook-f"></i>
                                </div>
                              </div>
                              <input type="text" class="form-control" value="https://www.facebook.com">
                                <div class="input-group-prepend">
                                  <div class="input-group-text" style="cursor:pointer">
                                   <span class="bg-danger px-2 rounded-circle">&times;</span>
                                  </div>
                                </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-5">
                    <div class="card">
                      <div class="card-body">
                        
                      </div>
                    </div>
                  </div>
                </div>
                <!-- {{ $element->dominio }} -->

              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                 <button class="btn btn-primary float-right">Guardar cambios</button>
              </div>
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->
  </div>

  @endsection