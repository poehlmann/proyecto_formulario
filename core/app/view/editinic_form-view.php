<?php $inic_form = inic_formData::getById($_GET["id"]);?>
<div class="row">
    <div class="col-md-12">
        <h1>Editar Solicitud Formulario</h1>
        <br>
        <form class="form-horizontal" method="post" id="addproduct" action="index.php?view=updateinic_form" role="form">
            <div class="form-group">
                <label class="col-lg-2 control-label">Nombre del instalador</label>
                <div class="col-md-6">
                    <input type="text"  value="<?php echo $inic_form->nombre_instalador;?>" name="nombre_instalador"  required class="form-control" id="nombre_instalador" placeholder="Nombre del instalador">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Correlativo</label>
                <div class="col-md-6">
                    <input type="text"  value="<?php echo $inic_form->correlativo;?>" name="correlativo" required class="form-control" id="correlativo" placeholder="correlativo">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Nombre del Proyecto</label>
                <div class="col-md-6">
                    <input type="text"  value="<?php echo $inic_form->nombre_proyecto;?>" name="nombre_proyecto" required class="form-control" id="nombre_proyecto" placeholder="Nombre del proyecto">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Localizacion</label>
                <div class="col-md-6">
                    <input type="text"  value="<?php echo $inic_form->localizacion;?>" name="localizacion" required class="form-control" id="localizacion" placeholder="Localizacion">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Contrato u orden de trabajo</label>
                <div class="col-md-6">
                    <input type="text"  value="<?php echo $inic_form->contrato_orden_trabajo;?>" name="contrato_orden_trabajo" required class="form-control" id="contrato_orden_trabajo" placeholder="contrato u orden de trabajo">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Sector Trabajo</label>
                <div class="col-md-6">
                    <input type="text"  value="<?php echo $inic_form->sector_trabajo;?>" name="sector_trabajo" required class="form-control" id="sector_trabajo" placeholder="Sector Trabajo">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Area Aceptada (m2)</label>
                <div class="col-md-6">
                    <input type="number"  value="<?php echo $inic_form->area_aceptada;?>" name="area_aceptada" required class="form-control" id="area_aceptada" placeholder="Area Aceptada (m2)">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Fecha Proyecto</label>
                <div class="col-md-6">
                    <input type="date"  value="<?php echo $inic_form->fecha_proyecto;?>" name="fecha_proyecto" required class="form-control" id="fecha_proyecto" placeholder="Fecha Proyecto">
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <input type="hidden" name="id" value="<?php echo $_GET["id"];?>">
                    <button type="submit" class="btn btn-primary">Modificar Solicitud</button>
                </div>
            </div>
        </form>
    </div>
</div>