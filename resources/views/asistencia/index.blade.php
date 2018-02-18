@extends('layouts.init')

@section('styles')
@endsection

@section('actual','Asistencia')
@section('titulo','CONTROL DE REGISTRO DE ASISTENCIA')
@section('detalle','en este módulo podrá consultar su marcación en el biometrico')

@section('cuerpo')

{!! Form::open(['route' => 'asis.store', 'method' => 'post']) !!}
<div class="row">
    <div class="col-xs-12 col-sm-12">
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                {!! Form::label('start','Fecha Inicial',['class' => 'pull-right']) !!}
            </div>
            <div class="col-xs-12 col-sm-6">
                {!! Form::label('end','Fecha Final') !!}
            </div>
        </div>
    </div>
</div>
<div class="col-xs-12 col-sm-12">
    <div class="input-daterange input-group">
        <div class="pull-right">
            <div class="input-group">
	                    <span class="input-group-addon">
	                        <i class="ace-icon fa fa-calendar"></i>
	                    </span>
                {{ Form::text('start',null, ['class' => 'input-sm form-control pull-right']) }}
            </div>
            @if($errors->has('start'))
                <span style="color:red;">
	                        <strong>{{ $errors->first('start') }}</strong>
	                    </span>
            @endif
        </div>
        <span class="input-group-addon"></span>
        <div class="pull-left">
            <div class="input-group">
	                    <span class="input-group-addon">
	                        <i class="ace-icon fa fa-calendar"></i>
	                    </span>
                {{ Form::text('end',null, ['class' => 'input-sm form-control']) }}
            </div>
            @if($errors->has('end'))
                <span style="color:red;">
	                        <strong>{{ $errors->first('end') }}</strong>
	                    </span>
            @endif
        </div>
    </div>
</div>
<br>
<!--div class="row">
  <br>
  <center>
          {!! Form::label('start','Nro. Carnet de Identidad',['class' => 'pull-center']) !!}
    <div class="input-group">
              {!! Form::text('ci', null ,['class' => 'form-control', 'placeholder' => 'ingrese su CI']) !!}
          </div>
          @if($errors->has('ci'))
              <span style="color:red;">
                        <strong>{{ $errors->first('ci') }}</strong>
                    </span>
          @endif
        </center>
</div--><br>
<div class="row">
    <center>
        <input type="submit" name="btnEnviar" value="Verificar Marcación" class="btn btn-primary btn-round pull center">
    </center>
</div>
{!! Form::close() !!}
@endsection

@section('scripts')
    <script type="text/javascript">
        $(document).ready(function(eve){
            $('#articulo').append('<option value="todo" selected="selected">Todo</option>');
        });
    </script>
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
