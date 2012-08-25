$(document).ready(function() {
  var shelters = $('#shelters').data('shelters');
  var makati = new google.maps.LatLng(14.554729, 121.0244452);
  var myOptions = {
    center: makati,
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

  var markers = [];

  for (var i = 0; i < shelters.length; i++) {
    var lat = shelters[i].latitude;
    var long = shelters[i].longitude;

    var position = new google.maps.LatLng(lat, long);
    makeMarker(position, shelters[i]);
  }

  function makeMarker(position, shelter) {
    var marker = new google.maps.Marker({
      map: map,
      position: new google.maps.LatLng(lat, long)
    });
    markers.push(marker);

    var capacity = (shelter.victims_count / shelter.capacity) * 100

    var content = '<div style="text-align: center; font-size:14px;">' +
    '<b>' + shelter.name + ' is ' + capacity + '% full</b>' +
    '<br/>' +
    '' + shelter.address + '' +
    '<br/>' +
    '</div>';

    google.maps.event.addListener(marker, 'click', function(e) {
      var infobox = new SmartInfoWindow({position: marker.getPosition(), map: map, content: content});
    });

  }

});
