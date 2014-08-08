<?php echo $header; ?>
<!-- End divMenu -->
<div class="wrapCusotmized">
<div class="container">
<div class="divCusotmized">
<div class="title">Where do you want to go?</div>

<ul class="js_cont_list">
    <?php echo $continent; ?>
</ul>

<div class="clearfix"></div>
<div class="contentCustomized">
<div class="akordeon" id="buttons">

<div class="akordeon-item expanded" id="step1">
    <div class="akordeon-item-head">
        <div class="akordeon-item-head-container">
            <div class="akordeon-heading">
                <i>1</i>Select Location
            </div>
        </div>
    </div>
    <div class="akordeon-item-body">
        <div class="akordeon-item-content">
            <form>
                <div class="divCountry">
                    <a href="#pprev" class="pprev"></a>
                    <a href="#pnext" class="pnext"></a>
                    <ul class="thumCity">
                        <?php echo $country; ?>
                    </ul>
                </div>
                <div id="loadCityDiv"><?php echo $city; ?></div>
                <div class="carousel_city">
                    <div class="divRoute">
                        <ul class="liCiyS" id="lstCityDiv"></ul>
                    </div>
                </div>
                <div class="btn_wrapper">
                    <a class="button" href="javascript:void(0);" onclick="return gotoStep(2);"><span>Proceed</span></a>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="akordeon-item" id="step2">
    <div class="akordeon-item-head">
        <div class="akordeon-item-head-container">
            <div class="akordeon-heading">
                <i>2</i>Select Date
            </div>
        </div>
    </div>
    <div class="akordeon-item-body">
        <form>
            <div class="akordeon-item-content jsiselect_date">
                <label class="lbel">Cities you have selected</label>

                <div class="tabSpan" id="step2ListCityDiv"></div>
                <div class="clearfix"></div>
                <div class="period_wrapper">
                    <div class="journey_period">
                        <label class="lbel">Start Date</label>

                        <div class="datePer">
                            <input type="text" class="textbox txtDatetime">
                        </div>
                    </div>
                    <div class="how_many_days">
                        <label class="lbel">Start Date</label>

                        <div class="divControlSq">
                            <span class="divbtnDec"><a ng-click="quantityDecrease(1)" class="btnDec quantityicon">-</a></span>
                            <span class="divTextbox"><input type="text"
                                                            class="textbox txtQuantity onlyNumber txtQualityDetail"
                                                            ng-model="quantityValue" value="1"/></span>
                            <span class="divbtnDec"><a ng-click="quantityIncrease(1)" class="btnInc quantityicon">+</a></span>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="trip_title">
                        <label class="lbel">Give a name to your Trip</label>
                        <input id="tripCustomName" type="text" class="textbox" value="" placeholder="Trip on...">
                    </div>
                    <a href="javascript:void(0);" class="button" onclick="gotoStep(3)"><span>Proceed</span></a>
                    <div class="clearfix"></div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="akordeon-item" id="step3">
    <div class="akordeon-item-head">
        <div class="akordeon-item-head-container">
            <div class="akordeon-heading">
                <i>3</i>Select Attractions
            </div>
        </div>
    </div>
    <div class="akordeon-item-body">
        <div class="akordeon-item-content">
            <div>
                <div class="styleCheck">
                    <p class="titleP">Which travel style suits you best?*</p>
                    <ul class="liCheck">
                        <li>
                            <input id="0_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('0_suite', 'Adventure')"/>
                            <label id="Label2" for="0_suite" class="checkoff">Adventure</label>
                        </li>
                        <li>
                            <input id="1_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('1_suite', 'Luxury')"/>
                            <label id="Label3" for="1_suite" class="checkoff">Luxury</label>
                        </li>
                        <li>
                            <input id="2_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('2_suite', 'Cruises')"/>
                            <label id="Label4" for="2_suite" class="checkoff">Cruises</label>
                        </li>
                        <li>
                            <input id="3_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('3_suite', 'Beaches')"/>
                            <label id="Label5" for="3_suite" class="checkoff">Beaches</label>
                        </li>
                        <li>
                            <input id="4_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('4_suite', 'Responsible travel')"/>
                            <label id="Label6" for="4_suite" class="checkoff">Responsible travel</label>
                        </li>
                        <li>
                            <input id="5_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('5_suite', 'Honeymoon')"/>
                            <label id="Label7" for="5_suite" class="checkoff">Honeymoon</label>
                        </li>
                        <li>
                            <input id="6_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('6_suite', 'Short Breaks')"/>
                            <label id="Label8" for="6_suite" class="checkoff">Short Breaks</label>
                        </li>
                        <li>
                            <input id="7_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('7_suite', 'Multi Country')"/>
                            <label id="Label9" for="7_suite" class="checkoff">Multi Country</label>
                        </li>
                        <li>
                            <input id="8_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('8_suite', 'Day Trips')"/>
                            <label id="Label10" for="8_suite" class="checkoff">Day Trips</label>
                        </li>
                        <li>
                            <input id="9_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('9_suite', 'Accommodation only')"/>
                            <label id="Label11" for="9_suite" class="checkoff">Accommodation only</label>
                        </li>
                        <li>
                            <input id="10_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('10_suite', 'Transfer only')"/>
                            <label id="Label12" for="10_suite" class="checkoff">Transfer only</label>
                        </li>
                        <li>
                            <input id="11_suite" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('11_suite', 'Others')"/>
                            <label id="Label13" for="11_suite" class="checkoff">Others</label>
                        </li>
                        <li class="col2Chek">
                            <input type="text" class="textbox" style="width:80%" id="otherSuite"/>
                        </li>
                        <div class="clearfix"></div>
                    </ul>
                    <p class="titleP">What type of accommodation would you like?*</p>
                    <ul class="liCheck">
                        <li>
                            <input id="0_acc" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('0_acc', '3 stars')"/>
                            <label id="Label1" for="0_acc" class="checkoff">3 stars</label>
                        </li>
                        <li>
                            <input id="1_acc" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('1_acc', '4 stars')"/>
                            <label id="Label2" for="1_acc" class="checkoff">4 stars</label>
                        </li>
                        <li>
                            <input id="2_acc" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('2_acc', '5 stars resort')"/>
                            <label id="Label3" for="2_acc" class="checkoff">5 stars resort</label>
                        </li>
                        <li>
                            <input id="3_acc" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('3_acc', 'Boutique (3 - 4 stars)')"/>
                            <label id="Label4" for="3_acc" class="checkoff">Boutique (3 - 4 stars)</label>
                        </li>
                        <li>
                            <input id="4_acc" type="checkbox" class="checkbox" onclick="step3HandleCheckbox('4_acc', 'Not required')"/>
                            <label id="Label5" for="4_acc" class="checkoff">Not required</label>
                        </li>
                        <div class="clearfix"></div>
                    </ul>
                    <div class="btn_wrapper">
                        <a href="javascript:void(0);" class="button" onclick="gotoStep(4)"><span>Proceed</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="akordeon-item" id="step4">
    <div class="akordeon-item-head">
        <div class="akordeon-item-head-container">
            <div class="akordeon-heading">
                <i>4</i>Book Hotels
            </div>
        </div>
    </div>
    <div class="akordeon-item-body">
        <div class="akordeon-item-content">
            <div>
                <div class="styleCheck">
                    <p class="titlePV">YOUR CONTACT INFORMATION</p>

                    <div class="pMr">Your information is held in strict confidence. We will not share or sell your
                        information with anyone else.
                    </div>
                    <ul class="liCheckI">
                        <li class="pad">
                            <input name="txtFirstname" type="text" value="First name" id="txtFirstname" class="textbox"
                                   onfocus="if(this.value=='First name')this.value='';"
                                   onblur="if(this.value==''){ this.value='First name';} else { step4BookHotel[0] = this.value; }" />
                        </li>
                        <li class="pad1">
                            <input name="txtLastname" type="text" value="Last name" id="txtLastname" class="textbox"
                                   onfocus="if(this.value=='Last name')this.value='';"
                                   onblur="if(this.value==''){this.value='Last name';} else { step4BookHotel[1] = this.value;}"/>
                        </li>
                        <li class="pad">
                            <input name="txtPhone" type="text" value="Telephone*" id="txtPhone" tabindex="5"
                                   class="textbox" onfocus="if(this.value=='Telephone*')this.value='';"
                                   onblur="if(this.value==''){ this.value='Telephone*'; } else { step4BookHotel[2] = this.value;}"/>
                        </li>
                        <li class="pad1">
                            <select class="selectbox idSelectbox" onchange="step4BookHotel[3] = this.value;">
                                <option selected="" value="">Country of residence*</option>
                                <option value="TPCHM">TPCHM</option>
                                <option value="Hà nội">Hà nội</option>
                                <option value="Cần thơ">Cần thơ</option>
                                <option value="Hải Phòng">Hải Phòng</option>
                                <option value="Đà nẵng">Đà nẵng</option>
                                <option value="Đồng nai">Đồng nai</option>
                                <option value="Nha trang">Nha trang</option>
                                <option value="Huế">Huế</option>
                            </select>
                        </li>
                        <li class="pad">
                            <input name="txtEmail" type="text" value="Email Address*" id="txtEmail" tabindex="5"
                                   class="textbox" onfocus="if(this.value=='Email Address*')this.value='';"
                                   onblur="if(this.value==''){this.value='Email Address*';} else { step4BookHotel[4] = this.value;}"/>
                        </li>
                        <li class="pad1">
                            <select class="selectbox idSelectbox" onchange="step4BookHotel[5] = this.value;">
                                <option selected="" value="">Nationality</option>
                                <option value="TPCHM">TPCHM</option>
                                <option value="Hà nội">Hà nội</option>
                                <option value="Cần thơ">Cần thơ</option>
                                <option value="Hải Phòng">Hải Phòng</option>
                                <option value="Đà nẵng">Đà nẵng</option>
                                <option value="Đồng nai">Đồng nai</option>
                                <option value="Nha trang">Nha trang</option>
                                <option value="Huế">Huế</option>
                            </select>
                        </li>
                        <li class="pad">
                            <input name="txtCfrEmail" type="text" value="Confirm email address*" id="txtCfrEmail"
                                   tabindex="4" class="textbox"
                                   onfocus="if(this.value=='Confirm email address*')this.value='';"
                                   onblur="if(this.value=='')this.value='Confirm email address*';"/>
                        </li>
                        <li class="pad1">
                            <select class="selectbox idSelectbox" onselect="step4BookHotel[6] = this.value;">
                                <option selected="" value="">How did you hear about us?*</option>
                                <option value="2">Google Search</option>
                                <option value="3">Yahoo Search</option>
                                <option value="4">Repeat Customer</option>
                                <option value="5">Recommendation</option>
                                <option value="6">Roughguide</option>
                                <option value="7">www.tripadvisor.com</option>
                                <option value="8">Newspaper</option>
                                <option value="9">Asia Paradises</option>
                            </select>
                        </li>

                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class="btn_wrapper">
                    <a href="javascript:void(0);" class="button" onclick="gotoStep(5)"><span>Proceed</span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="akordeon-item" id="step5">
    <div class="akordeon-item-head">
        <div class="akordeon-item-head-container">
            <div class="akordeon-heading">
                <i>5</i>Share & Print
            </div>
        </div>
    </div>
    <div class="akordeon-item-body">
        <div class="akordeon-item-content">
            <form>
                <div class="bgShare">
                    <div class="divShare">
                        <h2>Congrats... your dream itinerary is ready!</h2>

                        <div class="step-five-email">
                            <p class="mar">Need a copy?</p>
                            <input type="text" class="textbox" placeholder="Please enter your email" id="userEmail">
                            <button type="button" class="button" onclick="submitCustomInfo('<?php echo DIR_ROOT_NAME ?>');">Submit</button>
                            <div class="clearfix"></div>
                            <p class="mar">Drop your email here and we'll send one over!</p>
                        </div>
                        <div class="clearfix"></div>
                        <ul class="left-space-step-five">
                            <li class="space large">Get suggestions from your friends!</li>
                            <li>
                                <a href="#"><img alt="Share on Facebook"
                                                 src="<?php echo DIR_ROOT_NAME?>/view/theme/default/image/issets/facebook-square-icon.png"></a>
                            </li>
                            <li>
                                <a href="#" title="Share on Google +"><img alt="Share on Google+"
                                                                           src="<?php echo DIR_ROOT_NAME?>/view/theme/default/image/issets/g-plus-square-icon.png">
                                </a>
                            </li>
                            <li>
                                <a href="#" title="Share on Twitter"><img alt="Share on Twitter"
                                                                          src="<?php echo DIR_ROOT_NAME?>/view/theme/default/image/issets/twitter-sharesmall.png"></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!---->
</div>
</div>
</div>
</div>
</div>
<div id="dialog-confirm"></div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#buttons').akordeon();
    });
</script>
<?php echo $footer; ?>