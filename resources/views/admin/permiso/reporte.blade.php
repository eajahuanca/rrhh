<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Permiso</title>
    <style type="text/css">
        body{
            font-family: Arial, Helvetica, sans-serif;
            font-size:11px;
        }
        table.tableizer-table {
            font-size: 12px;
            border: 1px solid #000000;
        }
        .tableizer-table td {
            padding: 4px;
            margin: 3px;
            border: 1px solid #000000;
        }
        .tableizer-table th {
            background-color: #104E8B;
            color: #FFF;
        }
        .tableBorder{
            border: 1px solid #000000;
            border-collapse: collapse;
        }
        .tableEspaciosTitulo{
            margin-top:-2em;
            border:1px solid green;
            border-radius:5px;
            -webkit-border-radius:5px;
            -moz-border-radius:5px;
            padding: 10px;
        }
        .tableEspacioTituloPrincipal{
            margin-top: -1.5em;
            padding: 10px;
        }
        .tableEspacios{
            margin-bottom:2em;
            margin-top:-2em;
        }
        .horas{
            margin-left:13em;
            width:60%;
            text-align:center;
            font-weight:bold;
            font-size:12px;
            color:red !important;
            padding:5px;
            border:1px red solid !important;
            border-radius:4px;
        }
        .nota,.impresion{
            font-style:italic;
            font-size:9.5px;
        }
        .nombres{
            font-size: 11px;
            color: green;
            font-weight: bold;
        }
        .cites, .cites2{
            font-size: 9px;
            color: red;
            font-weight: bold;
            text-align: center;
            padding:3px;
            border: 1px red solid;
            border-radius:3px;
        }
        .cites2{
            margin-top: -1em;
        }
        .cite{
            font-size: 10px;
            color: red;
            font-weight: bold;
            text-align: right;
            margin-top: -1em;
        }
    </style>
</head>
<body>
    @include('admin.fechas')
    <!--ORIGINAL Y COPIA-->
    <?php for($counter = 1 ; $counter <= 2; $counter++){ ?>
    <table width="100%">
        <tr>
            <td align="left" width="25  %"><img src="{{ asset('plugin/login/img/escudo_bolivia.gif') }}" width="95px" height="80px"/></td>
            <td align="center"><b>Estado Plurinacional de Bolivia</b><br><div style="font-size:9px;">Fondo Nacional de Desarrollo Forestal "FONABOSQUE"<br><hr/></div></td>
            <td align="right" width="20%"><img src="{{ asset('plugin/login/img/fonabosque.png') }}" width="180px" height="50px"/></td>
        </tr>
    </table>
    <div class="tableEspacioTituloPrincipal">
        <table width="100%">
            <tr>
                <td width="4%"></td>
                <td width="4%"></td>
                <td width="4%"></td>
                <td align="center" rowspan="3" width="65%"><h2>BOLETA DE PERMISO</h2></td>
                <td width="5%"><div class="cites">DIA</div></td>
                <td width="5%"><div class="cites">MES</div></td>
                <td width="5%"><div class="cites">AÑO</div></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><div class="cites2">{{ fechaPermisoDia($permiso->per_fechapermiso) }}</div></td>
                <td><div class="cites2">{{ fechaPermisoMes($permiso->per_fechapermiso) }}</div></td>
                <td><div class="cites2">{{ fechaPermisoAnio($permiso->per_fechapermiso) }}</div></td>
            </tr>
            <tr>
                <td colspan="3"><div class="cites">{{ $permiso->per_cite }}</div></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
    <br>
    <div class="tableEspaciosTitulo">
        <table width="100%">
            <tr>
                <td width="20%"><div class="nombres">APELLIDO Y NOMBRES :</div></td>
                <td width="40%">{{ $permiso->userSolicitante->us_nombre.' '.$permiso->userSolicitante->us_paterno.' '.$permiso->userSolicitante->us_materno }}</td>
                <td><div class="nombres" width="10%">CARNET DE IDENTIDAD :</div></td>
                <td width="5%">{{ $permiso->userSolicitante->us_ci }}</td>
            </tr>
            <tr>
                <td><div class="nombres">CARGO :</div></td>
                <td colspan="3">{{ $permiso->userSolicitante->us_cargo }}</td>
            </tr>
        </table>
        <table width="100%">
            <tr>
                <td align="right" width><div class="nombres">TIPO DE PERMISO : </div></td>
                <td align="right"><div class="nombres">COMISION </div></td>
                <td>@if($permiso->pre_tipo=='COMISION') <img src="{{ asset('plugin/assets/css/img/checkbox_check.png') }}"/>@else <img src="{{ asset('plugin/assets/css/img/checkbox_not_check.png') }}"/>@endif</td>
                <td align="right"><div class="nombres">PERSONAL </div></td>
                <td>@if($permiso->pre_tipo=='PERSONAL') <img src="{{ asset('plugin/assets/css/img/checkbox_check.png') }}"/>@else <img src="{{ asset('plugin/assets/css/img/checkbox_not_check.png') }}"/>@endif</td>
                <td align="right"><div class="nombres">OTROS </div></td>
                <td>@if($permiso->pre_tipo=='OTROS') <img src="{{ asset('plugin/assets/css/img/checkbox_check.png') }}"/>@else <img src="{{ asset('plugin/assets/css/img/checkbox_not_check.png') }}"/>@endif</td>
            </tr>
        </table>
        <div class="horas">
            DE HORAS : {{ $permiso->per_horasalida }} A HORAS : {{ $permiso->per_horaretorno }} @if($permiso->per_sinretorno) SIN RETORNO (SR) @else CON RETORNO (CR) @endif
        </div>
    
        <table width="100%" >
            <tr>
                <td colspan="2"><div class="nombres">MOTIVO DEL PERMISO</div></td>
                <?php 
                    $nombre = $permiso->userDireccionGeneral->us_nombre.' '.$permiso->userDireccionGeneral->us_paterno.' '.$permiso->userDireccionGeneral->us_materno;
                    $retorno = ($permiso->per_sinretorno==1)? 'SR':'CR';
                    $qr = $permiso->per_cite.'|'.$permiso->per_fechapermiso.'|'.$permiso->per_horasalida.'|'.$permiso->per_horaretorno.'|'.$retorno.'|'.$nombre;
                ?>
                <td rowspan="2">{!! DNS2D::getBarcodeHTML($qr, "QRCODE",3,3) !!}</td>
            </tr>
            <tr>
                <td width="5%"></td>
                <td width="95%" valign="top">{!! $permiso->pre_motivo !!}</td>
            </tr>
        </table>
    </div>
    <div class="nota">
        <table width="100%">
            <tr>
                <td width="15%">APROBADO POR :</td>
                <td>Inmediato Superior : <b>{{ $permiso->userSuperior->us_nombre.' '.$permiso->userSuperior->us_paterno.' '.$permiso->userSuperior->us_materno }}</b></td>
                <td class="cites" width="10%">@if($counter==1) ORIGINAL @else COPIA @endif</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">Recursos Humanos : <b>{{ $permiso->userRrhh->us_nombre.' '.$permiso->userRrhh->us_paterno.' '.$permiso->userRrhh->us_materno }}</b></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">Dirección General : <b>{{ $permiso->userDireccionGeneral->us_nombre.' '.$permiso->userDireccionGeneral->us_paterno.' '.$permiso->userDireccionGeneral->us_materno }}</b></td>
            </tr>
        </table>
        Fecha de Impresión : <b>{{ $fechaImpresion }}</b>
    </div>
    @if($counter==1) <br><br><hr style="border:1px #104E8B dotted"><br> @endif
    <?php } ?>

</body>
</html>