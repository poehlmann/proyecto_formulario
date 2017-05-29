<div class="row">
    <div class="col-md-12">
        <h1>Nueva Solicitud</h1>
        <br>
        <form class="form-horizontal" method="post" id="addgeo01f01" action="index.php?view=addinic_form" role="form">
            <div class="form-group">
                <label class="col-lg-2 control-label">Nombre del instalador</label>
                <div class="col-md-6">
                    <input type="text" name="nombre_instalador" required class="form-control" id="nombre_instalador" placeholder="Nombre del instalador">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Correlativo</label>
                <div class="col-md-6">
                    <input type="text" name="correlativo" required class="form-control" id="correlativo" placeholder="correlativo">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Nombre del Proyecto</label>
                <div class="col-md-6">
                    <input type="text" name="nombre_proyecto" required class="form-control" id="nombre_proyecto" placeholder="Nombre del proyecto">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Localizacion</label>
                <div class="col-md-6">
                    <input type="text" name="localizacion" required class="form-control" id="localizacion" placeholder="Localizacion">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Contrato u orden de trabajo</label>
                <div class="col-md-6">
                    <input type="text" name="contrato_orden_trabajo" required class="form-control" id="contrato_orden_trabajo" placeholder="contrato u orden de trabajo">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Sector Trabajo</label>
                <div class="col-md-6">
                    <input type="text" name="sector_trabajo" required class="form-control" id="sector_trabajo" placeholder="Sector Trabajo">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Area Aceptada (m2)</label>
                <div class="col-md-6">
                    <input type="number" name="area_aceptada" required class="form-control" id="area_aceptada" placeholder="Area Aceptada (m2)">
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Fecha Proyecto</label>
                <div class="col-md-6">
                    <input type="date" name="fecha_proyecto" required class="form-control" id="fecha_proyecto" placeholder="Fecha Proyecto">
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="btn btn-primary">Agregar Solicitud</button>
                </div>
            </div>
        </form>
    </div>
</div>