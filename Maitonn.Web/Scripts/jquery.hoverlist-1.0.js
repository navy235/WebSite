(function($) {
  $.extend($.fn, {
    hoverlist:
    function(setting) {
      if (!setting) {
        setting = {};
      }
      var ps = $.extend({
        containerClass: "main-gallery-top",
        openClass: "main-gallery-top-open",
        closeClass: "main-gallery-top-close"
      }, setting);
      var that = this;
      var $container = $('.' + ps.containerClass);
      $container.find("li").mouseover(function() {
        $(this).find("dl")
          .addClass(ps.openClass)
          .removeClass(ps.closeClass)
          .end()
          .siblings()
          .find("dl")
          .addClass(ps.closeClass)
          .removeClass(ps.openClass);
      });
    }
  })
})(jQuery)