// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// # /* Javascript */
 
$(function () {
 
  $("#rate_quality").rateYo({
 
    rating    : 5.0,
    halfStar  : true,
    numStars  : 5,
    maxValue  : 5,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onInit: function (rating, rateYoInstance) {
    console.log($("#evaluation_quality_ev").val());
 
      $(this).rateYo("rating", $("#evaluation_quality_ev").val());
        // $("#ev1").val(rating);
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
      $("#evaluation_quality_ev").val(rating);
      // alert("Rating is set to: " + rating);
    }
  });

  $("#rate_time").rateYo({
 
    rating    : 5.0,
    halfStar  : true,
    numStars  : 5,
    maxValue  : 5,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onInit: function (rating, rateYoInstance) {
 
      $(this).rateYo("rating", $("#evaluation_time_ev").val());
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
      $("#evaluation_time_ev").val(rating);
      // alert("Rating is set to: " + rating);
    }
  });

  $("#rate_organization").rateYo({
 
    rating    : 5.0,
    halfStar  : true,
    numStars  : 5,
    maxValue  : 5,
    spacing   : "5px",
    multiColor: {
 
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    },

    onInit: function (rating, rateYoInstance) {
 
      $(this).rateYo("rating", $("#evaluation_organization_ev").val());
            
    },

    onChange: function (rating, rateYoInstance) {
 
      $(this).next().text(rating);
    },

    onSet: function (rating, rateYoInstance) {
      $("#evaluation_organization_ev").val(rating);
      // alert("Rating is set to: " + rating);
    }
  });
 
});