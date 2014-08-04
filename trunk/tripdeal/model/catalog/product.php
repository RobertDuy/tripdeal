<?php
    class ModelCatalogProduct extends Model{
        public function getNewProductListReceive($type, $start = 0, $limit = 20){
            if($type == 'short'){
                $query = $this->db->query("SELECT * FROM" . DB_PREFIX . "product WHERE SUBTIME(CURTIME(), '30 0:0:0.000000') <= date_added");
            }else if($type == 'full'){
                if ($start < 0) {
                    $start = 0;
                }
                if ($limit < 1) {
                    $limit = 20;
                }
                $query = $this->db->query("SELECT * FROM" . DB_PREFIX . "product DESC LIMIT " . (int)$start . "," . (int)$limit);
            }
            if ($query->num_rows) {
                return array(
                    'product_id'       => $query->row['product_id'],
                    'name'             => $query->row['name'],
                    'description'      => $query->row['description'],
                    'meta_description' => $query->row['meta_description'],
                    'meta_keyword'     => $query->row['meta_keyword'],
                    'tag'              => $query->row['tag'],
                    'model'            => $query->row['model'],
                    'sku'              => $query->row['sku'],
                    'upc'              => $query->row['upc'],
                    'ean'              => $query->row['ean'],
                    'jan'              => $query->row['jan'],
                    'isbn'             => $query->row['isbn'],
                    'mpn'              => $query->row['mpn'],
                    'location'         => $query->row['location'],
                    'quantity'         => $query->row['quantity'],
                    'stock_status'     => $query->row['stock_status'],
                    'image'            => $query->row['image'],
                    'manufacturer_id'  => $query->row['manufacturer_id'],
                    'manufacturer'     => $query->row['manufacturer'],
                    'price'            => ($query->row['discount'] ? $query->row['discount'] : $query->row['price']),
                    'special'          => $query->row['special'],
                    'reward'           => $query->row['reward'],
                    'points'           => $query->row['points'],
                    'tax_class_id'     => $query->row['tax_class_id'],
                    'date_available'   => $query->row['date_available'],
                    'weight'           => $query->row['weight'],
                    'weight_class_id'  => $query->row['weight_class_id'],
                    'length'           => $query->row['length'],
                    'width'            => $query->row['width'],
                    'height'           => $query->row['height'],
                    'length_class_id'  => $query->row['length_class_id'],
                    'subtract'         => $query->row['subtract'],
                    'rating'           => round($query->row['rating']),
                    'reviews'          => $query->row['reviews'] ? $query->row['reviews'] : 0,
                    'minimum'          => $query->row['minimum'],
                    'sort_order'       => $query->row['sort_order'],
                    'status'           => $query->row['status'],
                    'date_added'       => $query->row['date_added'],
                    'date_modified'    => $query->row['date_modified'],
                    'viewed'           => $query->row['viewed']
                );
            }else{
                return false;
            }
        }
    }
?>