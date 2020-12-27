import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};
  const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
    // Create a HTML element for your custom marker
    // Pass the element as an argument to the new marker
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(map);
  })
}
const initMapbox = () => {
  const mapElement = document.querySelector('#map')
  if (mapElement == null)
    return
  const markers = JSON.parse(mapElement.dataset.markers)
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/thortoto/ckj6eekdceepx19qtsfwnhrpo', // <-- use your own!
    center: [-74.5, 40], // starting position [lng, lat]
    zoom: 9 // starting zoom
  });
  map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                    mapboxgl: mapboxgl }));
  fitMapToMarkers(map, markers);
  addMarkersToMap(map, markers)
}
export default initMapbox
