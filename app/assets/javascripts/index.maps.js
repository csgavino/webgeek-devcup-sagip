$(document).ready(function() {
  var shelters = $('#shelters').data('shelters');
  var makati = new google.maps.LatLng(14.554729, 121.0244452);
  var myOptions = {
    center: makati,
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

  for (var i = 0; i < shelters.length; i++) {
    var lat = shelters[i].latitude;
    var long = shelters[i].longitude;

    var marker = new google.maps.Marker({
      map: map,
      position: new google.maps.LatLng(lat, long)
    });

  }

});
