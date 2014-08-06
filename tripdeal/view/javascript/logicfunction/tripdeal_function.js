function addCity(cityName, image) {
    var html='';
    if($('#lstCityDiv').html() != ''){
        html = '<li>' +
            '<div class="city_connector">'+
            '<div class="ways_to_travel">Travel Options</div>'+
            '<div class="number_of_routes">1</div>'+
            '</div>'+
            '<div class="itemImg">' +
            '<a href="#" class="img"><img src="' + image + '"></a>' +
            '<div class="name">' + cityName + '</div>' +
            '<input type="hidden" value="1" name="city">' +
            '</div>' +
            '<span class="delete closeX">X</span>' +
            '<div class="clearfix"></div>' +
            '</li>';
    }else{
        html = '<li>' +
            '<div class="itemImg">' +
            '<a href="#" class="img"><img src="' + image + '"></a>' +
            '<div class="name">' + cityName + '</div>' +
            '<input type="hidden" value="1" name="city">' +
            '</div>' +
            '<span class="delete closeX">X</span>' +
            '<div class="clearfix"></div>' +
            '</li>';
    }
    $('#lstCityDiv').append(html);
}