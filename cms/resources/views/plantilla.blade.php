<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>cms con laravel 6</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.0/css/all.min.css">
    <!-- bootstrap 4 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- OverlayScrollbars -->
    <link rel="stylesheet" href="{{ url('/') }}/css/plugins/OverlayScrollbars.min.css">
    <!-- tagsinput -->
    <link rel="stylesheet" href="{{ url('/') }}/css/plugins/tagsinput.css">
    <!-- summernote -->
    <link rel="stylesheet" href="{{ url('/') }}/css/plugins/summernote.css">
    <!-- notie css -->
    <link rel="stylesheet" href="{{ url('/') }}/css/plugins/notie.css">
    <!-- admin lte -->
    <link rel="stylesheet" href="{{ url('/') }}/css/plugins/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="{{ url('/') }}/js/plugins/overlayScrollbars.min.js"></script>
    <script src="{{ url('/') }}/js/plugins/tagsinput.js"></script>
    <script src="{{ url('/') }}/js/plugins/summernote.js"></script>
    <script src="{{ url('/') }}/js/plugins/notie.js"></script>
    <script src="{{ url('/') }}/js/plugins/adminlte.js"></script>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <!-- Site wrapper -->
    <div class="wrapper">
        @include('modulos.header')
        @include('modulos.sidebar')
        @yield('content')
        @include('modulos.footer')
    </div>
    <script src="{{url('/')}}/js/codigo.js"></script>
</body>
</html>