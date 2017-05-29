<?php

if(count($_POST)>0){
    $form_inic = new inic_formData();
    $form_inic->nombre_instalador = $_POST["nombre_instalador"];

    $form_inic->correlativo = $_POST["correlativo"];
    $form_inic->nombre_proyecto = $_POST["nombre_proyecto"];
    $form_inic->localizacion = $_POST["localizacion"];
    $form_inic->contrato_orden_trabajo= $_POST["contrato_orden_trabajo"];
    $form_inic->sector_trabajo=$_POST["sector_trabajo"];
    $form_inic->area_aceptada=$_POST["area_aceptada"];
    $form_inic->fecha_proyecto =$_POST["fecha_proyecto"];

    $form_inic->add();

    print "<script>window.location='index.php?view=inic_form';</script>";
}