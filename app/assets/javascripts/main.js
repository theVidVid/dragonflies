// var input = document.getElementById('freelancer_location');
// var autocomplete = new google.maps.places.Autocomplete(input);


function initialize() {
    var input = document.getElementById('freelancer_location');
    new google.maps.places.Autocomplete(input);
    var searchinput = document.getElementById('search_location');
    new google.maps.places.Autocomplete(searchinput);
}
  
  google.maps.event.addDomListener(window, 'load', initialize);