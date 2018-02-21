@extends('layouts.init')

@section('styles')
@endsection

@section('actual','Permisos y Comisiones')
@section('titulo','Registro de Permisos y Comisiones')
@section('detalle','en este módulo podrá registrar su permiso o comisión')

@section('cuerpo')
    <div class="table-header">
        Formulario de Registro
    </div><br>
    {!! Form::open(['route' => 'permiso.store', 'method' => 'POST']) !!}
    @include('admin.permiso.form')    
    <div class="row">
        <center>
            <input type="submit" name="btnCancelar" value="Cancelar Permiso" class="btn btn-danger btn-round pull center">
            <input type="submit" name="btnPendiente" value="Pendiente" class="btn btn-warning btn-round pull center">
            <input type="submit" name="btnSolicitar" value="Solicitar Permiso" class="btn btn-success btn-round pull center">
        </center>
    </div>
    {!! Form::close() !!}
@endsection

@section('scripts')
@endsection
    