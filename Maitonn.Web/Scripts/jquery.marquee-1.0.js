(function($) {
  $.extend($.fn, {
    marquee:
    function(setting) {
      if (!setting) {
        setting = {};
      }

      var ps = $.extend({
        childSelector: '.marquee-item',
        intervel: 4000
      }, setting);

      var oMarquee = this[0];
      var iLineHeight = $(ps.childSelector).height();
      var iLineCount = 10;
      var iScrollAmount = 1;

      function marquee() {
        oMarquee.scrollTop += iScrollAmount;
        if (oMarquee.scrollTop == iLineCount * iLineHeight)
          oMarquee.scrollTop = 0;
        if (oMarquee.scrollTop % iLineHeight == 0) {
          setTimeout(marquee, ps.intervel);
        } else {
          setTimeout(marquee, 10);
        }
      }
      setTimeout(marquee, ps.intervel);
    }
  })
})(jQuery)