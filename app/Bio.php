<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bio extends Model
{
    protected $table = 'bio';
    protected $fillable = ['id','user_id','id_biometrico', 'estado','fecha','hora'];
    public $timestamps = false;

    public function user(){
        return $this->belongsTo('App\User','user_id','id');
    }
}
