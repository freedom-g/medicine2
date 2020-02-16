(function ($) {
    $.fn.fullScreen = function (settings) {//首页焦点区满屏背景广告切换
        var defaults = {
            time: 5000,
            css: 'full-screen-slides-pagination'
        };
        var settings = $.extend(defaults, settings);
        return this.each(function () {
            var $this = $(this);
            var size = $this.find("li").size();
            var now = 0;
            var enter = 0;
            var speed = settings.time;
            $this.find("li:gt(0)").hide();
            var btn = '<ul class="' + settings.css + '">';
            for (var i = 0; i < size; i++) {
                btn += '<li>' + '<a href="javascript:void(0)">' + (i + 1) + '</a>' + '</li>';
            }
            btn += "</ul>";
            $this.after(btn);
            var $pagination = $this.next();
            $pagination.find("li").first().addClass('current');
            $pagination.find("li").click(function () {
                var change = $(this).index();
                $(this).addClass('current').siblings('li').removeClass('current');
                $this.find("li").eq(change).css('z-index', '800').show();
                $this.find("li").eq(now).css('z-index', '900').fadeOut(400,
                    function () {
                        $this.find("li").eq(change).fadeIn(500);
                    });
                now = change;
            }).mouseenter(function () {
                enter = 1;
            }).mouseleave(function () {
                enter = 0;
            });
            function slide() {
                var change = now + 1;
                if (enter == 0) {
                    if (change == size) {
                        change = 0;
                    }
                    $pagination.find("li").eq(change).trigger("click");
                }
                setTimeout(slide, speed);
            }

            setTimeout(slide, speed);
        });
    }

    $('.full-screen-slides li').css('background-size', '100%!important');
    $.fn.jfocus = function (settings) {//首页焦点广告图切换
        var defaults = {
            time: 5000
        };
        var settings = $.extend(defaults, settings);
        return this.each(function () {
            var $this = $(this);
            var sWidth = $this.width();
            var len = $this.find("ul li").length;
            var index = 0;
            var picTimer;
            var btn = "<div class='pagination'>";
            for (var i = 0; i < len; i++) {
                btn += "<span></span>";
            }
            btn += "</div><div class='arrow pre'></div><div class='arrow next'></div>";
            $this.append(btn);
            $this.find(".pagination span").css("opacity", 0.4).mouseenter(function () {
                index = $this.find(".pagination span").index(this);
                showPics(index);
            }).eq(0).trigger("mouseenter");
            $this.find(".arrow").css("opacity", 0.0).hover(function () {
                    $(this).stop(true, false).animate({
                            "opacity": "0.5"
                        },
                        300);
                },
                function () {
                    $(this).stop(true, false).animate({
                            "opacity": "0"
                        },
                        300);
                });
            $this.find(".pre").click(function () {
                index -= 1;
                if (index == -1) {
                    index = len - 1;
                }
                showPics(index);
            });
            $this.find(".next").click(function () {
                index += 1;
                if (index == len) {
                    index = 0;
                }
                showPics(index);
            });
            $this.find("ul").css("width", sWidth * (len));
            $this.hover(function () {
                    clearInterval(picTimer);
                },
                function () {
                    picTimer = setInterval(function () {
                            showPics(index);
                            index++;
                            if (index == len) {
                                index = 0;
                            }
                        },
                        settings.time);
                }).trigger("mouseleave");
            function showPics(index) {
                var nowLeft = -index * sWidth;
                $this.find("ul").stop(true, false).animate({
                        "left": nowLeft
                    },
                    300);
                $this.find(".pagination span").stop(true, false).animate({
                        "opacity": "0.4"
                    },
                    300).eq(index).stop(true, false).animate({
                        "opacity": "1"
                    },
                    300);
            }
        });
    }
    $.fn.jfade = function (settings) {//首页标准模块中间多图广告鼠标触及凸显
        var defaults = {
            start_opacity: "1",
            high_opacity: "1",
            low_opacity: ".1",
            timing: "500"
        };
        var settings = $.extend(defaults, settings);
        settings.element = $(this);
        //set opacity to start
        $(settings.element).css("opacity", settings.start_opacity);
        //mouse over
        $(settings.element).hover(
            //mouse in
            function () {
                $(this).stop().animate({
                        opacity: settings.high_opacity
                    },
                    settings.timing); //100% opacity for hovered object
                $(this).siblings().stop().animate({
                        opacity: settings.low_opacity
                    },
                    settings.timing); //dimmed opacity for other objects
            },
            //mouse out
            function () {
                $(this).stop().animate({
                        opacity: settings.start_opacity
                    },
                    settings.timing); //return hovered object to start opacity
                $(this).siblings().stop().animate({
                        opacity: settings.start_opacity
                    },
                    settings.timing); // return other objects to start opacity
            });
        return this;
    }
})(jQuery);
function takeCount() {
    setTimeout("takeCount()", 1000);
    $(".time-remain").each(function () {
        var obj = $(this);
        var tms = obj.attr("count_down");
        if (tms > 0) {
            tms = parseInt(tms) - 1;
            var days = Math.floor(tms / (1 * 60 * 60 * 24));
            var hours = Math.floor(tms / (1 * 60 * 60)) % 24;
            var minutes = Math.floor(tms / (1 * 60)) % 60;
            var seconds = Math.floor(tms / 1) % 60;

            if (days < 0) days = 0;
            if (hours < 0) hours = 0;
            if (minutes < 0) minutes = 0;
            if (seconds < 0) seconds = 0;
            obj.find("[time_id='d']").html(days);
            obj.find("[time_id='h']").html(hours);
            obj.find("[time_id='m']").html(minutes);
            obj.find("[time_id='s']").html(seconds);
            obj.attr("count_down", tms);
        }
    });
}
function update_screen_focus() {
    var ap_ids = '';//广告位编号
    $(".full-screen-slides li[ap_id]").each(function () {
        var ap_id = $(this).attr("ap_id");
        ap_ids += '&ap_ids[]=' + ap_id;
    });
    $(".jfocus-trigeminy a[ap_id]").each(function () {
        var ap_id = $(this).attr("ap_id");
        ap_ids += '&ap_ids[]=' + ap_id;
    });
    if (ap_ids != '') {
        $.ajax({
            type: "GET",
            url: SHOP_SITE_URL + '/index.php?c=adv&op=get_adv_list' + ap_ids,
            dataType: "jsonp",
            async: true,
            success: function (adv_list) {
                $(".full-screen-slides li[ap_id]").each(function () {
                    var obj = $(this);
                    var ap_id = obj.attr("ap_id");
                    var color = obj.attr("color");
                    if (typeof adv_list[ap_id] !== "undefined") {
                        var adv = adv_list[ap_id];
                        obj.css("background", color + ' url(' + adv['adv_img'] + ') no-repeat center top');
                        obj.find("a").attr("title", adv['adv_title']);
                        obj.find("a").attr("href", adv['adv_url']);
                    }
                });
                $(".jfocus-trigeminy a[ap_id]").each(function () {
                    var obj = $(this);
                    var ap_id = obj.attr("ap_id");
                    if (typeof adv_list[ap_id] !== "undefined") {
                        var adv = adv_list[ap_id];
                        obj.attr("title", adv['adv_title']);
                        obj.attr("href", adv['adv_url']);
                        obj.find("img").attr("alt", adv['adv_title']);
                        obj.find("img").attr("src", adv['adv_img']);
                    }
                });
            }
        });
    }
}
$(function () {
    setTimeout("takeCount()", 1000);
    //首页Tab标签卡滑门切换
    $(".tabs-nav > li > h3").bind('mouseover', (function (e) {
        if (e.target == this) {
            var tabs = $(this).parent().parent().children("li");
            var panels = $(this).parent().parent().parent().children(".tabs-panel");
            var index = $.inArray(this, $(this).parent().parent().find("h3"));
            if (panels.eq(index)[0]) {
                tabs.removeClass("tabs-selected").eq(index).addClass("tabs-selected");
                panels.addClass("tabs-hide").eq(index).removeClass("tabs-hide");
            }
        }
    }));

    $('.jfocus-trigeminy > ul > li > a').jfade({
        start_opacity: "1",
        high_opacity: "1",
        low_opacity: ".5",
        timing: "200"
    });
    $('.fade-img > a').jfade({
        start_opacity: "1",
        high_opacity: "1",
        low_opacity: ".5",
        timing: "500"
    });
    $('.middle-goods-list > ul > li').jfade({
        start_opacity: "0.9",
        high_opacity: "1",
        low_opacity: ".6",
        timing: "500"
    });
    $('.recommend-brand > ul > li').jfade({
        start_opacity: "1",
        high_opacity: "1",
        low_opacity: ".5",
        timing: "500"
    });

    $(".full-screen-slides").fullScreen();
    $(".jfocus-trigeminy").jfocus();
    $(".right-side-focus").jfocus();
    $(".groupbuy").jfocus({time: 8000});
    $("#saleDiscount").jfocus({time: 8000});
    $("a[href='']").removeAttr("target").attr("href", "javascript:void(0)");
})


/* 改版js开始*/
/* ------------------------首页轮播滚动代码开始 ---------------------*/
window.onload = function () {


    var mySwiper = new Swiper('.swiper-container', {
        autoplay: 5000,//可选选项，自动滑动
        direction: 'horizontal',
        loop: true,

        // 如果需要分页器
        pagination: '.swiper-pagination'
    })
}
/* ------------------------首页轮播滚动代码结束 ---------------------*/


/* 首页浮动楼层定位开始*/


$(function () {

    var top_ctr = $('.am-floor-area').offset().top,

        left_ctr = $('.am-floor-area').offset().left,
        floor = $('.am-floor'),
        floor_span = $('.am-floor-jtcb li'),
    /*   floor_li = $('.am-floor-jtcb li'),*/
        obj = $('.am-floor-jtcb'),
        h = $(document).height(),
        w = $(window).height(),
        w_h = $('.am-floor-area').height();
    /* t_h        = $('.hot-main-bod').offset().top;*/
    ft = $('.am-footer-area').height() + 400;

    $(document).scroll(function () {

        var scrll = $(this).scrollTop();
        //alert(scrll);
         //alert(floor.length)
        for (var i = 0; i <= floor.length - 1; i++) {
            var box = floor.eq(i).offset().top;
            if (i == floor.length - 1) {
                if (scrll >= box - 94) {
                    floor_span.eq(i).addClass('cur').siblings().removeClass('cur');
                }
            } else {
                var box_next = floor.eq(i + 1).offset().top;
                if (scrll >= box - 94 && scrll < box_next - 94) {
                    floor_span.eq(i).addClass('cur').siblings().removeClass('cur');
                }
            }
        };
        if (top_ctr < scrll) {
            if (scrll >= h - (ft + 94 + obj.height())) {
                obj.css({'position': 'absolute', 'left': '-41px', 'top': w_h - obj.height()-9});
            } else {
                obj.css({'position': 'fixed', 'left': left_ctr - 41, 'top': '94px'});
            }
        } else {
            obj.css({'position': 'absolute', 'left': '-41px', 'top': '94px'});
        }

        //头部搜索
        /*if (scrll > t_h) {
         $('.float-box-top').fadeIn('fast');
         } else {
         $('.float-box-top').fadeOut('fast');
         }*/


    })
    floor_span.click(function () {
        $(this).addClass('cur').siblings().removeClass('cur');
        var mao = floor.eq($(this).index()).offset().top;
        $('html,body').animate({scrollTop: mao - 60}, 300);
    })


    $('.am-floor-jtcb ul li').hover(function () {
        $(this).addClass('cur').siblings().removeClass('cur');

    })


    $('.am-rightfixbar ul.am-ul-area li').hover(function () {
        $(this).addClass('am-hover');


    }, function () {

        $(this).removeClass('am-hover');

    })
    $('.am-ulsec .am-erweima').hover(function () {

        $('.am-ulsec .am-erweima .show_erweima').show().removeClass('am-hover');

    }, function () {
        $('.am-ulsec .am-erweima .show_erweima').hide();


    })


    $('.service-box').hover(function () {
        $('.service-box .box').show();
        $('.service-box .Jctr-emlment').css('display', 'block');

    }, function () {

        $('.service-box .box').hide();
        $('.service-box .Jctr-emlment').css('display', 'none');


    })


    /*$('.service-box').on('click', '.close', function(event){
     $(this).parents('.box').hide();
     });*/

    $(".am-list-header .close").click(function () {

        $('.am-float-window').hide();
    })

    /*$('.am-floor-left ul li:even').addClass('newborder');*/

    $('.am-floor .am-floor-left ul').each(function () {
        if ($(this).children('li').length >= 14) {

            $(this).children('li').last().css('border-bottom', 0);
            $(this).children('li:eq(-2)').css('border-bottom', 0);
        }

    })

    $('.am-floor .am-floor-right .am-bottom ul').each(function () {

        $(this).children('li').first().css('border-right', 0);
    })


    if (window.ActiveXObject) {

        var reg = /10\.0/;

        var str = navigator.userAgent;

        //reg.test(str);

        if (reg.test(str)) {


            $('.am-bottom ul li').css("padding-bottom", '12px');


        }
        ;

    }
    ;

    function isIE() { //ie?
        if (!!window.ActiveXObject || "ActiveXObject" in window){

            $('.am-bottom ul li').css("padding-bottom", '12px');
        }

        else{


        }

    }
    isIE()


})


/* 首页浮动楼层定位结束*/