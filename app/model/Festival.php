<?php

class Festival extends Model {

    /**
     * @description Renvoi la liste des films
     * @return array $films
     */
    public static function getAllFest($rand = true){
        $db = Database::getInstance();
        $sql = "SELECT * FROM festival";

        if($rand){
            $sql .= " order by rand()
                      limit 0, 5";
        }                

        $name_fest = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        return $name_fest;
    }

    public static function getTypes(){
        $db = Database::getInstance();

        $sql = "select * from domaine";
        $domaines = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        return $domaines;
    }

    public static function search($name, $type, $date){
        $db = Database::getInstance();
        
        $sql = "select * from festival as f";

        if($type != ''){
            $sql .= " inner join domaine_has_festival as h";
        }        

        $sql .= " where 1=1";

        if($name != ''){
            $sql .= " and f.nom_manifestation like '%" .$name. "%'";
        }
        if($type != ''){
            $sql .= " and f.id = h.festival_id
                      and h.domaine_id = " .$type;
        }
        
        $sql .= " limit 0, 5";

        //echo $sql;

        $festivals = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        return $festivals;

    }

    public static function getFestivalById($id_festival){
        $db = Database::getInstance();

        $sql = "select * from festival
                where id = " .$db->quote($id_festival, PDO::PARAM_INT);
        $infoFest = $db->query($sql)->fetch(PDO::FETCH_ASSOC);

        return $infoFest;
    }

   /* public static function getFestInfos(){

        $db = Database::getInstance();

        $sql = "SELECT * FROM festival";
        $infosFests = $db->query($sql)->fetchAll(PDO::ASSOC);
        
        return $infosFests;
    }*/
}