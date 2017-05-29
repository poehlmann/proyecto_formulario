<?php

if(count($_POST)>0){
    $form_geo01f01 = new geo01f01Data();

    $form_geo01f01->correlativo = $_POST["correlativo"];
    $form_geo01f01->nombre_proyecto = $_POST["nombre_proyecto"];
    $form_geo01f01->nombre_instalador= $_POST["nombre_instalador"];
    $form_geo01f01->localizacion = $_POST["localizacion"];
    $form_geo01f01->contrato_orden_trabajo= $_POST["contrato_orden_trabajo"];
    $form_geo01f01->sector_trabajo=$_POST["sector_trabajo"];
    $form_geo01f01->area_aceptada=$_POST["area_aceptada"];
    $form_geo01f01->fecha_proyecto =$_POST["fecha_proyecto"];
    $form_geo01f01->aceptado_rechazado = $_POST["aceptado_rechazado"];
    $form_geo01f01->add();

    print "<script>window.location='index.php?view=geo01f01';</script>";
}