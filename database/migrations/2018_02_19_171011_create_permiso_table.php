<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePermisoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('permisos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('per_cite')->unique();
            $table->date('per_fechapermiso');
            $table->string('per_horasalida')->default('00:00:00');
            $table->string('per_horaretorno')->default('00:00:00');
            $table->integer('per_tiempo')->default('0');
            $table->boolean('per_sinretorno')->default(false);
            $table->text('pre_motivo');
            $table->enum('pre_tipo', ['COMISION','PERSONAL','OTROS']);
            $table->integer('idusersol')->unsigned();
            $table->enum('pre_estadosol', ['ENVIADO','PENDIENTE','CANCELAR','APROBADO','RECHAZADO']);

            $table->integer('idusersup')->unsigned();
            $table->enum('pre_estadosup', ['SOL','PENDIENTE','APROBADO','RECHAZADO']);
            $table->text('pre_obssup')->nullable();
            $table->datetime('pre_fechasup')->nullable();

            $table->integer('iduserrrhh')->unsigned();
            $table->enum('pre_estadorrhh', ['SOL','PENDIENTE','APROBADO','RECHAZADO']);
            $table->text('pre_obsrrhh')->nullable();
            $table->datetime('pre_fecharrhh')->nullable();

            $table->integer('iduserdg')->unsigned();
            $table->enum('pre_estadodg', ['SOL','PENDIENTE','APROBADO','RECHAZADO']);
            $table->text('pre_obsdg')->nullable();
            $table->datetime('pre_fechadg')->nullable();

            $table->string('pre_documento')->nullable();
            $table->string('pre_documento_nombre')->nullable();

            $table->timestamps();

            $table->foreign('idusersol')->references('id')->on('users');
            $table->foreign('idusersup')->references('id')->on('users');
            $table->foreign('iduserrrhh')->references('id')->on('users');
            $table->foreign('iduserdg')->references('id')->on('users');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('permisos');
    }
}
