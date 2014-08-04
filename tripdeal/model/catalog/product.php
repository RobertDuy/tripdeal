<?php
class ModelCatalogProduct extends Model{
    public function getNewProductListReceive($type, $start, $limit){
        if($type == 'short'){
            $query = $this->db->query("SELECT * FROM product WHERE SUBTIME(CURTIME(), '30 0:0:0.000000') <= date_added ORDER BY date_added DESC LIMIT " . (int)$start . "," . (int)$limit);
        }else if($type == 'full'){
            if ($start < 0) {
                $start = 0;
            }
            if ($limit < 1) {
                $limit = 20;
            }
            $query = $this->db->query("SELECT * FROM" . DB_PREFIX . "product DESC LIMIT " . (int)$start . "," . (int)$limit);
        }
        return $query->rows;
    }
}
?>