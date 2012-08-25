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
    makeMarker(position);
  }

  function makeMarker(position) {
    var marker = new google.maps.Marker({
      map: map,
      position: new google.maps.LatLng(lat, long)
    });
    markers.push(marker);

    /*
  var content = '
  <div style="text-align: center; font-size:14px;">
  <center>
  <b>Diamantino, Brazil</b>
  </center>
  <img width="240" height="180" src="http://mw2.google.com/mw-panoramio/photos/small/7253919.jpg"/>
  <div style="margin: auto; text-align: right; width: 240px;" class="linkbutton">
  <a href="http://www.panoramio.com/user/279908">Edson Walter Cavalari</a>
  </div>
  <div class="linkbutton">
  <a href="http://www.panoramio.com/photo/7253919" target="_blank">See more photos at Panoramio.com</a>
  </div>
  <br/>
  <div class="linkbutton">
  <a href="http://www.google.com/search?q=site:wikipedia.org+Diamantino,Brazil&amp;btnI=I\'m+Feeling+Lucky" target="_blank">Read more about this location</a>
  </div>
  <div class="linkbutton">
  <a href="javascript:void(0)" id="zoomLink">Zoom in to this location</a>
  </div>
  </div>';
 */
  var content = "wtf";

  google.maps.event.addListener(marker, 'click', function(e) {
    var infobox = new SmartInfoWindow({position: marker.getPosition(), map: map, content: content});
  });

  }

});
