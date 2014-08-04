<?php foreach($dataModel as $product){ ?>
    <div class="autoSizeProd">
        <div class="itemProd">
            <a href="/<?php echo DIR_ROOT_NAME?>/?route=travel/detail" class="imgProd">
                <img src="<?php echo $product['image']; ?>">
                <div class="mask"></div>
            </a>
            <div class="desProd1">
                <p class="name"><a href="#"> <?php echo $product['title']?></a></p>
                <div class="divPriceInfo">
                    <div class="priceOff">10<i>%</i></div>
                    <div class="price">
                        <p class="priceSale"><?php echo $product['price']?></p>
                        <p class="priceNews">100<sup>d</sup></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="dateNumber"><?php echo $product['duration'] ?></div>
                <div class="clear   fix"></div>
            </div>
            <div class="divMeta">
                <div class="icTime divCountdown"></div>
            </div>
            <i class="icSale"></i>
        </div>
    </div>
<?php } ?>