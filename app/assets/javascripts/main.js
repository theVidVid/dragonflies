$(document).ready(function(){
  var date_input_start=$('input[name="freelancer[start_date]"]'); //our date input has the name "date"
  var date_input_end=$('input[name="freelancer[end_date]"]'); //our date input has the name "date"
  var container=$('.bootstrap-iso form') //.length>0 ? $('.bootstrap-iso form').parent()
  var options={
    format: 'mm/dd/yyyy',
    container: container,
    todayHighlight: true,
    autoclose: true,
  };
  date_input_start.datepicker(options);
  date_input_end.datepicker(options);

  


})

// var input = document.getElementById('freelancer_location');
// var autocomplete = new google.maps.places.Autocomplete(input);


function initialize() {
    var input = document.getElementById('freelancer_location');
    new google.maps.places.Autocomplete(input);
    var searchinput = document.getElementById('search_location');
    new google.maps.places.Autocomplete(searchinput);
}
  
  google.maps.event.addDomListener(window, 'load', initialize);