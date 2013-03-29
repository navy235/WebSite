(function($) {
  $.extend($.fn, {
    slider:
    function(setting) {
      if (!setting) {
        setting = {};
      }
      var ps = $.extend({
        containerClass: "slider-box",
        listClass: "slider-list",
        pageClass: "slider-page-list",
        showMessageBox: false,
        intervel: 4000
      }, setting);

      var that = this;
      var $page = $('.' + ps.pageClass);
      var $list = $('.' + ps.listClass);
      $page.find("a").hover(function() {
        var index = $page.find("a").index($(this));
        showSlider(index);
      });

      function showSlider(index) {
        $list.find("li").eq(index).animate({
          "z-index": 10,
          "opacity": 1,
          "filter": "Alpha(Opacity=100)",
        }, 400).siblings().animate({
          "z-index": 9,
          "opacity": 0,
          "filter": "Alpha(Opacity=0)",
        }, 400);
        $page.find("a").eq(index).addClass("active").siblings().removeClass("active");
      }

      var sliderInterval;
      function switchSlider() {
        var index = $page.find("a").index($page.find("a.active"));
        index++;
        if (index >= $page.find("a").size()) {
          index = 0;
        }
        showSlider(index);
      }
      $("." + ps.containerClass).hover(function() {
        clearInterval(sliderInterval);
      }, function() {
        clearInterval(sliderInterval);
        sliderInterval = setInterval(switchSlider, ps.intervel);
      })
      sliderInterval = setInterval(switchSlider, ps.intervel);
    }
  })
})(jQuery)