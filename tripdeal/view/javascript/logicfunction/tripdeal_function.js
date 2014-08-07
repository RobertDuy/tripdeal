/* =======================================================================================
 R E G I O N   J A V A S C R I P T   U T I L
 =======================================================================================
 */

function HasMap() {
    this.keys = [],
        this.values = [],
        this.getValue = function (key) {
            var index = this.keys.indexOf(key);
            if (index >= 0) {
                return this.values[index];
            }
            return '';
        },

        this.setValue = function (key, value) {
            var index = this.keys.indexOf(key);
            if (index >= 0) {
                this.values[index] = value;
            }
        },

        this.put = function (key, value) {
            if (this.keys.indexOf(key) < 0) {
                this.keys.push(key);
                this.values.push(value);
            }
        },

        this.remove = function (key) {
            var index = this.keys.indexOf(key);
            if (index >= 0) {
                this.keys.splice(index, 1);
                this.values.splice(index, 1);
            }
        },

        this.getLstKeys = function () {
            return this.keys;
        },

        this.getLstValues = function () {
            return this.values;
        }
}
//====================================================================================

/** ==================================================================================
 *     C U S T O M  P A G E  J S C R I P T
 *
 */
var mapUserCustomTourInfo = new HasMap();

var step1ChooseLocation = new HasMap();
var step2ChooseDate = new Array();
var step3ChooseStyleTravel = new Array();
var step4BookHotel = new Array();

var STEP = {
    step1: 'location',
    step2: 'date',
    step3: 'style_travel',
    step4: 'book_hotel',
    getStepKey: function (stepNumber) {
        if (stepNumber == 1) {
            return this.step1;
        } else if (stepNumber == 2) {
            return this.step2;
        } else if (stepNumber == 3) {
            return this.step3;
        } else if (stepNumber == 4) {
            return this.step4;
        }
        return '';
    }
}

var cityIndex = 0;

function addCity(cityName, image) {
    var html = '';

    var lstValue = step1ChooseLocation.getLstValues();
    if (lstValue.length > 0 && lstValue[lstValue.length - 1] == cityName) {
        return;
    }

    if ($('#lstCityDiv').html() != '') {
        html = '<li id="' + cityName + '_' + cityIndex + '">' +
            '<div class="city_connector">' +
            '<div class="ways_to_travel">Travel Options</div>' +
            '<div class="number_of_routes">1</div>' +
            '</div>' +
            '<div class="itemImg">' +
            '<a href="#" class="img"><img src="' + image + '"></a>' +
            '<div class="name">' + cityName + '</div>' +
            '<input type="hidden" value="1" name="city">' +
            '</div>' +
            '<span class="delete closeX" onclick="removeUserChoseCity(\'' + cityName + '\',' + cityIndex + ')">X</span>' +
            '<div class="clearfix"></div>' +
            '</li>';
    } else {
        html = '<li id="' + cityName + '_' + cityIndex + '">' +
            '<div class="itemImg">' +
            '<a href="#" class="img"><img src="' + image + '"></a>' +
            '<div class="name">' + cityName + '</div>' +
            '<input type="hidden" value="1" name="city">' +
            '</div>' +
            '<span class="delete closeX" onclick="removeUserChoseCity(\'' + cityName + '\',' + cityIndex + ')">X</span>' +
            '<div class="clearfix"></div>' +
            '</li>';
    }
    $('#lstCityDiv').append(html);
    step1ChooseLocation.put(cityName + '_' + cityIndex, cityName);
    cityIndex++;
}
function changeCountry(countryName, DIR_ROOT_NAME) {
    $.ajax({
        url: "/" + DIR_ROOT_NAME + "/?route=travel/custom/city",
        type: "post",
        data: {
            'countryName': countryName
        },
        dataType: "html",
        success: function (result) {
            $('#loadCityDiv').html(result);
        }
    });
}
function removeUserChoseCity(cityName, cityIndex) {
    //Confirm Dialog
    $("#dialog-confirm").html('<div style="margin: 20px;"><div><p>Are you sure to remove <span style="color: #1c94c4">' + cityName + '</span> city?</div></p>');

    // Define the Dialog and its properties.
    $("#dialog-confirm").dialog({
        resizable: false,
        modal: true,
        title: "Confirm",
        height: 200,
        width: 400,
        buttons: {
            "Yes": function () {
                var curIndex = step1ChooseLocation.getLstKeys().indexOf(cityName + '_' + cityIndex);
                step1ChooseLocation.remove(cityName + '_' + cityIndex);

                $('#' + cityName + '_' + cityIndex).remove();
                //remove connector html
                if (curIndex == 0) {
                    $('#' + $($('#lstCityDiv li')[0]).attr('id') + ' .city_connector').remove();
                }
                $(this).dialog('close');
            },
            "No": function () {
                $(this).dialog('close');
            }
        }
    });
}
function checkStep(stepNumber) {
    //checking step is allowed to go
    var stepValue = mapUserCustomTourInfo.getValue(STEP.getStepKey(stepNumber - 1));
    var len = (stepValue instanceof HasMap) ? stepValue.getLstValues().length : stepValue.length;

    if ((stepNumber != 1 && (stepValue == null || len == 0 || stepValue == undefined)) || (stepNumber == 3 && len < 3)) {
        alert('Please finish Step ' + (stepNumber - 1));
        return false;
    }
    return true;
}

function gotoStep(stepNumber) {
    if (stepNumber == 2) {
        //finish step 1
        mapUserCustomTourInfo.put(STEP.step1, step1ChooseLocation);
        //check step 1
        if (!checkStep(stepNumber)) return;

        var html = '';
        $('#step2ListCityDiv').html('');
        var lstCities = step1ChooseLocation.getLstValues();
        for (var i = 0; i < lstCities.length; i++) {
            html += '<a href="#">' + lstCities[i] + '</a>'
        }
        $('#step2ListCityDiv').append(html);
    } else if (stepNumber == 3) {
        //get value ---------------------
        var isCutStep1 = false;
        var isCutStep2 = false;
        if ($('#tripCustomName').val().length > 0) {
            step2ChooseDate[0] = $('.txtDatetime').val();
        } else {
            step2ChooseDate.splice(0, 1);
            isCutStep1 = true;
        }
        if ($('.txtQuantity').val().length > 0) {
            step2ChooseDate[1] = $('.txtQuantity').val();
        } else {
            if (isCutStep1) {
                step2ChooseDate.splice(0, 1);
            } else {
                step2ChooseDate.splice(1, 1);
                isCutStep2 = true;
            }
        }
        if ($('#tripCustomName').val().length > 0) {
            step2ChooseDate[2] = $('#tripCustomName').val();
        } else {
            if (isCutStep2) {
                step2ChooseDate.splice(0, 1);
            } else {
                step2ChooseDate.splice(2, 1);
            }
        }

        mapUserCustomTourInfo.put(STEP.step2, step2ChooseDate);
        if (!checkStep(stepNumber)) return;

    } else if (stepNumber == 4) {
        mapUserCustomTourInfo.put(STEP.step3, step3ChooseStyleTravel);

        if (!checkStep(stepNumber)) return;

    } else if (stepNumber == 5) {
        mapUserCustomTourInfo.put(STEP.step4, step4BookHotel);

        if (!checkStep(stepNumber)) return;
    }

    //TODO : add animation -----------
    $('#step' + (stepNumber - 1)).removeClass('expanded');
    $('#step' + stepNumber).addClass('expanded');
    return true;
}