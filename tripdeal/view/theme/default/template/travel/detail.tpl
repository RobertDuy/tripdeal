<?php echo $header; ?>

<!--Function for a related product-->
<?php 
    function displayRelated($product){ ?>
        <div class="itemProd">
            <a href="#" class="imgProd">
                <img src="<?php echo IMAGE_BASE.$dataImage[0]['image']; ?> ">>
            </a>
            <div class="desProd1">
                <p class="name"><a href="#"> Du lich thai lan 5 sao:  Bangkok, Pattaya</a></p>
                    <div class="divPriceInfo">
                        <div class="priceOff">10<i>%</i></div>
                        <div class="price">
                            <p class="priceSale">500.000đ</p>
                            <p class="priceNews">400.000<sup>đ</sup></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
        <div class="divMeta">
            <div class="icTime divCountdown"></div>
        </div>
        <i class="icSale"></i>
    </div>        
<?php } ?>
<!-- End divMenu -->
<div class="wrapProductImgOut">
    <div class="container">
        <div id="jslidernews" class="divProductImgOut lof-slidecontent">
            <div class="preload"><div></div></div>
            <div class="main-slider-content">
                <ul class="sliders-wrap-inner">
                    <?php foreach($dataImage as $prdImage){ ?>
                        <li><img src="<?php echo IMAGE_BASE.$prdImage['image']; ?> "></li>
                    <?php } ?>
                </ul>
            </div>
            <div class="navigator-content">
                <div class="button-next">Next</div>
                <div class="navigator-wrapper">
                    <ul class="navigator-wrap-inner">
                        <?php foreach($dataImage as $prdImage){ ?>
                        <li><img src="<?php echo IMAGE_BASE.$prdImage['image']; ?> "></li>
                        <?php } ?>
                    </ul>
                </div>
                <div  class="button-previous">Previous</div>
            </div>
        </div>
    </div>
</div>
<!-- End SLIDE -->
<div class="wrapProductDetail">
<div class="container">
    <div class="divProductDetail">
        <div class="product-info">
            <div class="fillL"></div>
            <div class="fillR"></div>
            <div class="product-infoL">
                <div class="product-star"><?php echo $prdInfo[0]['location']; ?></div>
                <p class="product-title"><?php echo $dataModel[0]['name']; ?></p>
                <div class="buy-number"><?php echo $prdInfo[0]['quantity']; ?><br><span>đã mua</span></div>
                <div class="remain-time hasCountdown">
                    <div id="decountdown"></div>
                    <!--<div>18<br><span>ngày</span></div>
                    <div class="sep sep_first">:</div>
                    <div>18 <br><span>giờ</span></div>
                    <div class="sep">:</div>
                    <div>44<br><span>phút</span></div>
                    <div class="sep">:</div>
                    <div>41<br><span>giây</span></div>-->
                    <div class="clearfix"></div>
                </div>
                <div class="product-type ">Giao Voucher</div>
                <div class="addthistoolbox"><img src="tripdeal/view/theme/default/image/issets/liFb.png"></div>
                <div class="clearfix"></div>
            </div>
            <div class="product-infoR">
                <div class="buy-wrapper">
                    <div class="list-price">Giá gốc: <?php echo $prdInfo[0]['price']; ?><sup>đ</sup>(-<?php echo (integer)(100*(1 - $prdDiscount[0]['price']/$prdInfo[0]['price'])); ?>%)</div>
                    <div class="sell-price"><?php echo $prdDiscount[0]['price']; ?><sup>đ</sup></div>
                    <button class="buttonBuy" type="button"></button>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="divColumn">
            <div class="line"></div>
            <div class="divColumnL">
                <div class="divTab">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active"><i></i><a href="#descriptionTab">Tour overview</a></li>
                        <li><i></i><a href="#itineraryTab">Itinerary</a></li>
                        <li><i></i><a href="#termTab">Term and conditions</a></li>
                    </ul>
                    <div class="tab-pane active" id="descriptionTab">
                        <?php echo htmlspecialchars_decode($dataModel[0]['description']); ?>
                    </div>
                    <div class="tab-pane" id="itineraryTab">
                        <?php echo htmlspecialchars_decode($dataModel[0]['itinerary']); ?>
                    </div>
                    <div class="tab-pane" id="termTab">
                        <?php echo htmlspecialchars_decode($dataModel[0]['term_condition']); ?>
                    </div>
                </div>
            </div>
            <div class="divColumnR">
                <div class="productSibar">
                    <p class="sec-title">Liên hệ đặt phòng</p>
                    <div class="address-box">
                        <div class="address">
                            <strong>Bộ phận đặt phòng HCM</strong><br>
                            294 Hòa Bình, P.Hiệp Tân, Q.Tân Phú<br>
                            <div class="hr"></div>
                            <strong>Thời gian làm việc: </strong><br>
                            - Thứ Hai - Thứ Sáu: 8h-17h<br>
                            - Thứ Bảy: 8h-12h
                        </div>
                        <div><a class="go-to-map" rel="title-booking-at" href="#">Xem bản đồ</a></div>
                        <div class="hr"></div>
                        <div class="phone">08.73003799</div>
                        <div class="hr"></div>
                        <div class="email">
                            <a href="mailto:booking@hotdeal.vn">
                                booking@hotdeal.vn
                            </a>
                        </div>
                    </div>
                    <div class="divMap">
                        <a href="#"><img src="tripdeal/view/theme/default/image/issets/map.jpg"></a>
                    </div>
                    <p class="sec-title">Deal liên quan</p>
                    <div class="prodSibar">
                        <?php displayRelated(1); ?>
                        <div class="itemProd">
                            <a href="#" class="imgProd">
                                <img src="tripdeal/view/theme/default/image/issets/inboundTour.jpg">
                            </a>
                            <div class="desProd1">
                                <p class="name"><a href="#"> Du lich thai lan 5 sao:  Bangkok, Pattaya</a></p>
                                <div class="divPriceInfo">
                                    <div class="priceOff">10<i>%</i></div>
                                    <div class="price">
                                        <p class="priceSale">500.000đ</p>
                                        <p class="priceNews">400.000<sup>đ</sup></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="divMeta">
                                <div class="icTime divCountdown"></div>
                            </div>
                            <i class="icSale"></i>
                        </div>
                        <div class="itemProd">
                            <button onclick="seeFullDealTravel();">SEE FULL DEAL TRAVEL</button>
                        </div>
                        <!---->
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!--column-->
    </div>
</div>
</div>
<script type="text/javascript">
    function seeFullDealTravel(){
        window.location.assign("/openstore/?route=travel/full");
    }
</script>

<?php echo $footer; ?>