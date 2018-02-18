<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asistencia extends Model
{

  protected $table = 'asistencias';
  protected $fillable = ['id','ci','fechaini','fechafin','fechainit','fechafint'];
}
