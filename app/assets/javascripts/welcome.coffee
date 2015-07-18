# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $(".points-user-all").on "click", ->
    $(".welcome > *").addClass("hidden");
    $(".list-win").removeClass("hidden");

  $(".points-user").on "click", ->
    $(".welcome > *").addClass("hidden");
    $(".list-buy").removeClass("hidden");

  $(".button-events-list").on "click", ->
    $(".welcome > *").addClass("hidden");
    $(".list-events").removeClass("hidden");
