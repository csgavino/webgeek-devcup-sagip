function initialize() {
  var address = document.getElementById("address").innerHTML;
  var arr = address.split(",", 2);
  var lat_lng = new google.maps.LatLng(arr[0], arr[1]);

  var myOptions = {
    center: new google.maps.LatLng(arr[0], arr[1]),
    zoom: 11,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
  };

  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

  var marker = new google.maps.Marker({
    map: map,
    position: lat_lng
  });

}

$(document).ready(function() {
  initialize();
})
