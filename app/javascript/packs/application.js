// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("@ellie-xyb/multi-select-calendar");


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { filterPets } from "../components/filters";
import { initMapbox } from '../plugins/init_mapbox';
import { setCarousel } from '../components/carousel';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  filterPets();
  initMapbox();
  setCarousel();

  $('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    responsive: {
      0: {
        items: 1
      },
      600: {
        items: 3
      },
      1000: {
        items: 4
      }
    },
    nav: true,
    navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"]
  })
});
