<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
		<div class="well well-lg">
			<?php error_reporting(0); ?>
			<h3>Seleccione el tipo de permiso</h3><br>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-3">
					{!! Form::radio('pre_tipo', 1, null,['id' => 'r1']) !!}
					<label for="r1"><span><span><div style="margin-left:4em;margin-top:0.4em;"> Comisión</div></label>
				</div>
				<div class="col-md-3">
					{!! Form::radio('pre_tipo', 1, null,['id' => 'r2']) !!}
					<label for="r2"><span><span><div style="margin-left:4em;margin-top:0.4em;"> Personal</div></label>
				</div>
				<div class="col-md-3">
					{!! Form::radio('pre_tipo', 1, null,['id' => 'r3']) !!}
					<label for="r3"><span><span><div style="margin-left:4em;margin-top:0.4em;"> Otros</div></label>
				</div>
				<div class="col-md-2"></div>
				@if($errors->has('pre_tipo'))
					<span style="color:red;">
						<strong>{!! $errors->first('pre_tipo') !!}</strong>
					</span>
				@endif
			</div>
			<br>
			<div class="row">
				<div class="col-md-1"></div>
                <div class="col-md-3">
                    {!! Form::label('per_fechapermiso','Fecha de Permiso') !!}
                    <div class="input-group">
                        <div class="input-group-addon bg-info">
                            <i class="fa fa-calendar"></i>
                        </div>
                        {!! Form::date('per_fechapermiso', 1, null) !!}
                    </div>
					@if($errors->has('per_fechapermiso'))
						<span style="color:red;">
							<strong>{!! $errors->first('per_fechapermiso') !!}</strong>
						</span>
					@endif
				</div>
				<div class="col-md-2">
					{!! Form::label('per_horasalida','De Horas') !!}
					<div class="input-group">
						<div class="input-group-addon bg-info">
							<i class="fa fa-safari"></i>
						</div>
						{!! Form::time('per_horasalida', 1, null) !!}
					</div>
					@if($errors->has('per_horasalida'))
						<span style="color:red;">
							<strong>{!! $errors->first('per_horasalida') !!}</strong>
						</span>
					@endif
				</div>
				<div class="col-md-2">
					{!! Form::label('per_horaretorno','De Horas') !!}
					<div class="input-group">
						<div class="input-group-addon bg-info">
							<i class="fa fa-safari"></i>
						</div>
						{!! Form::time('per_horaretorno', 1, null) !!}
					</div>
					@if($errors->has('per_horaretorno'))
						<span style="color:red;">
							<strong>{!! $errors->first('per_horaretorno') !!}</strong>
						</span>
					@endif
				</div>
				<div class="col-md-2">
					<br>
					{!! Form::checkbox('pre_sinretorno', null, null,['id' => 'c2']) !!}
					<label for="c2"><span><span><div style="margin-left:4em;margin-top:0.4em;"> Sin/Retorno</div></label>
				</div>
			</div><br>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<div class="form-group {!! $errors->has('pre_obs')?' has-error':'' !!}">
						{!! Form::label('pre_motivo', 'Motivo del Permiso') !!}
						{!! Form::textarea('pre_motivo', null, ['class' => 'form-control', 'placeholder' => 'Ingrese el motivo de la salida ya sea comisión, personal u otros','rows' => 4]) !!}
						@if($errors->has('pre_motivo'))
							<span style="color:red;">
								<strong>{!! $errors->first('pre_motivo') !!}</strong>
							</span>
						@endif
                    </div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>
</div>