<div class="row">
    <div class="col-md-12">
        <h1>PROTOCOLO DE ACEPTACIÓN DE SUPERFICIE DE TERRENO</h1>
        <br>
        <?php

        $solic_form = inic_formData::getAll();
        if (count($solic_form) > 0){
        // si hay usuarios
        ?>

        <table class="table table-bordered table-hover">
            <thead>
            <th>Nombre</th>
            <th></th>
            </thead>
            <?php
            foreach ($solic_form as $form) {

                    ?>
                    <tr>
                        <td><?php echo $form->nombre_proyecto; ?></td>
                        <td style="width:130px;"><a href="index.php?view=newgeo01f01&id=<?php echo $form->id; ?>"
                                                    class="btn btn-warning btn-xs">Aceptacion o Rechazo</a></td>
                    </tr>
                <?php
                }
            } else {
                echo "<p class='alert alert-danger'>No hay solicitud de formulario</p>";
            }
            ?>
    </div>
</div>