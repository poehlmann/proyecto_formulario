<div class="row">
    <div class="col-md-12">
        <div class="btn-group pull-right">
            <a href="index.php?view=newinic_form" class="btn btn-default"><i class='fa fa-th-list'></i>Solicitud</a>
        </div>
        <h1>Solicitud de Formulario</h1>
        <br>
        <?php

        $solic_form = inic_formData::getAll();
        if(count($solic_form)>0){
        // si hay usuarios
        ?>

        <table class="table table-bordered table-hover">
            <thead>
            <th>Nombre</th>
            <th></th>
            </thead>
            <?php
            foreach($solic_form as $form){
                ?>
                <tr>
                    <td><?php echo $form->nombre_proyecto; ?></td>
                    <td style="width:130px;"><a href="index.php?view=editinic_form&id=<?php echo $form->id;?>" class="btn btn-warning btn-xs">Editar</a> <a href="index.php?view=delinic_form&id=<?php echo $form->id;?>" class="btn btn-danger btn-xs">Eliminar</a></td>
                </tr>
                <?php

            }



            }else{
                echo "<p class='alert alert-danger'>No hay solicitud de formulario</p>";
            }


            ?>
    </div>
</div>