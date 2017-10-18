 function initMap() {

	   var map = new google.maps.Map(document.getElementById('map'), {
		     center: new google.maps.LatLng(3.171368,101.653404),
	     zoom: 0,
	   });
	   
	   var infowindow = new google.maps.InfoWindow({});
	   var marker, i;

	   for (i = 0; i < locations.length; i++) { 
	       marker = new google.maps.Marker({
	            position: new google.maps.LatLng(locations[i], locations1[i]),
	            map: map,
	   	     	title: "<p class='maptitle'>"+locations2[i]+"</p>"
	       });
	       google.maps.event.addListener(marker, 'click', (function (marker, i) {
				return function () {
					infowindow.setContent(locations2[i]);
					infowindow.open(map, marker);
				}
			})(marker, i));
	 }
}
