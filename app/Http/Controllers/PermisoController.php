<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Correlativo;
use Carbon\Carbon;
use App\Permiso;
use Toastr;

class PermisoController extends Controller
{
    public function __construct(){
        Carbon::setLocale('es');
    }

    public function index(){
        $permiso = Permiso::where('idusersol','=',Auth::user()->id)->get();
        return view('admin.permiso.index', compact('permiso'));
    }

    public function create(){
        return view('admin.permiso.create');
    }

    public function store(Request $request){
        try{
            $attributes = array(
                'per_fechapermiso' => 'Fecha de Permiso',
                'per_horasalida' => 'Hora de Salida',
                'per_horaretorno' => 'Hora de Retorno',
                'per_sinretorno' => 'Sin Retorno',
                'pre_tipo' => 'Tipo de Permiso',
                'pre_motivo' => 'Motivo del Permiso'
            );
            $permiso = new Permiso($request->all());
            $permiso->idusersol = Auth::user()->id;
            $permiso->idusersup = Auth::user()->id;
            $permiso->iduserrrhh = Auth::user()->id;
            $permiso->iduserdg = Auth::user()->id;
            $permiso->idusersol = Auth::user()->id;
            if(isset($_POST['btnSolicitar'])){
                $validator = Validator::make($request->all(),[
                    'per_fechapermiso' => 'required',
                    'per_horasalida' => 'required',
                    'per_horaretorno' => 'required',
                    'pre_tipo' => 'required',
                    'pre_motivo' => 'required|min:20'
                ]);
                $validator->setAttributeNames($attributes);
                if($validator->fails()){
                    Toastr::error('Verificar campos validos para su correción','Error');
                    return redirect()->route('permiso.create')->withErrors($validator)->withInput();
                }
                $permiso->pre_estadosol = 'ENVIADO';
                $permiso->per_tiempo = $this->calculoTiempo($permiso->per_horasalida,$permiso->per_horaretorno);
                $cite = Correlativo::where('cor_descripcion','=','PERMISOS')->where('cor_estado','=',1)->first();
                $permiso->per_cite = $cite->cor_cite.'-'.$this->correlativo($cite->cor_valor).'/'.$cite->cor_gestion;
                $permiso->pre_estadosup = 'PENDIENTE';
                $permiso->save();
                $cite->cor_valor = $cite->cor_valor + 1;
                $cite->update();
                Toastr::success('Los datos del permiso se registraron de manera correcta y fueron enviados a su inmediato superior','Registro');
            }elseif(isset($_POST['btnPendiente'])){
                $permiso->pre_estadosol = 'PENDIENTE';
            }
        }catch(\Exception $ex){
            Toastr::error('Ocurrio el siguiente error: '.$ex->getMessage());
        }
        return redirect()->route('permiso.index');
    }

    public function calculoTiempo($horasalida, $horaretorno){
        $aux1 = $horasalida.':00';
        $aux2 = $horaretorno.':00';
        $res = (strtotime($aux1)/60 - strtotime($aux2)/60);
        return abs($res);
    }

    public function correlativo($valor){
        if($valor < 10) return '000'.$valor;
        if($valor >= 10 && $valor < 100) return '00'.$valor;
        if($valor >= 100 && $valor < 1000) return '0'.$valor;
        if($valor >= 1000) return $valor;
    }
}
