@extends('layouts.init')

@section('styles')
    <link rel="stylesheet" href="{{ asset('plugin/assets/css/style_radio_check.css') }}">
    <link rel="stylesheet" href="">
@endsection

@section('actual','Permisos y Comisiones')
@section('titulo','Registro de Permisos y Comisiones')
@section('detalle','en este módulo podrá registrar su permiso o comisión')

@section('cuerpo')
    <div class="table-header">
        Formulario de Registro
    </div><br>
    
    {!! Form::open(['route' => 'permiso.store', 'method' => 'POST']) !!}
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <input type="submit" name="btnCancelar" value="Cancelar Permiso" class="btn btn-danger btn-round pull center">
            <input type="submit" name="btnPendiente" value="Pendiente" class="btn btn-warning btn-round pull center">
            <input type="submit" name="btnSolicitar" value="Solicitar Permiso" class="btn btn-success btn-round pull center">
        </div>
        <div class="col-md-1"></div>
    </div>
    @include('admin.permiso.form')    
    {!! Form::close() !!}
@endsection

@section('scripts')
    <script type="text/javascript" src="{{ asset('plugin/checkeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace( 'pre_motivo', {
            language: 'es',
            uiColor:  '#9AB8F3'
        });
    </script>
@endsection
    