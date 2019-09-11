// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// # /* Javascript */
 
$(function () {
 
  $("#rate_quality").rateYo({
 
    rating    : 5.0,
    numStars  : 5,
    maxValue  : 5,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onInit: function (rating, rateYoInstance) {
 
      console.log("RateYo initialized! with " + rating);
      // $("#ev1").val(rating);
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
      // $("#ev1").val(rating);
      alert("Rating is set to: " + rating);
    }
  });

  $("#rate_time").rateYo({
 
    rating    : 5.0,
    numStars  : 5,
    maxValue  : 5,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onInit: function (rating, rateYoInstance) {
 
      console.log("RateYo initialized! with " + rating);
      // $("#ev1").val(rating);
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
      // $("#ev1").val(rating);
      alert("Rating is set to: " + rating);
    }
  });

  $("#rate_organization").rateYo({
 
    rating    : 5.0,
    numStars  : 5,
    maxValue  : 5,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onInit: function (rating, rateYoInstance) {
 
      console.log("RateYo initialized! with " + rating);
      // $("#ev1").val(rating);
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
      // $("#ev1").val(rating);
      alert("Rating is set to: " + rating);
    }
  });
 
});