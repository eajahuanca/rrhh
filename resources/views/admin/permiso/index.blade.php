@extends('layouts.init')

@section('styles')
@endsection

@section('actual','Permisos y Comisiones')
@section('titulo','REGISTRO DE PERMISOS Y COMISIONES')
@section('detalle','en este módulo podrá registrar su permiso o comisión')

@section('cuerpo')

<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
		<div class="well well-lg">
			<?php error_reporting(0); ?>
			<h3>Seleccione el tipo de permiso</h3>
			<div class="row">
				<div class="col-md-3"><label>{{ Form::radio('check_per', 1, null,['class' => 'flat-red']) }} COMISIÓN </label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{{ $errors->first('check_per') }}</strong>
						</span>
					@endif
				</div>
				<!--div class="col-md-1">
					@if($previou->id && $previou->pre_legal != '')
					<a href="" target="_blank"><img src="{{ asset('plugins/login/img/pdfpng.png') }}" alt="Doc. Responsable Legal"/></a>
					@endif
				</div-->
				<!--div class="col-md-8">
					{{ Form::file('pre_legal') }}
					@if($errors->has('pre_legal'))
						<span style="color:red;">
							<strong>{{ $errors->first('pre_legal') }}</strong>
						</span>
					@endif
				</div-->
			</div>
			<div class="row">
				<div class="col-md-3"><label>{{ Form::radio('check_per', 1, null,['class' => 'flat-red']) }} PERSONAL</label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{{ $errors->first('check_per') }}</strong>
						</span>
					@endif
				</div>
				
			</div>
			<div class="row">
				<div class="col-md-3"><label>{{ Form::radio('check_per', 1, null,['class' => 'flat-red']) }} OTROS</label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{{ $errors->first('check_per') }}</strong>
						</span>
					@endif
				</div>
				<!--div class="col-md-1">
					@if($previou->id && $previou->pre_legal != '')
					<a href="" target="_blank"><img src="{{ asset('plugins/login/img/pdfpng.png') }}" alt="Doc. Responsable Legal"/></a>
					@endif
				</div-->
				<!--div class="col-md-8">
					{{ Form::file('pre_legal') }}
					@if($errors->has('pre_legal'))
						<span style="color:red;">
							<strong>{{ $errors->first('pre_legal') }}</strong>
						</span>
					@endif
				</div-->
			</div>
			<div class="row">
				<div class="col-md-3"><label>{{ Form::date('check_per', 1, null,['class' => 'flat-red']) }} FECHA DEL PERMISO</label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{{ $errors->first('check_per') }}</strong>
						</span>
					@endif
				</div>
				<div class="col-md-8"><label>DE HORAS: {{Form::time()}}</label> <label>A HORAS: {{Form::time()}}</label>  <label>                                                                                                                                                                         S/R: {{Form::checkbox()}}</label>
					
				</div>
				<div class="col-md-8">
					
					<div class="form-group {{ $errors->has('pre_obs')?' has-error':'' }}">
						{{ Form::label('pre_obs', 'Motivo') }}
						{{ Form::textarea('pre_obs', null, ['class' => 'form-control', 'placeholder' => 'Ingrese el motivo de la salida ya sea comisión, personal u otros','rows' => 4]) }}
						@if($errors->has('pre_obs'))
							<span style="color:red;">
								<strong>{{ $errors->first('pre_obs') }}</strong>
							</span>
						@endif
					</div>	



				</div>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>
</div>

<br>
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
