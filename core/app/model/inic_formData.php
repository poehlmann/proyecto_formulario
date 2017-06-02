<?php
class inic_formData {
    public static $tablename = "solicitud_form";



    public function __construct(){
        $this->id="";
        $this->correlativo = "";
        $this->id_usuario = $_SESSION['user_id'];
        $this->nombre_instalador = "";
        $this->nombre_proyecto = "";
        $this->localizacion = "";
        $this->contrato_orden_trabajo= "";
        $this->sector_trabajo="";
        $this->area_aceptada="";
        $this->fecha_proyecto ="";
    }

    public function add(){
        $sql = "insert into ".self::$tablename." (id_usuario,correlativo,fecha_proyecto,nombre_instalador,nombre_proyecto,localizacion,contrato_orden_trabajo,sector_trabajo,area_aceptada) ";
        $sql .= "values (\"$this->id_usuario\",\"$this->correlativo\",\"$this->fecha_proyecto\",\"$this->nombre_instalador\",\"$this->nombre_proyecto\",\"$this->localizacion\",\"$this->contrato_orden_trabajo\",\"$this->sector_trabajo\",\"$this->area_aceptada\")";
        Executor::doit($sql);
    }

    public static function delById($id){
        $sql = "delete from ".self::$tablename." where id=$id";
        Executor::doit($sql);
    }
    public function del(){
        $sql = "delete from ".self::$tablename." where id_usuario=$this->id_usuario";
        Executor::doit($sql);
    }

// partiendo de que ya tenemos creado un objecto inic_formData previamente utilizamos el contexto
    public function update(){
        $sql = "update ".self::$tablename." set correlativo=\"$this->correlativo\",nombre_instalador=\"$this->nombre_instalador\",nombre_proyecto=\"$this->nombre_proyecto\",localizacion=\"$this->localizacion\",contrato_orden_trabajo=\"$this->contrato_orden_trabajo\",sector_trabajo=\"$this->sector_trabajo\",area_aceptada=\"$this->area_aceptada\",fecha_proyecto=\"$this->fecha_proyecto\" where id_usuario=$this->id_usuario";
        Executor::doit($sql);
    }


    public static function getById($id){
        $sql = "select * from ".self::$tablename." where id=$id";
        $query = Executor::doit($sql);
        $found = null;
        $data = new inic_formData();
        while($r = $query[0]->fetch_array()){
            $data->correlativo = $r['correlativo'];
            $data->nombre_instalador = $r['nombre_instalador'];
            $data->nombre_proyecto = $r['nombre_proyecto'];
            $data->localizacion = $r['localizacion'];
            $data->contrato_orden_trabajo= $r['contrato_orden_trabajo'];
            $data->sector_trabajo=$r['sector_trabajo'];
            $data->area_aceptada=$r['area_aceptada'];
            $data->fecha_proyecto =$r['fecha_proyecto'];
            $found = $data;
            break;
        }
        return $found;
    }



    public static function getAll(){
        $sql = "select * from ".self::$tablename;
        $query = Executor::doit($sql);
        $array = array();
        $cnt = 0;
        while($r = $query[0]->fetch_array()){
            $array[$cnt] = new inic_formData();
            $array[$cnt]->id = $r['id'];
            $array[$cnt]->nombre_proyecto = $r['nombre_proyecto'];
            $array[$cnt]->fecha_proyecto = $r['fecha_proyecto'];
            $cnt++;
        }
        return $array;
    }


    public static function getLike($q){
        $sql = "select * from ".self::$tablename." where name like '%$q%'";
        $query = Executor::doit($sql);
        $array = array();
        $cnt = 0;
        while($r = $query[0]->fetch_array()){
            $array[$cnt] = new inic_formData();
            $array[$cnt]->id = $r['id'];
            $array[$cnt]->name = $r['name'];
            $array[$cnt]->created_at = $r['created_at'];
            $cnt++;
        }
        return $array;
    }
}
