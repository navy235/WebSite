(function($) {
  $.extend($.fn, {
    tab:
    function(setting) {
      if (!setting) {
        setting = {};
      }
      var ps = $.extend({
        containerClass: "slider-tab-container",
        listClass: "slider-tab-top",
        attribute: "rel",
      }, setting);
      var that = this;
      var $list = $('.' + ps.listClass);
      $list.find("li").mouseover(function() {
        var targetId = $(this).attr(ps.attribute);
        $(targetId).show().siblings("." + ps.containerClass).hide();
        $(this).addClass("active").siblings().removeClass("active");
      });
    }
  })
})(jQuery)