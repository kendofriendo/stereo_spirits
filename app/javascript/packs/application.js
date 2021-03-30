// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery3
//= require popper
//= require bootstrap-sprockets
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
document.write(
    '<script src="http://' +
      (location.host || '${1:localhost}').split(':')[0] +
      ':${2:3000}/livereload.js?snipver=1"></' +
      'script>'
  );

Rails.start()
Turbolinks.start()
ActiveStorage.start()
