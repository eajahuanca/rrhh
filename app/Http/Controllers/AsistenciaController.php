<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\support\Facades\Auth;
use App\Http\Requests\AsistenciaRequest;
use App\Asistencia;
use Toastr;
use App\Bio;
use App\User;
use DB;
use App\zklib\ZKLib as ZKLib;

class AsistenciaController extends Controller
{
    public function index()
    {
        return view("asistencia.index");
    }

    public function store(AsistenciaRequest $request)
    {
        try {
            $arrayFechaInicial = explode('/', $request->start);
            $arrayFechaFinal = explode('/', $request->end);
            $fechaInicial = $arrayFechaInicial[2] . '-' . $arrayFechaInicial[0] . '-' . $arrayFechaInicial[1];
            $fechaFinal = $arrayFechaFinal[2] . '-' . $arrayFechaFinal[0] . '-' . $arrayFechaFinal[1];

            ini_set('max_execution_time', 360);
            if(Auth::user()->us_tipo == 'ADMINISTRADOR'){
                DB::table('bio')->delete();
                $zk = new \App\zklib\ZKLib("192.168.179.251", 4370);

                $ret = $zk->connect();
                sleep(1);
                if ($ret) {
                    $zk->disableDevice();
                    sleep(1);
                }
                $attendance = $zk->getAttendance();
                sleep(1);

                $increment = 1;
                ini_set('max_execution_time', 180);
                while (list($idx, $attendancedata) = each($attendance)):
                    DB::insert('
                        insert into bio (id, user_id, id_biometrico, estado, fecha, hora) 
                        values (?, ?, ?, ?, ?, ?)',
                        [
                            $increment,
                            $attendancedata[0],
                            $attendancedata[1],
                            $attendancedata[2],
                            date('Y-m-d', strtotime($attendancedata[3])),
                            date('H:i:s', strtotime($attendancedata[3]))
                        ]);
                    $increment = $increment + 1;
                endwhile;
            }
            $user = User::select('id','us_nombre','us_paterno','us_materno','us_ci')->where('id','=',Auth::user()->id)->get();
            $idUser = $user[0]->id;

            $asistencia = Bio::where('user_id','=',$idUser)
                ->where('fecha', '>=', $fechaInicial)
                ->where('fecha', '<=', $fechaFinal)
                ->get();

            return view('asistencia.create')
                ->with('asistencia', $asistencia)
                ->with('nombreCompleto', $user[0]->us_nombre.' '.$user[0]->us_paterno.' '.$user[0]->us_materno)
                ->with('ci', $user[0]->us_ci);
        } catch (\Exception $ex) {

            Toastr::error('Ocurrio un error: ' . $ex->getMessage(), 'Error');
            return redirect()->route('asis.index');
        }
    }
}
