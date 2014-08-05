<?php echo $header; ?>
<!-- End divMenu -->
<div class="wrapSilde">
    <div id="divFlexslider" class="lof-slidecontent divFlexslider">
        <div class="preload">
            <div></div>
        </div>
        <div class="main-slider-content">
            <ul class="sliders-wrap-inner">
                <li><img src="tripdeal/view/theme/default/image/issets/sl1.png"></li>
                <li><img src="tripdeal/view/theme/default/image/issets/sl2.png"></li>
                <li><img src="tripdeal/view/theme/default/image/issets/sl3.png"></li>
                <li><img src="tripdeal/view/theme/default/image/issets/sl1.png"></li>
            </ul>
        </div>
    </div>
    <div class="jogrutotrip">
        <div class="container">
            <div class="jogrutotripName"><img src="tripdeal/view/theme/default/image/issets/jogurutriphobo.png"></div>
            <div class="jogrutotrip-desp">
                A vagrant, whose impetus is travel,<br>
                the love of the journey above the actual destination.
            </div>
            <div class="divNational">
                <ul>
                    <li><a class="asia" href="#"></a></li>
                    <li><a class="africa" href="#"></a></li>
                    <li><a class="europe" href="#"></a></li>
                    <li><a class="north-america" href="#"></a></li>
                    <li><a class="oceania" href="#"></a></li>
                    <li><a class="south-america" href="#"></a></li>
                    <li class="arowOr"></li>
                    <li><a href="#" class="plantrip_btn"></a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- End SLIDE -->
<div class="wrapSearch">
    <div class="container">
        <div class="searchBox">
            <div class="form_controls">
                <label for="tourname">Tìm nhanh tour du lịch</label>
                <input type="text" class="textbox" placeholder="Nhập tên tour du lịch.." name="tourname" value=""
                       id="tourname" style="width: 195px;">
                <input type="hidden" name="sbk_href" value="">
                <input type="hidden" id="manual_submit" name="manual_submit" value="false">
            </div>
            <div class="form_controls">
                <label>Điểm khởi hành</label>
                <select class="selectbox idSelectbox">
                    <option selected="" value="">Tỉnh/TP</option>
                    <option value="2">TPCHM</option>
                    <option value="3">Hà nội</option>
                    <option value="4">Cần thơ</option>
                    <option value="5">Hải phòng</option>
                    <option value="6">Đà nẵng</option>
                    <option value="7">Đồng nai</option>
                    <option value="8">Nha trang</option>
                    <option value="9">Huế</option>

                </select>
            </div>
            <div class="form_controls">
                <label for="arrivedCountry">Điểm đến</label>
                <select class="selectbox idSelectbox">
                    <option selected="" value="">Quốc gia</option>
                    <option value="1">Việt nam</option>
                    <option value="2">Sigapore</option>
                    <option value="3">Trung quốc</option>
                    <option value="4">Hàn quốc</option>
                    <option value="5">Thái lan</option>
                    <option value="6">Campuchia</option>
                    <option value="7">Lào</option>
                    <option value="8">Philipine</option>
                    <option value="9">Indonesia</option>

                </select>
            </div>
            <div class="form_controls">
                <label for="arrivedCity"> Điểm đến </label>
                <select class="selectbox idSelectbox">
                    <option selected="" value="">Tỉnh/TP</option>
                    <option value="2">TPCHM</option>
                    <option value="3">Hà nội</option>
                    <option value="4">Cần thơ</option>
                    <option value="5">Hải phòng</option>
                    <option value="6">Đà nẵng</option>
                    <option value="7">Đồng nai</option>
                    <option value="8">Nha trang</option>
                    <option value="9">Huế</option>
                </select>
            </div>
            <div class="form_controls">
                <input type="submit" value="Tìm kiếm" class="submit">
                <input type="hidden" value="false" class="bnrsearch">
            </div>
            <div class="clearfix"></div>
        </div>
        <!--end search box-->
        <div class="clearfix"></div>
    </div>
</div>
<!-- CONTENT HOME -->
<div class="wrapContent">
    <div class="container">
        <div class="divContent">
            <p class="titleName">Deal mới nhận</p>

            <div class="divProduct">
                <?php echo $product_new_receive; ?>

                <div id="moreNewDealDiv"></div>
                <div class="clearfix"></div>
            </div>
            <div class="divCrlt">
                <button type="button" class="button" onclick="getNewDeal();">Xem thêm deal mới</button>
            </div>
        </div>
    </div>
</div>
<!-- END: CONTENT HOME -->
<!---->
<div class="wrapBgHome">
    <div class="container">
        <div class="divBgHome">
            <p class="titleN">Keep up and meet up with friends. See which of them are using ...</p>

            <div class="divProduct">
                <div class="autoSizeProd">
                    <div class="itemProd">
                        <a href="#" class="imgProd">
                            <img src="tripdeal/view/theme/default/image/issets/inboundTour.jpg">

                            <div class="mask"></div>
                        </a>

                        <div class="titleTour">
                            <a href="#" class="nameTour">Tour trong nước</a>
                        </div>
                    </div>
                </div>
                <div class="autoSizeProd">
                    <div class="itemProd">
                        <a href="#" class="imgProd">
                            <img src="tripdeal/view/theme/default/image/issets/inboundTour.jpg">

                            <div class="mask"></div>
                        </a>

                        <div class="titleTour">
                            <a href="#" class="nameTour">Tour quốc tế</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!---->
<div class="wrapBgHome1">
    <div class="container">
        <div class="divBgHome">
            <p class="titleN">Deal nổi bật</p>

            <div class="divProduct">

                <?php echo $product_special; ?>

                <div class="clearfix"></div>
            </div>
            <div class="divCrlt">
                <button type="button" class="button btColor" onclick="getNewDeal()">Xem thêm deal hot</button>
            </div>
        </div>
    </div>
</div>
<div class="wrapGroupImg">
    <div class="container">
        <div class="divGroupImg">
            <div class="autoSizeImg">
                <div class="marketing-text">
                    <div class="separator"></div>
                    <p class="name">Last year, 25 million Europeans chose a holiday home over a hotel room.</p>

                    <p class="sumary">Enjoy the comforts of an affordable holiday home, with the peace of mind of
                        booking through HouseTrip.</p>

                    <div class="separator"></div>
                </div>
            </div>
            <div class="autoSizeImg1">
                <div class="autoSizeImg1">
                    <div class="divImgRemo"
                         style="background:url(tripdeal/view/theme/default/image/issets/majorca.jpg) no-repeat -20px 0px">
                        <a href="#">
                            <div class="overlay"></div>
                            <div class="property-name">Rome</div>
                            <div class="property-count">3439 properties</div>
                        </a>
                    </div>
                </div>
                <div class="autoSizeImg2">
                    <div class="divImgRemo"
                         style="background:url(tripdeal/view/theme/default/image/issets/london.jpg) no-repeat -20px -40px">
                        <a href="#">
                            <div class="overlay"></div>
                            <div class="property-name">Lodon</div>
                            <div class="property-count">3439 properties</div>
                        </a>
                    </div>
                </div>
                <div class="autoSizeImg3">
                    <div class="divImgRemo"
                         style="background:url(tripdeal/view/theme/default/image/issets/paris.jpg) no-repeat -20px -200px">
                        <a href="#">
                            <div class="overlay"></div>
                            <div class="property-name">Paris</div>
                            <div class="property-count">3439 properties</div>
                        </a>
                    </div>
                </div>
                <div class="autoSizeImg1">
                    <div class="divImgRemo"
                         style="background:url(tripdeal/view/theme/default/image/issets/majorca.jpg) no-repeat -20px 0px">
                        <a href="#">
                            <div class="overlay"></div>
                            <div class="property-name">Rome ann</div>
                            <div class="property-count">3439 properties</div>
                        </a>
                    </div>
                </div>
                <div class="autoSizeImg1">
                    <div class="divImgRemo"
                         style="background:url(tripdeal/view/theme/default/image/issets/majorca.jpg) no-repeat -20px -50px">
                        <a href="#">
                            <div class="overlay"></div>
                            <div class="property-name">Rome</div>
                            <div class="property-count">3439 properties</div>
                        </a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var index = 0;
    function getNewDeal() {
        //TODO: loading idicator here
        index++;
        $.ajax({
            url: "/<?php echo DIR_ROOT_NAME ?>/?route=common/product_portrait",
            type: "post",
            data: {
                'index': index
            },
            dataType: "html",
            success: function (result) {
                $('#moreNewDealDiv').append(result);
            }
        });
    }
</script>
<?php echo $footer; ?>