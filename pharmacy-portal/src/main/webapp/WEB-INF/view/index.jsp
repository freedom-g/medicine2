<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta property="wb:webmaster" content="5a5b2e4624798d0f"/>
    <title>百姓平安药房网_正规药品购买首选网上药店_中国医药互联网行业领先的药品网上商城</title>
    <meta name="keywords" content="百姓平安药房，百姓平安药房网，正规网上药店，药品网，医药网，网上购药，药品商城，健康商城，网上买药，正规网上购药网站，买药的正规网站"/>
    <meta name="description"
          content="网上买药哪个网站好？网上买药的正规网站【百姓平安药房网】经国家药监局批准的网上药店排名前列的药品网,互联网药品交易服务编号：京C20150004，致力于向您提供安全放心的药品及服务，做中国最好的药品网官网。"/>
    <meta name="baidu-site-verification" content="wF8dpAI40x"/>
    <meta name="copyright" content="yuekangsong Inc. All Rights Reserved">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style type="text/css">
        body {
            _behavior: url(https://www.yuekangsong.com/shop/templates/default/css/csshover.htc);
        }
    </style>
    <link href="../../shop/templates/default/css/base.css" rel="stylesheet" type="text/css">
    <link href="../../shop/templates/default/css/home_header.css" rel="stylesheet" type="text/css">
    <link href="../../shop/templates/default/css/home_login.css" rel="stylesheet" type="text/css">
    <link href="../../shop/resource/font/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <!--[if IE 7]>
    <link rel="stylesheet"
          href="https://www.yuekangsong.com/shop/resource/font/font-awesome/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://www.yuekangsong.com/data/resource/js/html5shiv.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/respond.min.js"></script>
    <![endif]-->
    <!--[if IE 6]>
    <script src="https://www.yuekangsong.com/data/resource/js/IE6_PNG.js"></script>
    <script>
        DD_belatedPNG.fix('.pngFix');
    </script>
    <script>
        // <![CDATA[
if((window.navigator.appName.toUpperCase().indexOf("MICROSOFT")>=0)&&(document.execCommand))
try{
document.execCommand("BackgroundImageCache", false, true);
   }
catch(e){}
// ]]>
</script>
<![endif]-->
    <script>
        var COOKIE_PRE = 'yuekangsong_';
        var _CHARSET = 'utf-8';
        var SITEURL = 'https://www.yuekangsong.com';
        var SHOP_SITE_URL = 'https://www.yuekangsong.com';
        var RESOURCE_SITE_URL = 'https://www.yuekangsong.com/data/resource';
        var RESOURCE_SITE_URL = 'https://www.yuekangsong.com/data/resource';
        var SHOP_TEMPLATES_URL = 'https://www.yuekangsong.com/shop/templates/default';
    </script>
    <script src="../../data/resource/js/jquery.js"></script>
    <script src="../../data/resource/js/common.js" charset="utf-8"></script>
    <script src="../../data/resource/js/jquery-ui/jquery.ui.js"></script>
    <script src="../../data/resource/js/jquery.validation.min.js"></script>
    <script src="../../data/resource/js/jquery.masonry.js"></script>
    <script src="../../data/resource/js/dialog/dialog.js" id="dialog_js" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                type: "GET",
                url: "http://localhost:8081/cat/list",
                success: function () {

                }
            });
        });
    </script>
    <script type="text/javascript">
        var PRICE_FORMAT = '&yen;%s';
        $(function () {
            //首页左侧分类菜单
            $(".category ul.menu").find("li").each(
                function () {
                    $(this).hover(
                        function () {
                            var cat_id = $(this).attr("cat_id");
                            var menu = $(this).find("div[cat_menu_id='" + cat_id + "']");
                            menu.show();
                            $(this).addClass("hover");
                            menu.masonry({itemSelector: 'dl'});
                            var menu_height = menu.height();
                            if (menu_height < 60) menu.height(80);
                            menu_height = menu.height();
                            var li_top = $(this).position().top;
                            if ((li_top > 60) && (menu_height >= li_top)) $(menu).css("top", -li_top + 50);
                            if ((li_top > 150) && (menu_height >= li_top)) $(menu).css("top", -li_top + 90);
                            if ((li_top > 240) && (li_top > menu_height)) $(menu).css("top", menu_height - li_top + 90);
                            if ((li_top > 240) && (li_top - menu_height) < 60) $(menu).css("top", -150);
                            if (li_top > 300 && (li_top > menu_height)) $(menu).css("top", 60 - menu_height);
                            if ((li_top > 40) && (menu_height <= 120)) $(menu).css("top", -5);
                        },
                        function () {
                            $(this).removeClass("hover");
                            var cat_id = $(this).attr("cat_id");
                            $(this).find("div[cat_menu_id='" + cat_id + "']").hide();
                        }
                    );
                }
            );
            $(".head-user-menu dl").hover(function () {
                    $(this).addClass("hover");
                },
                function () {
                    $(this).removeClass("hover");
                });
            $('.head-user-menu .my-mall').mouseover(function () {// 最近浏览的商品
                load_history_information();
                $(this).unbind('mouseover');
            });
            $('.head-user-menu .my-cart').mouseover(function () {// 运行加载购物车
                load_cart_information();
                $(this).unbind('mouseover');
            });
            $('#button').click(function () {
                if ($('#keyword').val() == '') {
                    return false;
                }
            });

            $('.am-topadd img').css({'width': '100%', 'height': 'auto'});

            $('.am-topadd img').css({'width': '100%', 'height': 'auto'});
        });
    </script>
</head>
<body>
<!-- PublicTopLayout Begin -->

<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<style>
    .right-addcart-goods-num {
        font: bold 11px/14px Verdana;
        color: #FFF;
        background: #F00;
        text-align: center;
        display: inline-block;
        height: 16px;
        min-width: 16px;
        border: none 0;
        border-radius: 8px;
    }
</style>
<!--  改版的右侧侧边栏开始-->
<div id="ncToolbar" class="yks-appbar am-rightbar" style="display: block;">
    <div class="am-rightfixbar">
        <div class="pop-bg-m">
            <ul>
                <li class="am-rightlist1"><a href="https://www.yuekangsong.com/index.php?c=login&op=index"> <img
                        src="../../shop/templates/default/images/am-login.png">

                    <div class="show"></div>
                </a></li>
                <li class="am-rightlist2" id="rtoolbar_cart">

                    <div class="am-buy-area">
                        <img src="../../shop/templates/default/images/buy_cart.png">

                        <p>购物车</p>
                        <div id="rtoobar_cart_count" class="right-addcart-goods-num">0</div>
                    </div>


                </li>
                <li class="am-rightlist3"><a
                        href="https://www.yuekangsong.com/index.php?c=member_favorites&op=fglist"><img
                        src="../../shop/templates/default/images/start.png">

                    <div class="show">我的收藏</div>
                </a></li>
                <li class="am-rightlist4"><a
                        href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&op=list"><img
                        src="../../shop/templates/default/images/clock.png">

                    <div class="show">历史记录</div>
                </a></li>
            </ul>

            <!-- 购物车开始-->

            <div class="content-box" id="content-cart">
                <div class="top">
                    <h3>我的购物车</h3>
                    <a href="javascript:void(0);" class="close" title="隐藏" id="close"></a></div>
                <div id="rtoolbar_cartlist"></div>
            </div>

            <!-- 购物车结束 -->
            <ul class="am-ulsec">
                <li class="am-erweima"><img src="../../shop/templates/default/images/shop/erweima.png">
                    <div class="show_erweima"><em></em><img
                            src="../../shop/templates/default/images/shop/erweim.jpg"></div>
                </li>
                <li><img src="../../shop/templates/default/images/shop/am-top.png" id="goTopnew"></li>
            </ul>
        </div>

    </div>
</div>

<!--  改版的右侧侧边栏结束-->

<script type="text/javascript">
    //返回顶部
    backTop = function (btnId) {
        var btn = document.getElementById(btnId);
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        window.onscroll = set;
        btn.onclick = function () {
            btn.style.opacity = "0.5";
            window.onscroll = null;
            this.timer = setInterval(function () {
                scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
                scrollTop -= Math.ceil(scrollTop * 0.1);
                if (scrollTop == 0) clearInterval(btn.timer, window.onscroll = set);
                if (document.documentElement.scrollTop > 0) document.documentElement.scrollTop = scrollTop;
                if (document.body.scrollTop > 0) document.body.scrollTop = scrollTop;
            }, 10);
        };

        function set() {
            scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
            btn.style.opacity = scrollTop ? '1' : "0.5";
        }
    };
    backTop('goTopnew');
</script>
<div class="public-top-layout w">
    <div class="topbar wrapper">
        <div class="am-topbar">
            <div class="am-topbar-left">
                <c:if test="${sessionScope.username ==null}">
                    <span><b><a href="/page/regist">注册</a></b></span><span><a href="/page/login">请登录</a></span>
                </c:if>
                <span><b><a href="/page/regist">注册</a></b></span><span><a>${sessionScope.username}</a></span>
            </div>
            <div class="am-topbar-right">
                <ul>
                    <li>
                        <div class="am-order"><a href="https://www.yuekangsong.com/index.php?c=member_order">我的订单</a>
                        </div>
                    </li>
                    <li>
                        <div class="am-buy">手机购物</div>
                    </li>
                    <li>
                        <div class="am-tel">4008-120-102</div>
                    </li>
                    <li>
                        <div class="am-collect"><a
                                href="https://www.yuekangsong.com/index.php?c=member_favorites&op=fglist">我的收藏</a></div>
                    </li>
                    <li>
                        <div class="am-cus"><a href="https://www.yuekangsong.com/article_cate-6.html">客户服务</a></div>
                    </li>
                    <li class="am-last">
                        <div class="am-wx">公众号</div>
                        <div class="am-show-gzh" style="display: none;"><img
                                src="../../shop/templates/default/images/shop/erweim.jpg"></div>
                    </li>
                </ul>

            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    //动画显示边条内容区域
    $(function () {
        $(function () {
            $('#civator').click(function () {
                $('#content-cart').animate({'right': '-250px'});
                $('#content-compare').animate({'right': '-150px'});
                $('#ncToolbar').animate({'right': '-60px'}, 300,
                    function () {
                        $('#ncHideBar').animate({'right': '59px'}, 300);
                    });
                $('div[nctype^="bar"]').hide();
            });
            $('#ncHideBar').click(function () {
                $('#ncHideBar').animate({
                        'right': '-79px'
                    },
                    300,
                    function () {
                        $('#content-cart').animate({'right': '-250px'});
                        $('#content-compare').animate({'right': '-250px'});
                        $('#ncToolbar').animate({'right': '0'}, 300);
                    });
            });
        });
        $("#compare").click(function () {
            if ($("#content-compare").css('right') == '-210px') {
                loadCompare(false);
                $('#content-cart').animate({'right': '-210px'});
                $("#content-compare").animate({right: '50px'});
            } else {
                $(".close").click();
                $(".chat-list").css("display", 'none');
            }
        });
        $("#rtoolbar_cart").click(function () {
            if ($("#content-cart").css('right') == '-210px') {
                $('#content-compare').animate({'right': '-210px'});
                $("#content-cart").animate({right: '34px'});
                if (!$("#rtoolbar_cartlist").html()) {
                    $("#rtoolbar_cartlist").load('index.php?c=cart&op=ajax_load&type=html');
                }
            } else {
                $(".close").click();
                $(".chat-list").css("display", 'none');
            }
        });
        $(".close").click(function () {
            $(".content-box").animate({right: '-210px'});
        });

        $(".quick-menu dl").hover(function () {
                $(this).addClass("hover");
            },
            function () {
                $(this).removeClass("hover");
            });

        // 右侧bar用户信息
        $('div[nctype="a-barUserInfo"]').click(function () {
            $('div[nctype="barUserInfo"]').toggle();
        });
        // 右侧bar登录
        $('div[nctype="a-barLoginBox"]').click(function () {
            $('div[nctype="barLoginBox"]').toggle();
            document.getElementById('codeimage').src = 'https://www.yuekangsong.com/index.php?c=seccode&op=makecode&nchash=421f03c0&t=' + Math.random();
        });
        $('a[nctype="close-barLoginBox"]').click(function () {
            $('div[nctype="barLoginBox"]').toggle();
        });


        //公众号
        $('.am-topbar-right .am-last').hover(function () {
            $('.am-topbar-right .am-show-gzh').show();
        }, function () {

            $('.am-topbar-right .am-show-gzh').hide();

        })
        //公众号结束
    });
</script>

<div class="am-topadd" style="height:0px"></div>

<!-- PublicHeadLayout Begin -->
<div class="header-wrap am-header-wrap">
    <header class="public-head-layout wrapper">
        <h1 class="site-logo"><a href="www_yuekangsong_default.html"><img
                src="../../data/upload/shop/common/06286872896538652.jpg" class="pngFix"></a></h1>

        <div class="head-search-bar">
            <form action="www_yuekangsong_default.html" method="get" class="search-form" id="top_search_form">
                <input name="c" id="search_c" value="search" type="hidden">
                <input name="keyword" id="keyword" type="text" class="input-text" value="" maxlength="60"
                       x-webkit-speech lang="zh-CN" onwebkitspeechchange="foo()" placeholder="请输入您要搜索的商品关键字"
                       x-webkit-grammar="builtin:search"/>
                <input type="submit" id="button" value="搜索" class="input-submit">
            </form>
            <div class="keyword">
                <ul>
                    <li>
                        <a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E5%85%AD%E5%91%B3%E5%9C%B0%E9%BB%84%E4%B8%B8">六味地黄丸</a>
                    </li>
                    <li>
                        <a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E4%B9%9D%E8%8A%9D%E5%A0%82%E8%83%96%E5%A4%A7%E6%B5%B7%E6%B6%A6%E5%96%89%E7%B3%96">九芝堂胖大海润喉糖</a>
                    </li>
                    <li>
                        <a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E5%9B%9B%E7%89%A9%E8%83%B6%E5%9B%8A">四物胶囊</a>
                    </li>
                    <li>
                        <a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E6%84%9F%E5%86%92%E6%B8%85%E7%83%AD%E9%A2%97%E7%B2%92">感冒清热颗粒</a>
                    </li>
                    <li>
                        <a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E5%92%B3%E7%89%B9%E7%81%B5%E7%89%87">咳特灵片</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="head-user-menu">
            <div class="am-ewm"><img src="../../shop/templates/default/images/shop/ykewm.jpg"></div>
            <dl class="my-mall" style="display: none;">
                <dt><span class="ico"></span>我的商城<i class="arrow"></i></dt>
                <dd>
                    <div class="sub-title">
                        <h4></h4>
                        <a href="https://www.yuekangsong.com/index.php?c=member&op=home" class="arrow">我的用户中心<i></i></a>
                    </div>
                    <div class="user-centent-menu">
                        <ul>
                            <li>
                                <a href="https://www.yuekangsong.com/index.php?c=member_message&op=message">站内消息(<span>0</span>)</a>
                            </li>
                            <li><a href="https://www.yuekangsong.com/index.php?c=member_order"
                                   class="arrow">我的订单<i></i></a></li>
                            <li>
                                <a href="https://www.yuekangsong.com/index.php?c=member_consult&op=my_consult">咨询回复(<span
                                        id="member_consult">0</span>)</a></li>
                            <li><a href="https://www.yuekangsong.com/index.php?c=member_favorites&op=fglist"
                                   class="arrow">我的收藏<i></i></a></li>
                            <li><a href="https://www.yuekangsong.com/index.php?c=member_voucher">代金券(<span
                                    id="member_voucher">0</span>)</a></li>
                            <li><a href="https://www.yuekangsong.com/index.php?c=member_points"
                                   class="arrow">我的积分<i></i></a></li>
                        </ul>
                    </div>
                    <div class="browse-history">
                        <div class="part-title">
                            <h4>最近浏览的商品</h4>
                            <span style="float:right;"><a
                                    href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&op=list">全部浏览历史</a></span>
                        </div>
                        <ul>
                            <li class="no-goods"><img class="loading"
                                                      src="../../shop/templates/default/images/loading.gif"/></li>
                        </ul>
                    </div>
                </dd>
            </dl>
            <dl class="my-cart">
                <div class="addcart-goods-num">0</div>
                <dt onclick="javascript:go('https://www.yuekangsong.com/index.php?c=cart')"><span class="ico"></span>我的购物车<i
                        class="arrow" style="display: none;"></i></dt>

                <dd style="display: none;">
                    <div class="sub-title">
                        <h4>最新加入的商品</h4>
                    </div>
                    <div class="incart-goods-box">
                        <div class="incart-goods"><img class="loading"
                                                       src="../../shop/templates/default/images/loading.gif"/>
                        </div>
                    </div>
                    <div class="checkout"><span
                            class="total-price">共<i>0</i>种商品</span><a
                            href="https://www.yuekangsong.com/index.php?c=cart" class="btn-cart">结算购物车中的商品</a></div>
                </dd>
            </dl>
        </div>
    </header>
</div>
<!-- PublicHeadLayout End -->

<!-- publicNavLayout Begin -->
<nav class="public-nav-layout ">
    <div class="wrapper">
        <div class="all-category">
            <div class="title"><i></i>
                <h3><a href="https://www.yuekangsong.com/category.html">全部分类</a></h3>
            </div>
            <div class="category new_category">
                <ul class="menu">
                    <li>
                        <c:forEach items="${data}" var="data1">
                            <div class="class sprite01">
                                <span class="am-goods-ionic"><img
                                        src="../../data/upload/shop/common/category-pic-5483.jpg"></span>
                                <h4>${data1.name}</h4>
                            </div>
                            <div class="sub-class">
                                <c:forEach items="${data1.item}" var="data2">
                                    <div class="am-sublist">

                                        <div class="am-hot-word-line">
                                            <div class="am-sub-left"><span class="arrow"></span>
                                                    ${data2.name}
                                            </div>
                                            <c:forEach items="${data2.item}" var="data3">
                                                <div class="am-sub-right">
                                                    ${data3.name}
                                                </div>
                                                <div class="clear"></div>
                                            </c:forEach>
                                        </div>

                                    </div>
                                </c:forEach>
                            </div>
                        </c:forEach>
                    </li>
                </ul>
            </div>

        </div>
        <ul class="site-menu">
            <li><a href="www_yuekangsong_default.html" class="current">首页</a></li>
            <li><a href="https://www.yuekangsong.com/brand.html"> 品牌</a></li>
            <li><a href="https://www.yuekangsong.com/integral.html"> 积分中心</a></li>
            <!--
      <li><a href="" > 专题</a></li>
      -->                                                                                                          </ul>
    </div>
</nav>
<div class="yksh-breadcrumb-layout">
</div>
<link href="../../shop/templates/default/css/index.css" rel="stylesheet" type="text/css">
<link href="../../shop/templates/default/css/swiper-3.3.1.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../shop/resource/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../../shop/resource/js/home_index.js" charset="utf-8"></script>
<script type="text/javascript" src="../../shop/resource/js/swiper-3.3.1.min.js"
        charset="utf-8"></script>
<!--[if IE 6]>
<script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/ie6.js" charset="utf-8"></script>
<script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/common.js" charset="utf-8"></script>
<![endif]-->
<style type="text/css">
    .category {
        display: block !important;
    }
</style>

<script>
    //    $(function(){
    //      $('.full-screen-slides li').css('background-size'.'100%!important');
    //    })
</script>

<!--[if IE 7]>
<style type="text/css">
    .am-bottom ul li {
        padding-bottom: 14px;
    }
</style>
<![endif]-->

<!--[if gte IE 8]>
<style type="text/css">
    .am-bottom ul li {
        padding-bottom: 12px;
    }
</style>

<![endif]-->
<!--[if IE 10]>
<style type="text/css">
    .am-bottom ul li {
        padding-bottom: 12px;
    }
</style>

<![endif]-->

<!--[if IE 11]>
<style type="text/css">
    .am-bottom ul li {
        padding-bottom: 12px;
    }
</style>
<![endif]-->
<div class="clear"></div>
<%--大广告位的请求--%>
<script type="text/javascript">
    $.ajax({
        type: "GET",//请求方式为get或者post
        url: "/imgContent",//请求的url(一般为后台接口)
//        data:{user:"xiao"},//发送到服务器的参数
        dataType: "json",//服务器响应的数据类型
        success: function (data) { //请求成功后返回的数据，赋值给变量'data'
            //对data进行操作
            alert("111" + data);
        }

    });
</script>
<%--<script type="text/javascript">--%>
<%--(function () {--%>
<%--var data = ${ad1};--%>
<%--alert(data);--%>
<%--})--%>

<%--</script>--%>
<!-- HomeFocusLayout Begin-->
<div class="home-focus-layout">

    <ul id="fullScreenSlides" class="full-screen-slides">
        <li style="background:  url('https://www.yuekangsong.com/data/upload/shop/editor/web-101-101-1.jpg?425') no-repeat center top">
            <a href="www_yuekangsong_default.html" target="_blank" title="">&nbsp;</a></li>

    </ul>
    <div class="jfocus-trigeminy">
        <ul>
            <li>
                <a href="http://www.yuekangsong.com/item-101176.html" target="_blank" title="珍珠粉">
                    <img src="../../data/upload/shop/editor/web-101-102-2-1.jpg" alt="珍珠粉"></a>
                <a href="www_yuekangsong_default.html" target="_blank" title="">
                    <img src="https://www.yuekangsong.com/data/upload/" alt=""></a>
                <a href="www_yuekangsong_default.html" target="_blank" title="">
                    <img src="https://www.yuekangsong.com/data/upload/" alt=""></a>
            </li>
        </ul>
    </div>
    <script type="text/javascript">
        update_screen_focus();
    </script>
    <div class="right-sidebar">

    </div>


    <!--  右侧登录开始 -->
    <div class="am-login-area">
        <div class="am-containernew">
            <div class="am-loginright">
                <img src="../../shop/templates/default/images/shop/logo_index.jpg">
            </div>
            <h2>Hi~你好！</h2>


            <button class="am-login_button"><a href="https://www.yuekangsong.com/index.php?c=login&op=index">登录</a>
            </button>
            <div class="am-freeregi"><span class="arrow"></span><a
                    href="https://www.yuekangsong.com/index.php?c=login&op=register">免费注册</a></div>
            <div class="am-zx">
                <ul>

                    <li><a target="_blank"
                           href="http://wpa.qq.com/msgrd?v=3&uin=3470749439&site=qq&menu=yes"><img
                            src="../../shop/templates/default/images/shop/b1.jpg">

                        <p>售前咨询</p></a></li>

                    <li><a target="_blank"
                           href="http://wpa.qq.com/msgrd?v=3&uin=3470749439&site=qq&menu=yes"><img
                            src="../../shop/templates/default/images/shop/b2.jpg">

                        <p>售后咨询</p></a></li>
                    <li><a target="_blank"
                           href="http://wpa.qq.com/msgrd?v=3&uin=3470749439&site=qq&menu=yes"><img
                            src="../../shop/templates/default/images/shop/b3.jpg">

                        <p>在线药师</p></a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="am-yh">
                <dl>
                    <dd><img src="../../shop/templates/default/images/shop/c1.jpg">

                        <p>正品保证</p></dd>
                    <dd><img src="../../shop/templates/default/images/shop/c2.jpg">

                        <p>满69包邮</p></dd>
                    <dd><img src="../../shop/templates/default/images/shop/c3.jpg">

                        <p>药监认证</p></dd>
                    <dd><img src="../../shop/templates/default/images/shop/c4.jpg">

                        <p>货到付款</p></dd>
                </dl>
            </div>

        </div>
    </div>

    <!--  右侧登录结束-->
</div>
<!--HomeFocusLayout End-->

<div class="home-sale-layout wrapper">
    <div class="left-layout">

        <ul class="tabs-nav">
            <li class="tabs-selected"><i class="arrow"></i>
                <h3>猜您喜欢</h3></li>
        </ul>
        <div class="tabs-panel sale-goods-list ">
            <ol class="am-tabs-lists">
                <li><a href="https://www.yuekangsong.com/item-100743.html"> <img
                        src="../../data/upload/shop/store/goods/1/1_05148934448984365_240.jpg"></a></li>
            </ol>
        </div>


    </div>

</div>
<div class="wrapper">
</div>

<div class="am-floor-area">
    <div class="am-floor-jtcb">
        <ul>
            <li><img src="../../shop/templates/default/images/shop/jiatingcb.png"><em>家庭常备</em></li>
            <li><img src="../../shop/templates/default/images/shop/sprites_gray02.png"><em>专科用药</em></li>
            <li><img src="../../shop/templates/default/images/shop/sprites_gray04.png"><em>妇科用药</em></li>
            <li><img src="../../shop/templates/default/images/shop/sprites_gray03.png"><em>男科用药</em></li>
            <li><img src="../../shop/templates/default/images/shop/sprites_gray05.png"><em>滋补保健</em></li>
            <li><img src="../../shop/templates/default/images/shop/sprites_gray06.png"><em>成人用品</em></li>
            <li class="am-last-child"><img
                    src="../../shop/templates/default/images/shop/sprites_gray06.png"><em>医疗器械</em></li>
        </ul>
    </div>
    <!--StandardLayout Begin-->


    <div class="am-floor am-pink"
    ">
    <div class="am-floor-left"><h1>1F 家庭常备</h1>
        <ul>
            <li><a href="https://www.yuekangsong.com/cate-5485-0-0-0-0-0-0-0-0.html" title="流行性感冒"
                   target="_blank">流行性感冒</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5486-0-0-0-0-0-0-0-0.html" title="普通感冒"
                   target="_blank">普通感冒</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5492-0-0-0-0-0-0-0-0.html" title="脚气/手足癣" target="_blank">脚气/手足癣</a>
            </li>
            <li><a href="https://www.yuekangsong.com/cate-5493-0-0-0-0-0-0-0-0.html" title="脱发" target="_blank">脱发</a>
            </li>
            <li><a href="https://www.yuekangsong.com/cate-5494-0-0-0-0-0-0-0-0.html" title="创可贴" target="_blank">创可贴</a>
            </li>
            <li><a href="https://www.yuekangsong.com/cate-5495-0-0-0-0-0-0-0-0.html" title="白发" target="_blank">白发</a>
            </li>
            <li><a href="https://www.yuekangsong.com/cate-5496-0-0-0-0-0-0-0-0.html" title="皮肤瘙痒"
                   target="_blank">皮肤瘙痒</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5497-0-0-0-0-0-0-0-0.html" title="清热解毒"
                   target="_blank">清热解毒</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5500-0-0-0-0-0-0-0-0.html" title="咳嗽" target="_blank">咳嗽</a>
            </li>
            <li><a href="https://www.yuekangsong.com/cate-5502-0-0-0-0-0-0-0-0.html" title="止咳化痰"
                   target="_blank">止咳化痰</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5510-0-0-0-0-0-0-0-0.html" title="视疲劳" target="_blank">视疲劳</a>
            </li>
            <li><a href="https://www.yuekangsong.com/cate-5511-0-0-0-0-0-0-0-0.html" title="口腔溃疡"
                   target="_blank">口腔溃疡</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5512-0-0-0-0-0-0-0-0.html" title="过敏性鼻炎"
                   target="_blank">过敏性鼻炎</a></li>
            <li><a href="https://www.yuekangsong.com/cate-5487-0-0-0-0-0-0-0-0.html" title="皮肤护理"
                   target="_blank">皮肤护理</a></li>

        </ul>
    </div>
    <div class="am-floor-right">
        <div class="am-f-top">
            <div class="am-slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><a href="www_yuekangsong_default.html"
                                                     title=""
                                                     target="_blank">
                            <img src="https://www.yuekangsong.com/data/upload/"
                                 alt=""/></a></div>
                    </div>
                    <!-- 如果需要分页器 -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="am-r-add">
                <ul>
                    <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=32"><img
                            src="../../data/upload/shop/editor/06269819598540970.jpg"></a></li>
                    <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=33"><img
                            src="../../data/upload/shop/editor/06269819661072667.jpg"></a></li>
                </ul>
            </div>
        </div>
        <div style="clear: both;"></div>
        <div class="am-bottom">
            <ul>
                <li><a target="_blank"
                       href="https://www.yuekangsong.com/item-100718.html">
                    <img
                            src="../../data/upload/shop/store/goods/1/1_05148259112194589_240.jpg"
                            alt="小儿感冒颗粒"/>
                </a>

                    <p><a target="_blank"
                          href="https://www.yuekangsong.com/item-100718.html"
                          title="小儿感冒颗粒">
                        小儿感冒颗粒</a></p>

                    <h2>&yen;12.00<span><del>
                                                &yen;15.80</del></span>
                    </h2>
                </li>
                <li><a target="_blank"
                       href="https://www.yuekangsong.com/item-100684.html">
                    <img
                            src="../../data/upload/shop/store/goods/1/1_05148018816820416_240.jpg"
                            alt="桑菊感冒片"/>
                </a>

                    <p><a target="_blank"
                          href="https://www.yuekangsong.com/item-100684.html"
                          title="桑菊感冒片">
                        桑菊感冒片</a></p>

                    <h2>&yen;10.50<span><del>
                                                &yen;24.60</del></span>
                    </h2>
                </li>
                <li><a target="_blank"
                       href="https://www.yuekangsong.com/item-100795.html">
                    <img
                            src="../../data/upload/shop/store/goods/1/1_05149195900720616_240.jpg"
                            alt="京制牛黄解毒片"/>
                </a>

                    <p><a target="_blank"
                          href="https://www.yuekangsong.com/item-100795.html"
                          title="京制牛黄解毒片">
                        京制牛黄解毒片</a></p>

                    <h2>&yen;23.80<span><del>
                                                &yen;25.00</del></span>
                    </h2>
                </li>
                <li><a target="_blank"
                       href="https://www.yuekangsong.com/item-100831.html">
                    <img
                            src="../../data/upload/shop/store/goods/1/1_05149941317463962_240.png"
                            alt="银翘解毒片"/>
                </a>

                    <p><a target="_blank"
                          href="https://www.yuekangsong.com/item-100831.html"
                          title="银翘解毒片">
                        银翘解毒片</a></p>

                    <h2>&yen;9.90<span><del>
                                                &yen;10.70</del></span>
                    </h2>
                </li>
                <li><a target="_blank"
                       href="https://www.yuekangsong.com/item-100794.html">
                    <img
                            src="../../data/upload/shop/store/goods/1/1_05149191816067126_240.jpg"
                            alt="感冒灵胶囊"/>
                </a>

                    <p><a target="_blank"
                          href="https://www.yuekangsong.com/item-100794.html"
                          title="感冒灵胶囊">
                        感冒灵胶囊</a></p>

                    <h2>&yen;10.90<span><del>
                                                &yen;12.20</del></span>
                    </h2>
                </li>
            </ul>
        </div>
    </div>
    <div style="clear: both;"></div>
</div>


<div class="am-floor am-blue"
">
<div class="am-floor-left"><h1>2F 专科用药</h1>
    <ul>
        <li><a href="https://www.yuekangsong.com/cate-5577-0-0-0-0-0-0-0-0.html" title="风湿骨科" target="_blank">风湿骨科</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5583-0-0-0-0-0-0-0-0.html" title="肝胆胃肠" target="_blank">肝胆胃肠</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5586-0-0-0-0-0-0-0-0.html" title="解热镇痛" target="_blank">解热镇痛</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5605-0-0-0-0-0-0-0-0.html" title="缺铁性贫血" target="_blank">缺铁性贫血</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5607-0-0-0-0-0-0-0-0.html" title="神经/精神科"
               target="_blank">神经/精神科</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5610-0-0-0-0-0-0-0-0.html" title="心脑血管科" target="_blank">心脑血管科</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5612-0-0-0-0-0-0-0-0.html" title="眼耳口鼻" target="_blank">眼耳口鼻</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5616-0-0-0-0-0-0-0-0.html" title="止痛" target="_blank">止痛</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5589-0-0-0-0-0-0-0-0.html" title="痤疮" target="_blank">痤疮</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5596-0-0-0-0-0-0-0-0.html" title="皮肤癣症" target="_blank">皮肤癣症</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5598-0-0-0-0-0-0-0-0.html" title="皮肤炎症" target="_blank">皮肤炎症</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5601-0-0-0-0-0-0-0-0.html" title="烧烫创伤" target="_blank">烧烫创伤</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5580-0-0-0-0-0-0-0-0.html" title="活血化瘀" target="_blank">活血化瘀</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5581-0-0-0-0-0-0-0-0.html" title="颈椎病" target="_blank">颈椎病</a>
        </li>

    </ul>
</div>
<div class="am-floor-right">
    <div class="am-f-top">
        <div class="am-slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><a href="www_yuekangsong_default.html"
                                                 title=""
                                                 target="_blank">
                        <img src="https://www.yuekangsong.com/data/upload/"
                             alt=""/></a></div>
                </div>
                <!-- 如果需要分页器 -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="am-r-add">
            <ul>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=35"><img
                        src="../../data/upload/shop/editor/06269820321380157.jpg"></a></li>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=34"><img
                        src="../../data/upload/shop/editor/05531068392724022.png"></a></li>
            </ul>
        </div>
    </div>
    <div style="clear: both;"></div>
    <div class="am-bottom">
        <ul>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101144.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05204492033855726_240.jpg"
                        alt="辣椒风湿膏"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101144.html"
                      title="辣椒风湿膏">
                    辣椒风湿膏</a></p>

                <h2>&yen;35.00<span><del>
                                                &yen;36.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101277.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05227754661692108_240.jpg"
                        alt="吲哚美辛贴片"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101277.html"
                      title="吲哚美辛贴片">
                    吲哚美辛贴片</a></p>

                <h2>&yen;62.00<span><del>
                                                &yen;68.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101262.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05224354674217669_240.jpg"
                        alt="颈复康颗粒"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101262.html"
                      title="颈复康颗粒">
                    颈复康颗粒</a></p>

                <h2>&yen;25.00<span><del>
                                                &yen;30.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100876.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05151518443262986_240.jpg"
                        alt="复方南星止痛膏"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100876.html"
                      title="复方南星止痛膏">
                    复方南星止痛膏</a></p>

                <h2>&yen;24.30<span><del>
                                                &yen;30.40</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101588.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05550027583466252_240.jpg"
                        alt="康恩贝肠炎宁片"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101588.html"
                      title="康恩贝肠炎宁片">
                    康恩贝肠炎宁片</a></p>

                <h2>&yen;14.90<span><del>
                                                &yen;29.90</del></span>
                </h2>
            </li>
        </ul>
    </div>
</div>
<div style="clear: both;"></div>
</div>


<div class="am-floor am-purple"
">
<div class="am-floor-left"><h1>3F 妇科用药</h1>
    <ul>
        <li><a href="https://www.yuekangsong.com/cate-5700-0-0-0-0-0-0-0-0.html" title="阴道炎" target="_blank">阴道炎</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5693-0-0-0-0-0-0-0-0.html" title="滋阴降火" target="_blank">滋阴降火</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5476-0-0-0-0-0-0-0-0.html" title="避孕" target="_blank">避孕</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5477-0-0-0-0-0-0-0-0.html" title="痛经" target="_blank">痛经</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5478-0-0-0-0-0-0-0-0.html" title="月经不调" target="_blank">月经不调</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5479-0-0-0-0-0-0-0-0.html" title="白带异常" target="_blank">白带异常</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5480-0-0-0-0-0-0-0-0.html" title="更年期" target="_blank">更年期</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5481-0-0-0-0-0-0-0-0.html" title="盆腔炎" target="_blank">盆腔炎</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5689-0-0-0-0-0-0-0-0.html" title="过敏" target="_blank">过敏</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5690-0-0-0-0-0-0-0-0.html" title="宫颈炎" target="_blank">宫颈炎</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5475-0-0-0-0-0-0-0-0.html" title="阴道炎" target="_blank">阴道炎</a>
        </li>
        <li><a href="https://www.yuekangsong.com/brand-1211-0-0-0-0-0-0.html">康美</a></li>
        <li><a href="https://www.yuekangsong.com/brand-1275-0-0-0-0-0-0.html">普济仁堂</a></li>
        <li><a href="https://www.yuekangsong.com/brand-316-0-0-0-0-0-0.html">东信</a></li>

    </ul>
</div>
<div class="am-floor-right">
    <div class="am-f-top">
        <div class="am-slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><a href="www_yuekangsong_default.html"
                                                 title=""
                                                 target="_blank">
                        <img src="https://www.yuekangsong.com/data/upload/"
                             alt=""/></a></div>
                </div>
                <!-- 如果需要分页器 -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="am-r-add">
            <ul>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=38"><img
                        src="../../data/upload/shop/editor/06269820483096036.jpg"></a></li>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=39"><img
                        src="../../data/upload/shop/editor/06269820532940591.jpg"></a></li>
            </ul>
        </div>
    </div>
    <div style="clear: both;"></div>
    <div class="am-bottom">
        <ul>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100623.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05145615259111064_240.jpg"
                        alt="左炔诺孕酮片（金毓婷）"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100623.html"
                      title="左炔诺孕酮片（金毓婷）">
                    左炔诺孕酮片（金毓婷）</a></p>

                <h2>&yen;18.00<span><del>
                                                &yen;40.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100814.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05149827611276279_240.jpg"
                        alt="益母草颗粒"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100814.html"
                      title="益母草颗粒">
                    益母草颗粒</a></p>

                <h2>&yen;15.00<span><del>
                                                &yen;20.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100807.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05149784639259492_240.jpg"
                        alt="气血和胶囊"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100807.html"
                      title="气血和胶囊">
                    气血和胶囊</a></p>

                <h2>&yen;269.00<span><del>
                                                &yen;288.00</del></span>
                </h2>
            </li>
        </ul>
    </div>
</div>
<div style="clear: both;"></div>
</div>


<div class="am-floor am-orange"
">
<div class="am-floor-left"><h1>4F 男科用药</h1>
    <ul>
        <li><a href="https://www.yuekangsong.com/cate-5518-0-0-0-0-0-0-0-0.html" title="滋补保健" target="_blank">滋补保健</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5519-0-0-0-0-0-0-0-0.html" title="温肾壮阳" target="_blank">温肾壮阳</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5520-0-0-0-0-0-0-0-0.html" title="滋肾养肺" target="_blank">滋肾养肺</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5521-0-0-0-0-0-0-0-0.html" title="阳痿早泄" target="_blank">阳痿早泄</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5522-0-0-0-0-0-0-0-0.html" title="补肾固齿" target="_blank">补肾固齿</a>
        </li>
        <li><a href="https://www.yuekangsong.com/brand-348-0-0-0-0-0-0.html">同仁堂</a></li>
        <li><a href="https://www.yuekangsong.com/brand-1270-0-0-0-0-0-0.html">花城制药</a></li>
        <li><a href="https://www.yuekangsong.com/brand-597-0-0-0-0-0-0.html">太极</a></li>
        <li><a href="https://www.yuekangsong.com/brand-214-0-0-0-0-0-0.html">京果</a></li>
        <li><a href="https://www.yuekangsong.com/brand-215-0-0-0-0-0-0.html">九芝堂</a></li>
        <li><a href="https://www.yuekangsong.com/brand-1199-0-0-0-0-0-0.html">汇仁</a></li>
        <li><a href="https://www.yuekangsong.com/brand-1146-0-0-0-0-0-0.html">汤臣倍健</a></li>
        <li><a href="https://www.yuekangsong.com/brand-1211-0-0-0-0-0-0.html">康美</a></li>
        <li><a href="https://www.yuekangsong.com/brand-840-0-0-0-0-0-0.html">养生堂</a></li>

    </ul>
</div>
<div class="am-floor-right">
    <div class="am-f-top">
        <div class="am-slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><a href="www_yuekangsong_default.html"
                                                 title=""
                                                 target="_blank">
                        <img src="https://www.yuekangsong.com/data/upload/"
                             alt=""/></a></div>
                </div>
                <!-- 如果需要分页器 -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="am-r-add">
            <ul>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=36"><img
                        src="../../data/upload/shop/editor/06269820664444849.jpg"></a></li>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=37"><img
                        src="../../data/upload/shop/editor/06269820716749218.jpg"></a></li>
            </ul>
        </div>
    </div>
    <div style="clear: both;"></div>
    <div class="am-bottom">
        <ul>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101343.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05239828729330160_240.jpg"
                        alt="阳春口服液"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101343.html"
                      title="阳春口服液">
                    阳春口服液</a></p>

                <h2>&yen;99.00<span><del>
                                                &yen;136.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101118.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05204193846043903_240.jpg"
                        alt="锁阳固精丸"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101118.html"
                      title="锁阳固精丸">
                    锁阳固精丸</a></p>

                <h2>&yen;25.00<span><del>
                                                &yen;28.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100847.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05150012485736802_240.jpg"
                        alt="麦味地黄丸（大蜜丸）"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100847.html"
                      title="麦味地黄丸（大蜜丸）">
                    麦味地黄丸（大蜜丸）</a></p>

                <h2>&yen;13.10<span><del>
                                                &yen;14.50</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100706.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05148195749806013_240.jpg"
                        alt="五子衍宗丸"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100706.html"
                      title="五子衍宗丸">
                    五子衍宗丸</a></p>

                <h2>&yen;22.00<span><del>
                                                &yen;22.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100817.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05149842916559633_240.jpg"
                        alt="补肾固齿丸"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100817.html"
                      title="补肾固齿丸">
                    补肾固齿丸</a></p>

                <h2>&yen;42.90<span><del>
                                                &yen;50.40</del></span>
                </h2>
            </li>
        </ul>
    </div>
</div>
<div style="clear: both;"></div>
</div>


<div class="am-floor am-green"
">
<div class="am-floor-left"><h1>5F 滋补保健</h1>
    <ul>
        <li><a href="https://www.yuekangsong.com/cate-5621-0-0-0-0-0-0-0-0.html" title="改善机能" target="_blank">改善机能</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5641-0-0-0-0-0-0-0-0.html" title="贵细滋补品" target="_blank">贵细滋补品</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5661-0-0-0-0-0-0-0-0.html" title="休闲零食" target="_blank">休闲零食</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5670-0-0-0-0-0-0-0-0.html" title="养生茶饮" target="_blank">养生茶饮</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5673-0-0-0-0-0-0-0-0.html" title="叶酸" target="_blank">叶酸</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5675-0-0-0-0-0-0-0-0.html" title="营养调节" target="_blank">营养调节</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5683-0-0-0-0-0-0-0-0.html" title="中药饮片" target="_blank">中药饮片</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5676-0-0-0-0-0-0-0-0.html" title="胶原蛋白类" target="_blank">胶原蛋白类</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5677-0-0-0-0-0-0-0-0.html" title="褪黑素" target="_blank">褪黑素</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5678-0-0-0-0-0-0-0-0.html" title="氨基酸类" target="_blank">氨基酸类</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5684-0-0-0-0-0-0-0-0.html" title="传统汤料" target="_blank">传统汤料</a>
        </li>
        <li><a href="https://www.yuekangsong.com/cate-5686-0-0-0-0-0-0-0-0.html" title="珍珠" target="_blank">珍珠</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5687-0-0-0-0-0-0-0-0.html" title="洋参/花旗参"
               target="_blank">洋参/花旗参</a></li>
        <li><a href="https://www.yuekangsong.com/cate-5626-0-0-0-0-0-0-0-0.html" title="维生素C" target="_blank">维生素C</a>
        </li>

    </ul>
</div>
<div class="am-floor-right">
    <div class="am-f-top">
        <div class="am-slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><a href="www_yuekangsong_default.html"
                                                 title=""
                                                 target="_blank">
                        <img src="https://www.yuekangsong.com/data/upload/"
                             alt=""/></a></div>
                </div>
                <!-- 如果需要分页器 -->
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <div class="am-r-add">
            <ul>
                <li><a href="https://www.yuekangsong.com/index.php?c=special&op=special_detail&special_id=43"><img
                        src="../../data/upload/shop/editor/06269820859542359.jpg"></a></li>
            </ul>
        </div>
    </div>
    <div style="clear: both;"></div>
    <div class="am-bottom">
        <ul>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-100894.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05151707101793487_240.jpg"
                        alt="汤臣倍健维生素C片"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-100894.html"
                      title="汤臣倍健维生素C片">
                    汤臣倍健维生素C片</a></p>

                <h2>&yen;118.00<span><del>
                                                &yen;128.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101074.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05198524319485032_240.jpg"
                        alt="脑白金年轻态健康品"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101074.html"
                      title="脑白金年轻态健康品">
                    脑白金年轻态健康品</a></p>

                <h2>&yen;258.00<span><del>
                                                &yen;268.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101073.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05198521199063426_240.jpg"
                        alt="太太静心助眠口服液"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101073.html"
                      title="太太静心助眠口服液">
                    太太静心助眠口服液</a></p>

                <h2>&yen;298.00<span><del>
                                                &yen;300.00</del></span>
                </h2>
            </li>
            <li><a target="_blank"
                   href="https://www.yuekangsong.com/item-101507.html">
                <img
                        src="../../data/upload/shop/store/goods/1/1_05496285661112291_240.jpg"
                        alt="同仁堂红糖姜茶"/>
            </a>

                <p><a target="_blank"
                      href="https://www.yuekangsong.com/item-101507.html"
                      title="同仁堂红糖姜茶">
                    同仁堂红糖姜茶</a></p>

                <h2>&yen;33.00<span><del>
                                                &yen;39.80</del></span>
                </h2>
            </li>
        </ul>
    </div>
</div>
<div style="clear: both;"></div>
</div>

</div>
<!--StandardLayout End-->
<div class="wrapper">
    <div class="mt10"></div>
</div>
<!-- 悬浮窗开始-->
<div class="list-group am-float-window">
    <a href="javascript:;" class="list-group-item am-list-header">
        本站提供信息服务内容
        <span class="close">×</span>
    </a>

    <div class="am-list-body">
        <ul>
            <li class="list-group-item clearfix"><label>(1)</label><span>会员注册费用100元一年 买药有优惠</span></li>
            <li class="list-group-item clearfix"><label>(2)</label><span>用药咨询</span></li>
            <li class="list-group-item clearfix"><label>(3)</label><span>连锁药店折扣信息</span></li>
            <li class="list-group-item clearfix"><label>(4)</label><span>药品特价促销咨询</span></li>
            <li class="list-group-item clearfix"><label>(5)</label><span>医药用品展会药品清仓信息</span></li>
            <li class="list-group-item clearfix"><label>(6)</label><span>周边药店药品信息</span></li>
        </ul>
    </div>
    <div class="am-list-footer"><a
            href="http://amos.im.alisoft.com/msg.aw?v=2&amp;uid=百姓平安药房售前咨询&amp;site=cntaobao&amp;s=1&amp;charset=UTF-8"
            target="_blank">详情咨询客服</a></div>
</div>

<!-- 悬浮窗结束-->

<!-- 新的底部开始 -->
<div class="am-footer-area">
    <div class="am-footer-top">
        <ul>
            <li class="am-bz1"><h4>药监认证</h4>

                <p>获药监局药品交易资格证
                </p></li>
            <li class="am-bz2">
                <h4>正品保证</h4>

                <p>品牌授权，正品货源

                </p>
            </li>
            <li class="am-bz3"><h4>满69包邮</h4>

                <p>满69元，免运费
                </p></li>
            <li class="am-bz4"><h4>货到付款</h4>

                <p>先收货后付款，购药更方便
                </p></li>
            <div class="clearfix"></div>
        </ul>

    </div>
    <div class="am-footer-mid">
        <div style="width:1035px;margin:0 auto;">
            <dl>
                <dd style="margin-right: 60px;">
                    <h2>新手指南</h2>
                    <p>
                        <a href="https://www.yuekangsong.com/article-6.html"
                           title="会员注册"> 会员注册 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-39.html"
                           title="企业资质"> 企业资质 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-7.html"
                           title="常见问题"> 常见问题 </a>
                    </p>
                </dd>
                <dd style="margin-right: 60px;">
                    <h2>交易安全</h2>
                    <p>
                        <a href="https://www.yuekangsong.com/article-11.html"
                           title="交易规则"> 交易规则 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-12.html"
                           title="资金安全"> 资金安全 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-14.html"
                           title="支付方式"> 支付方式 </a>
                    </p>
                </dd>
                <dd style="margin-right: 60px;">
                    <h2>物流配送</h2>
                    <p>
                        <a href="https://www.yuekangsong.com/article-28.html"
                           title="隐私配送"> 隐私配送 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-29.html"
                           title="包装流程"> 包装流程 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-30.html"
                           title="验货签收"> 验货签收 </a>
                    </p>
                </dd>
                <dd style="margin-right: 60px;">
                    <h2>注意事项</h2>
                    <p>
                        <a href="https://www.yuekangsong.com/article-26.html"
                           title="注册事项"> 注册事项 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-31.html"
                           title="订单事项"> 订单事项 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-32.html"
                           title="产权事项"> 产权事项 </a>
                    </p>
                </dd>
                <dd style="margin-right: 60px;">
                    <h2>售后服务</h2>
                    <p>
                        <a href="https://www.yuekangsong.com/article-18.html"
                           title="退款说明"> 退款说明 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-19.html"
                           title="退换货保障"> 退换货保障 </a>
                    </p>
                    <p>
                        <a href="https://www.yuekangsong.com/article-20.html"
                           title="发票制度"> 发票制度 </a>
                    </p>
                </dd>
            </dl>

            <div style="clear: both;"></div>
        </div>

    </div>

    <div class="am-footer-bottom">
        <div class="am-footer-daily">
            <p>客服电话：4008-120-102<br><span>周一到周日： 09:00-21:00</span></p>
        </div>

        <div class="am-copyright">
            <p>
                <a target="_blank" href="../../data/upload/shop/article/05799717836792755.jpg">药品经营许可证</a>
                <a href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=48">营业执照</a>
                <a target="_blank" href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action">京ICP备15001998号</a>
                <a target="_blank"
                   href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=46">GSP认证证书</a>
            </p>
        </div>
        <div class="am-zz">
            <p>
                <a target="_blank" href="../../data/upload/shop/article/05799719527653417.jpg">食品经营许可证</a>
                <a target="_blank"
                   href="https://www.yuekangsong.com/article-43.html">互联网药品信息服务资格证书:（京）-非经营性-2015-0001</a>
                <a target="_blank" href="https://www.yuekangsong.com/article-42.html">互联网药品交易资格证书：京C20150004</a>
            </p>
        </div>
        <div class="am-bottom-copy">版权所有：北京源通百姓平安大药房有限公司</div>
        <div class="am-copy-img">
            <div style="width:300px;margin:0 auto; padding:20px 0;">
                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11030102010086"
                   style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img
                        src="../../shop/templates/default/images/police_logo.png"
                        style="float:left;margin-right: 0px;"/>
                    <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393; font-size:14px;">
                        京公网安备 11030102010086号</p></a>
            </div>
        </div>
    </div>
    <script type='text/javascript'>
        var _vds = _vds || [];
        window._vds = _vds;
        (function () {
            _vds.push(['setAccountId', 'b86f8ea45795d65c']);
            (function () {
                var vds = document.createElement('script');
                vds.type = 'text/javascript';
                vds.async = true;
                vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(vds, s);
            })();
        })();
    </script>
</div>
<!-- 新的底部结束 -->

<script type="text/javascript" src="../../data/resource/js/jquery.cookie.js"></script>
<link href="../../data/resource/js/perfect-scrollbar.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../data/resource/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="../../data/resource/js/qtip/jquery.qtip.min.js"></script>
<link href="../../data/resource/js/qtip/jquery.qtip.min.css" rel="stylesheet" type="text/css">
<!-- 对比d -->
<script src="../../shop/resource/js/compare.js"></script>
<script type="text/javascript">
    $(function () {
        // Membership card
        $('[nctype="mcard"]').membershipCard({type: 'shop'});
    });
</script>
</body>
</html>
