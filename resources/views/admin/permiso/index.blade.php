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
                            <th>Nombre usuario</th>
                            <th><i class="ace-icon fa fa-calendar bigger-110"></i> Fecha/hora de Permiso</th>
                            <th><i class="ace-icon fa fa-safari bigger-110"></i> Tiempo</th>
                            <th>Motivo del Permiso</th>
                            <th>Tipo de Permiso</th>
                            <th>Estado</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @include('admin.fechas')
                        @foreach($permiso as $item)
                        <tr>
                            <td>{{ $item->userSolicitante->us_nombre.' '.$item->userSolicitante->us_paterno.' '.$item->userSolicitante->us_materno }}</td>
                            <td>
                                {!! '<b>Fecha de Permiso > </b>'.formatFecha($item->per_fechapermiso).'<br><b>H.Salida > </b>'.$item->per_horasalida.'<br><b>H.Retorno > </b>'.$item->per_horaretorno.'<br>' !!}
                                @if($item->per_sinretorno)
                                    <a class="btn btn-success"><b>Sin</b> Retorno</a>
                                @else
                                    <a class="btn btn-danger"><b>Con</b> Retorno</a>
                                @endif
                            </td>
                            <td>{{ $item->per_tiempo.' Minutos'}}</td>
                            <td>{!! $item->pre_motivo !!}</td>
                            <td align="center">
                                @if($item->pre_tipo == 'COMISION')
                                    <a class="btn btn-success btn-round pull center">COMISION</a>
                                @elseif($item->pre_tipo == 'PERSONAL')
                                    <a class="btn btn-primary btn-round pull center">PERSONAL</a>
                                @elseif($item->pre_tipo == 'OTROS')
                                    <a class="btn btn-danger btn-round pull center">OTROS</a>
                                @endif
                            </td>
                            <td align="center">
                                @if($item->pre_estadosol == 'PENDIENTE')
                                    <a class="btn btn-success btn-round pull center">PENDIENTE</a>
                                @elseif($item->pre_estadosol == 'ENVIADO')
                                    <a class="btn btn-success btn-round pull center"><i class="ace-icon fa fa-send"></i> ENVIADO</a>
                                @elseif($item->pre_estadosol == 'CANCELAR')
                                    <a class="btn btn-danger btn-round pull center">CANCELADO</a>
                                @elseif($item->pre_estadosol == 'APROBADO')
                                    <a class="btn btn-primary btn-round pull center">APROBADO</a>
                                @elseif($item->pre_estadosol == 'RECHAZADO')
                                    <a class="btn btn-primary btn-round pull center">RECHAZADO</a>
                                @endif
                            </td>
                            <td>
                                <div class="hidden-sm hidden-xs action-buttons">                                   
                                    <a class="green tooltip-success" data-rel="tooltip" title="Editar" href="">
                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        @endforeach
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
