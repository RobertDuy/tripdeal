<?php
class ModelCatalogProduct extends Model{
    public function getNewProductListReceive($type, $start, $limit){
        $start = $start * $limit;

        if($type == 'newReceived'){
            $query = $this->db->query("SELECT * FROM product WHERE SUBTIME(CURTIME(), '30 0:0:0.000000') <= date_added ORDER BY date_added DESC LIMIT " . (int)$start . "," . (int)$limit);
        }else if($type == 'special'){
            //TODO : rewrite SQL HERE FOR SPECIAL
            $query = $this->db->query("SELECT * FROM product WHERE SUBTIME(CURTIME(), '30 0:0:0.000000') <= date_added ORDER BY date_added DESC LIMIT " . (int)$start . "," . (int)$limit);
        }else if($type == 'full'){
            $query = $this->db->query("SELECT * FROM" . DB_PREFIX . "product DESC LIMIT " . (int)$start . "," . (int)$limit);
        }
        return $query->rows;
    }
}
?>