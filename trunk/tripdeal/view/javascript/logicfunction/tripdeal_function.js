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
        this.keys.push(key);
        this.values.push(value);
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

var lstUserChoseCity = new HasMap();
var cityIndex = 0;

function addCity(cityName, image) {
    var html = '';

    var lstValue = lstUserChoseCity.getLstValues();
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
    lstUserChoseCity.put(cityName + '_' + cityIndex, cityName);
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
                var curIndex = lstUserChoseCity.getLstKeys().indexOf(cityName + '_' + cityIndex);
                lstUserChoseCity.remove(cityName + '_' + cityIndex);

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