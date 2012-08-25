function initialize() {
  var origin = new google.maps.places.Autocomplete(document.getElementById('shelter_address'));
}

google.maps.event.addDomListener(window, 'load', initialize);

