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
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { filterPets } from "../components/filters";
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  filterPets();
  initMapbox();

  function showImage(input) {
    if (input.files) {
      const preBox = document.getElementById('preview_box');

      for (let file of input.files) {
        var reader = new FileReader();

        reader.onload = function (e) {
          const img = document.createElement("img");
          img.src = e.target.result;
          img.classList.add('preview-img');
          preBox.appendChild(img);
        };

        reader.readAsDataURL(file);
      }
    }
  }

  $('#pet_pet_pics').on('change', function() {
    const preBox = document.getElementById('preview_box');
    preBox.innerHTML = "";
    showImage(this);
  })
});
