// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// # /* Javascript */
 
$(function () {
 
  $("#rateYo").rateYo({
 
    rating    : 1.6,
    numStars  : 10,
    maxValue  : 10,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
 
      alert("Rating is set to: " + rating);
    }
  });
 
});