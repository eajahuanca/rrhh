<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;

class PermisoController extends Controller
{
    public function __construct(){
        Carbon::setLocale('es');
    }

    public function index(){
        return view('admin.permiso.index');
    }

    public function create(){
        return view('admin.permiso.create');
    }

    public function store(Request $request){

    }
}
