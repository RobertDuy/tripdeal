ALTER TABLE `product_description` ADD COLUMN duration VARCHAR(225) DEFAULT "5 Ngay 4 Dem";
UPDATE `product_description` set name= ''DU LICH THAI LAN'' WHERE product_id > 0;
UPDATE `product` set image=''tripdeal/view/theme/default/image/issets/inboundTour.jpg'' WHERE  product_id > 0;