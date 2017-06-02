<?php

if(count($_POST)>0){
    $form_geo01f01 = new geo01f01Data();
    $form_geo01f01->id_solicitud_form =$_POST["id"];
    $form_geo01f01->aceptado_rechazado = $_POST["aceptado_rechazado"];
    $form_geo01f01->add();

    print "<script>window.location='index.php?view=geo01f01';</script>";
}