// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(function() {
    var topBtn = $('#top-btn a');
    topBtn.hide();
    $(window).scroll(function(){
         if ($(this).scrollTop() > 100) {
             topBtn.fadeIn(1000);
         } else {
             topBtn.fadeOut();
         }
    });
    topBtn.click(function () {
        $('body, html').animate({
      scrollTop:0
    }, 1000);
    event.preventDefault();
  });
});
