<?php
class geo01f01Data {
    public static $tablename = "geo01f01";



    public function geo01f01Data(){
        $this->id_usuario=$_SESSION['user_id'];
        $this->correlativo = "";
        $this->nombre_instalador = "";
        $this->nombre_proyecto = "";
        $this->localizacion = "";
        $this->contrato_orden_trabajo= "";
        $this->sector_trabajo="";
        $this->area_aceptada="";
        $this->fecha_proyecto ="";
        $this->aceptado_rechazado="";
        $this->fecha_aceptacion = "NOW()";
    }

    public function add(){
        $sql = "insert into ".self::$tablename." (id_usuario,aceptado_rechazado,correlativo,fecha_proyecto,nombre_instalador,nombre_proyecto,localizacion,contrato_orden_trabajo,sector_trabajo,area_aceptada) ";
        $sql .= "values (\"$this->id_usuario\",\"$this->aceptado_rechazado\",\"$this->correlativo\",\"$this->fecha_proyecto\",\"$this->nombre_instalador\",\"$this->nombre_proyecto\",\"$this->localizacion\",\"$this->contrato_orden_trabajo\",\"$this->sector_trabajo\",\"$this->area_aceptada\")";
        Executor::doit($sql);
    }

    public static function delById($id){
        $sql = "delete from ".self::$tablename." where id=$id";
        Executor::doit($sql);
    }
    public function del(){
        $sql = "delete from ".self::$tablename." where id=$this->id";
        Executor::doit($sql);
    }

// partiendo de que ya tenemos creado un objecto geo01f01Data previamente utilizamos el contexto
    public function update(){
        $sql = "update ".self::$tablename." set name=\"$this->name\" where id=$this->id";
        Executor::doit($sql);
    }


    public static function getById($id){
        $sql = "select * from ".self::$tablename." where id=$id";
        $query = Executor::doit($sql);
        $found = null;
        $data = new geo01f01Data();
        while($r = $query[0]->fetch_array()){
            $data->id = $r['id'];
            $data->name = $r['name'];
            $data->created_at = $r['created_at'];
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
            $array[$cnt] = new geo01f01Data();
            $array[$cnt]->id = $r['id'];
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
            $array[$cnt] = new geo01f01Data();
            $array[$cnt]->id = $r['id'];
            $array[$cnt]->name = $r['name'];
            $array[$cnt]->created_at = $r['created_at'];
            $cnt++;
        }
        return $array;
    }
}
