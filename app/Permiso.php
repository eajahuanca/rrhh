<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use File;
use Storage;
use Carbon\Carbon;

class Permiso extends Model
{
    protected $table = 'permisos';
    protected $fillable = [
        'id',
        'per_cite',
        'per_fechapermiso',
        'per_horasalida',
        'per_horaretorno',
        'per_tiempo',
        'per_sinretorno',
        'pre_motivo',
        'pre_tipo',
        'idusersol',
        'pre_estadosol',
        'idusersup',
        'pre_estadosup',
        'pre_obssup',
        'pre_fechasup',
        'iduserrrhh',
        'pre_estadorrhh',
        'pre_obsrrhh',
        'pre_fecharrhh',
        'iduserdg',
        'pre_estadodg',
        'pre_obsdg',
        'pre_fechadg',
        'pre_documento',
        'pre_documento_nombre',
        'created_at',
        'updated_at'
    ];

    public function userSolicitante(){
        return $this->belongsTo('App\User','idusersol','id');
    }

    public function userSuperior(){
        return $this->belongsTo('App\User','idusersup','id');
    }

    public function userRrhh(){
        return $this->belongsTo('App\User','iduserrrhh','id');
    }

    public function userDireccionGeneral(){
        return $this->belongsTo('App\User','iduserdg','id');
    }

    public function setPreDocumentoAttribute($archivo){
        if($archivo){
            $nuevoArchivo = Carbon::now()->year.
                            Carbon::now()->month.
                            Carbon::now()->day. "-".
                            Carbon::now()->hour.
                            Carbon::now()->minute.
                            Carbon::now()->second.".".
                            $archivo->getClientOriginalExtension();
            $this->attributes['pre_ficha'] = 'archivo/permiso/'.$nuevoArchivo;
            $storage = Storage::disk('permiso')->put($nuevoArchivo, \File::get($archivo));
            $this->attributes['pre_documento_nombre'] = $archivo->getClientOriginalName();
        }
    }

    public function setPerSinretornoAttribute($valor){
        $this->attributes['per_sinretorno'] = ($valor == 'on')? 1:0;
    }

    public function setPreTipoAttribute($valor){
        if($valor == 1){
            $this->attributes['pre_tipo'] = 'COMISION';
        }if($valor == 2){
            $this->attributes['pre_tipo'] = 'PERSONAL';
        }if($valor == 3){
            $this->attributes['pre_tipo'] = 'OTROS';
        }
    }
}
