# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  $(".points-user-all").on "click", ->
    $(".welcome > *").hide();
    $(".list-win").removeClass("hidden").fadeIn();

  $(".points-user").on "click", ->
    $(".welcome > *").hide();
    $(".list-buy").removeClass("hidden").fadeIn();

  $(".button-events-list").on "click", ->
    $(".welcome > *").hide();
    $(".list-events").removeClass("hidden").fadeIn();

$(document).ready(ready)
$(document).on('page:load', ready)
