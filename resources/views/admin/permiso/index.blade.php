@extends('layouts.init')

@section('styles')
@endsection

@section('actual','Permisos y Comisiones')
@section('titulo','Listado de Permisos y/o comisiones registrados')
@section('detalle','en esta parte se observan los datos registrados de permisos y/o comisiones')

@section('cuerpo')
    <div class="row">
        <div class="col-xs-12">
            <div class="clearfix">
                <div class="pull-left">
                    <a class="btn btn-success btn-round" href="{{ route('permiso.create') }}">
                        <i class="ace-icon fa fa-plus align-center"></i>
                        <b>Nuevo Permiso/Comisión</b>
                    </a>
                </div>
                <div class="pull-right tableTools-container"></div>
            </div>
            <div class="table-header">
                Datos Registrados (Permisos/Comimsiones)
            </div>
            <div>
                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Nombre del Usuario</th>
                            <th>Cuenta</th>
                            <th>Tipo</th>
                            <th>Estado</th>
                            <th>Observaciones</th>
                            <th>
                                <i class="ace-icon fa fa-calendar bigger-110"></i>
                                Fecha de Registro/Actualización
                            </th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td>{{ '.' }}</td>
                            <td>{{ '.' }}</td>
                            <td>{{ '.' }}</td>
                            <td>estado
                            </td>
                            <td>{{ '.' }}</td>
                            <td>{{ '.' }}</td>
                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">
                                    <a class="blue tooltip-info" data-rel="tooltip" title="Ver" href="">
                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                    </a>

                                    <a class="green tooltip-success" data-rel="tooltip" title="Editar" href="">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="{{ asset('plugin/assets/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/jquery.dataTables.bootstrap.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/buttons.flash.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/buttons.print.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/buttons.colVis.min.js') }}"></script>
    <script src="{{ asset('plugin/assets/js/dataTables.select.min.js') }}"></script>
    @include('admin.scriptDataTable')
@endsection
