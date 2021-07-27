import mapboxgl from 'mapbox-gl';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

// const addMarkersToMap = (map, markers) => {
//   new mapboxgl.Marker()
//     .setLngLat([markers.lng, markers.lat])
//     .addTo(map);
// };

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([markers.lng, markers.lat]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 13, duration: 500 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    // addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    initMarker(markers, map);
  }
};

const initMarker = (markers, map) => {
  // const popup = new mapboxgl.Popup().setHTML(markers.info_window);
  const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${markers.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '30px';
  element.style.height = '30px';
  element.style.backgroundColor = '#CCEABB';
  element.style.border = "1px solid #3F3F44"
  element.style.borderRadius = '50%';
  new mapboxgl.Marker(element)
    .setLngLat([markers.lng, markers.lat])
    // .setPopup(popup)
    .addTo(map);
}

export { initMapbox };