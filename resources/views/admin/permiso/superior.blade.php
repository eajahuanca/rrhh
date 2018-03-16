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
                        <th>Cite del Permiso</th>
                        <th><i class="ace-icon fa fa-calendar bigger-110"></i> Fecha/hora de Permiso</th>
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
                            <td><b>{{ $item->per_cite }}</b></td>
                            <td>
                                {!! '<b>Fecha de Permiso > </b>'.formatFecha($item->per_fechapermiso).'<br><b>H.Salida > </b>'.$item->per_horasalida.'<br><b>H.Retorno > </b>'.$item->per_horaretorno.'<br><b>Tiempo : </b>'.$item->per_tiempo.' Minutos' !!}
                                @if($item->per_sinretorno)
                                    <b style="font-size: 14px; color: red;">Sin Retorno</b>
                                @else
                                    <b style="font-size: 14px; color: green;">Con Retorno</b>
                                @endif
                            </td>
                            <td>{!! $item->pre_motivo !!}</td>
                            <td align="center">
                                @if($item->pre_tipo == 'COMISION')
                                    <b style="color: #00BE67;font-size: 14px;">COMISION</b>
                                @elseif($item->pre_tipo == 'PERSONAL')
                                    <b style="color: #1B6AAA;font-size: 14px;">PERSONAL</b>
                                @elseif($item->pre_tipo == 'OTROS')
                                    <b style="color: #8A3104;font-size: 14px;">OTROS</b>
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
                                @if($item->per_estadosol == 'PENDIENTE')
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="green tooltip-info btn btn-primary btn-round" data-rel="tooltip" title="Actualizar datos de Permiso" href="{{ route('permiso.edit', $item->id) }}">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i> Editar
                                        </a>
                                    </div>
                                @endif
                                @if($item->pre_estadosup == 'RECHAZADO' || $item->pre_estadorrhh == 'RECHAZADO' || $item->pre_estadodg == 'RECHAZADO')
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="green tooltip-error btn btn-danger btn-round" data-rel="tooltip" title="@if($item->pre_obssup != ''){!! $item->pre_obssup.' (Inmediato Superior)' !!} @endif @if($item->pre_obsrrhh != '') {!! $item->pre_obsrrhh.' (Recursos Humanos)' !!} @endif @if($item->pre_obsdg != '') {!! $item->pre_obsdg.' (Dirección General)' !!} @endif" href="">
                                            <i class="ace-icon fa fa-remove bigger-130"></i> RECHAZADO
                                        </a>
                                    </div>
                                @endif
                                @if($item->pre_estadodg == 'APROBADO')
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="green tooltip-error btn btn-danger btn-round" data-rel="tooltip" title="Descargar Boleta" href="{{ url('reporte', $item->id) }}" target="_blank">
                                            <i class="ace-icon fa fa-file-pdf-o bigger-130"></i> APROBADO
                                        </a>
                                    </div>
                                @endif
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
