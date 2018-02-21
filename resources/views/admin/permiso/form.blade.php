<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
		<div class="well well-lg">
			<?php error_reporting(0); ?>
			<h3>Seleccione el tipo de permiso</h3>
			<div class="row">
				<div class="col-md-3"><label>{!! Form::radio('check_per', 1, null,['class' => 'flat-red']) !!} COMISIÓN </label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{!! $errors->first('check_per') !!}</strong>
						</span>
					@endif
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"><label>{!! Form::radio('check_per', 1, null,['class' => 'flat-red']) !!} PERSONAL</label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{!! $errors->first('check_per') !!}</strong>
						</span>
					@endif
				</div>
				
			</div>
			<div class="row">
				<div class="col-md-3"><label>{!! Form::radio('check_per', 1, null,['class' => 'flat-red']) !!} OTROS</label>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{!! $errors->first('check_per') !!}</strong>
						</span>
					@endif
				</div>
				
			</div>
			<div class="row">
                <div class="col-md-3">
                    {!! Form::label('check_per','FECHA DEL PERMISO') !!}
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        {!! Form::date('check_per', 1, null,['class' => 'flat-red']) !!}
                    </div>
					@if($errors->has('check_per'))
						<span style="color:red;">
							<strong>{!! $errors->first('check_per') !!}</strong>
						</span>
					@endif
				</div>
				<div class="col-md-8"><label>DE HORAS: {!! Form::time('pre_horasal') !!}</label> <label>A HORAS: {!! Form::time('pre_horaretorno') !!}</label>  <label>
                    S/R: {!! Form::checkbox('pre_sinretorno') !!}</label>
				</div>
				<div class="col-md-8">
					
					<div class="form-group {!! $errors->has('pre_obs')?' has-error':'' !!}">
						{!! Form::label('pre_obs', 'Motivo') !!}
						{!! Form::textarea('pre_obs', null, ['class' => 'form-control', 'placeholder' => 'Ingrese el motivo de la salida ya sea comisión, personal u otros','rows' => 4]) !!}
						@if($errors->has('pre_obs'))
							<span style="color:red;">
								<strong>{!! $errors->first('pre_obs') !!}</strong>
							</span>
						@endif
                    </div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>
</div>