(function ($) {
    $.extend($.fn, {
        Slider:
        function (setting) {
            var ps = $.extend({
                containerId: "slider",
                indexBtnCss: "slider_btn",
                indexBtnHoverCss: "slider_btn_hover",
                messageBoxsClass: "msg_slider",
                showMessageBox: false,
                intervel: 4000
            }, setting);

            var that = this;
            $(this).css({
                "position": "relative",
                "overflow": "hidden",
                "z-index": "100"
            })
            $(this).find("img").css({
                "width": $(that).width(),
                "height": $(that).height(),
                "display": "block",
                "z-index": "100"
            })
            $(this).find("ul")
                .css({
                    "width": $(that).width(),
                    "height": $(that).height(),
                    "overflow": "hidden",
                    "z-index": "100"
                }).end()
                .find("li")
                .each(function (inx, item) {
                    $(this).css({
                        "width": $(that).width(),
                        "height": $(that).height(),
                        "overflow": "hidden",
                        "position": "absolute",
                        "z-index": "100",
                        "top": -inx * $(that).height()
                    });
                })

            var sliderImgs = $(this).find("img");

            var size = sliderImgs.size();
            var indexBtns = $("<ul/>")
                .addClass(ps.indexBtnCss)
                .css({
                    "width": 35 * size,
                    "height": 30,
                    "overflow": "hidden",
                    "position": "absolute",
                    "z-index": "102",
                    "right": 10,
                    "bottom": "10px"
                })
            for (var i = 0; i < size; i++) {
                indexBtns.append($("<li>" + (parseInt(i) + 1) + "</li>").css({
                    "width": 30,
                    "height": 30,
                    "background": "#716564",
                    " border-radius": "15px",
                    "-moz-border-radius": "15px",
                    "-webkit-border-radius": "15px",
                    "-khtml-border-radius": "15px",
                    "opacity": "0.7",
                    "filter": "Alpha(Opacity=70)",
                    "color": "white",
                    "fontSize": "16px",
                    "textAlign": "center",
                    "cursor": "pointer",
                    "lineHeight": "30px",
                    "display": "block",
                    "marginRight": "5px",
                    "zoom": "1",
                    "float": "left"
                }));
            }
            $(this).append(indexBtns);

            var messageBoxs = $("<div ></div>").addClass(ps.messageBoxsClass).css({
                "position": "absolute",
                "width": $(that).width(),
                "height": 50,
                "overflow": "hidden",

                "top": $(that).height() - 50,
                "z-index": "101",
                "bottom": "0px"

            });
            for (var i = 0; i < size; i++) {
                messageBoxs.append($("<div>" + sliderImgs.eq(i).attr("alt") + "</div>").css({
                    "height": 50,
                    "lineHeight": 50 + "px",
                    "background": "black",
                    "paddingLeft": "20px",
                    "opacity": "0.7",
                    "filter": "Alpha(Opacity=30)",
                    "z-index": "101",
                    "color": "white",
                    "display": "none"
                }));
            }
            if (ps.showMessageBox) {
                messageBoxs.find("div").eq(0).show();
            }
            $(this).append(messageBoxs);


            //event




            indexBtns.find("li").bind("click", function () {
                $(this).addClass("on").css({
                    "background": "#B91919"
                }).siblings().css({
                    "background": "#716564",
                    "color": "white"
                }).removeClass("on");
                var index = indexBtns.find("li").index($(this));
                var showItems = $(that).find("ul").eq(0).find("li");
                showItems.each(function (inx, item) {
                    $(this).animate({
                        "top": (index - inx) * $(that).height() + "px"
                    }, 300)
                });
                if (ps.showMessageBox) {
                    $("." + ps.messageBoxsClass).find("div").eq(index).show().siblings().hide();
                }

            });
            indexBtns.find("li").eq(0).addClass("on").css({
                "background": "#B91919"
            })


            var sliderInterval;
            function switchCurrentBtn() {
                var index = indexBtns.find("li").index(indexBtns.find("li.on"));
                index++;
                if (index >= indexBtns.find("li").size()) {
                    index = 0;
                }
                indexBtns.find("li").eq(index).click();
            }
            $("#" + ps.containerId).hover(function () {
                clearInterval(sliderInterval);
            }, function () {
                clearInterval(sliderInterval);
                sliderInterval = setInterval(switchCurrentBtn, ps.intervel);
            })
            sliderInterval = setInterval(switchCurrentBtn, ps.intervel);
        }
    })
})(jQuery)