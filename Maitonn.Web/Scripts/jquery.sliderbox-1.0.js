(function($) {
  $.extend($.fn, {
    sliderbox:
    function(setting) {
      if (!setting) {
        setting = {};
      }
      var ps = $.extend({
        lefthander: 'slider-tab-left-handler',
        righthander: 'slider-tab-right-handler',
        tabitem: 'slider-tab-item',
        tabview: 'slider-tab-viewbox'
      }, setting);
      var goViewLock = false;
      function goView(e, number) {
        if (goViewLock)
          return;
        goViewLock = true;
        var $tabview = $(e.target).parent().find('.' + ps.tabview);
        var $tabitems = $tabview.find('.' + ps.tabitem);
        var length = $tabitems.size();
        var moveNumber = Math.min(Math.abs(number), length);
        var left = 0;
        var cloneArray = [];
        if (number > 0) {
          for (var i = 0; i < moveNumber; i++) {
            left += $tabitems.eq(i).outerWidth(true);
            $tabview.append($tabitems.eq(i).clone());
            cloneArray.push($tabitems.eq(i));
          }
          $tabview.animate({
            left: "-" + left + "px"
          }, function() {
            $.each(cloneArray, function(index, item) {
              item.remove();
            })
            $tabview.css({ left: 0 });
            goViewLock = false;
          })
        } else {
          for (var i = 0; i < moveNumber; i++) {
            left += $tabitems.eq(length - i - 1).outerWidth(true);
            $tabview.prepend($tabitems.eq(length - i - 1).clone()).css("left", "-" + left + "px");
            cloneArray.push($tabitems.eq(length - i - 1));
          }
          $tabview.animate({
            left: "0px"
          }, function() {
            $.each(cloneArray, function(index, item) {
              item.remove();
            })
            goViewLock = false;
          })
        }
      }

      $('.' + ps.lefthander).click(function(e) {
        e.preventDefault();
        goView(e, -4);
      })

      $('.' + ps.righthander).click(function(e) {
        e.preventDefault();
        goView(e, 4);
      })

    }
  })
})(jQuery)