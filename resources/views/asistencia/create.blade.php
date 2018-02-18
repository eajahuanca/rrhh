@extends('layouts.init')

@section('styles')
@endsection

@section('actual','Asistencia')
@section('titulo','Datos de la Asistencia')
@section('detalle','en esta parte se observan los datos registrados en el Biométrico')

@section('cuerpo')
    <div class="row">
        <div class="col-xs-12">
            <div class="clearfix">
                <div class="pull-right tableTools-container"></div>
            </div>
            <div class="table-header">
                Datos Marcados (CI : {{ $ci }} )
            </div>
            <div>
                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th align="center">#</th>
                            <th align="center">Nombre Completo</th>
                            <th align="center">Estado</th>
                            <th align="center">Código Biométrico</th>
                            <th align="center"><i class="fa fa-calendar"></i> Fecha de Marcación</th>
                            <th align="center"><i class="fa fa-clock-o"></i> Hora de Marcación</th>
                            <th align="center">Acción</th>
                        </tr>
                    </thead>
                    <?php $contador = 1;?>
                    @include('admin.fechas')
                    <tbody>
                        @foreach($asistencia as $item)
                        <tr>
                            <td align="center">{{ $contador++ }}</td>
                            <td>{{ $nombreCompleto }}</td>
                            <td align="center">
                                @if($item->estado=='0')
                                    <span class="label label-sm label-warning"> MARCADO </span>
                                @else
                                    <span class="label label-sm label-danger"> OTRO </span>
                                @endif
                            </td>
                            <td align="center">{{ $item->id_biometrico }}</td>
                            <td align="center">{{ formatFecha($item->fecha) }}</td>
                            <td align="center">{{ $item->hora }}</td>
                            <td align="center">
                                <div class="hidden-sm hidden-xs action-buttons">
                                @if($item->estado=='0')
                                    <a class="green tooltip-success" data-rel="tooltip" title="Asistencia Marcada">
                                        <i class="ace-icon fa fa-user bigger-130"></i>
                                    </a>
                                @else
                                    <a class="blue tooltip-info" data-rel="tooltip" title="Asistencia Otra">
                                        <i class="ace-icon fa fa-user-plus bigger-130"></i>
                                    </a>
                                @endif
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
