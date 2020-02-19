<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta property="wb:webmaster" content="5a5b2e4624798d0f"/>
    <title>百姓平安药房网 - 感冒</title>
    <meta name="keywords" content="百姓平安药房网"/>
    <meta name="description" content="百姓平安药房网"/>
    <meta name="baidu-site-verification" content="wF8dpAI40x"/>
    <meta name="copyright" content="yuekangsong Inc. All Rights Reserved">
    <style type="text/css">
        body {
            _behavior: url(https://www.yuekangsong.com/shop/templates/default/css/csshover.htc);
        }
    </style>
    <link href="https://www.yuekangsong.com/shop/templates/default/css/base.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/templates/default/css/home_header.css" rel="stylesheet"
          type="text/css">
    <link href="https://www.yuekangsong.com/shop/templates/default/css/home_login.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/resource/font/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
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
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/common.js" charset="utf-8"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery-ui/jquery.ui.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.validation.min.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.masonry.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/dialog/dialog.js" id="dialog_js" charset="utf-8"></script>
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
                        src="https://www.yuekangsong.com/shop/templates/default/images/am-login.png">

                    <div class="show"></div>
                </a></li>
                <li class="am-rightlist2" id="rtoolbar_cart">

                    <div class="am-buy-area">
                        <img src="https://www.yuekangsong.com/shop/templates/default/images/buy_cart.png">

                        <p>购物车</p>
                        <div id="rtoobar_cart_count" class="right-addcart-goods-num">0</div>
                    </div>


                </li>
                <li class="am-rightlist3"><a
                        href="https://www.yuekangsong.com/index.php?c=member_favorites&op=fglist"><img
                        src="https://www.yuekangsong.com/shop/templates/default/images/start.png">

                    <div class="show">我的收藏</div>
                </a></li>
                <li class="am-rightlist4"><a
                        href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&op=list"><img
                        src="https://www.yuekangsong.com/shop/templates/default/images/clock.png">

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
                <li class="am-erweima"><img
                        src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweima.png">
                    <div class="show_erweima"><em></em><img
                            src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweim.jpg"></div>
                </li>
                <li><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/am-top.png" id="goTopnew">
                </li>
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
                <span><b><a href="https://www.yuekangsong.com/index.php?c=login&op=register">注册</a></b></span><span><a
                    href="https://www.yuekangsong.com/index.php?c=login&op=index">请登录</a></span>
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
                                src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweim.jpg"></div>
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
        <h1 class="site-logo"><a href="https://www.yuekangsong.com"><img
                src="https://www.yuekangsong.com/data/upload/shop/common/06286872896538652.jpg" class="pngFix"></a></h1>

        <div class="head-search-bar">
            <form action="https://www.yuekangsong.com" method="get" class="search-form" id="top_search_form">
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
            <div class="am-ewm"><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/ykewm.jpg">
            </div>
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
                                                      src="https://www.yuekangsong.com/shop/templates/default/images/loading.gif"/>
                            </li>
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
                                                       src="https://www.yuekangsong.com/shop/templates/default/images/loading.gif"/>
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
<script type="text/javascript">
    $(function () {
        $.ajax({
            type: "GET",
            url: "http://localhost:8081/cat/list2",
            dataType: 'json',
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {
            }
        });
    });
</script>
<nav class="public-nav-layout ">
    <div class="wrapper">
        <div class="all-category">
            <div class="title"><i></i>
                <h3><a>全部分类</a></h3>
            </div>

            <div class="category new_category">
                <ul class="menu">
                    <c:forEach items="${data}" var="data1">
                        <li>
                            <div class="class sprite01">
                                <span class="am-goods-ionic"><img
                                        src="../../data/upload/shop/common/category-pic-5483.jpg"></span>
                                <h4>
                                    <a href="https://www.yuekangsong.com/cate-5483-0-0-0-0-0-0-0-0.html">${data1.name}</a>
                                </h4>
                            </div>
                                <%--第二层和第三层的大div--%>
                            <div class="sub-class">
                                <c:forEach items="${data1.item}" var="data2">
                                    <div class="am-sublist">
                                        <div class="am-hot-word-line">
                                                <%--第二层--%>
                                            <div class="am-sub-left">
                                                <span class="arrow"></span>
                                                    ${data2.name}
                                            </div>
                                                <%--第三层--%>
                                            <div class="am-sub-right">
                                                <c:forEach items="${data2.item}" var="data3">
                                                    <a href="/cat/searchs/${data3.url}">${data3.name}</a>
                                                </c:forEach>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </li>
                    </c:forEach>
                </ul>

            </div>

        </div>
        <ul class="site-menu">
            <li><a href="https://www.yuekangsong.com">首页</a></li>
            <li><a href="https://www.yuekangsong.com/brand.html"> 品牌</a></li>
            <li><a href="https://www.yuekangsong.com/integral.html"> 积分中心</a></li>
            <!--
      <li><a href="" > 专题</a></li>
      -->                                                                                                          </ul>
    </div>
</nav>
<div class="yksh-breadcrumb-layout">
    <div class="yksh-breadcrumb wrapper"><i class="icon-home"></i>
        <span><a href="http://localhost:8081/">首页</a></span><span class="arrow">></span>

        <span class="arrow">></span>

    </div>
</div>
<script src="https://www.yuekangsong.com/shop/resource/js/search_goods.js"></script>
<link href="https://www.yuekangsong.com/shop/templates/default/css/layout.css" rel="stylesheet" type="text/css">
<style type="text/css">
    body {
        _behavior: url(https://www.yuekangsong.com/shop/templates/default/css/csshover.htc);
    }
</style>
<div class="yksh-container wrapper">
    <div class="left">
        <div class="yksh-module yksh-module-style02">
            <div class="title">
                <h3>分类筛选</h3>
            </div>
            <div class="content">
                <ul id="files" class="tree">
                    <li><i class="tree-parent tree-parent-collapsed"></i><a>${yi}</a>

                        <ul>
                            <li><i class="tree-parent tree-parent-collapsed"></i><a>${er}</a>
                                <ul>
                                    <li class="tree-parent tree-parent-collapsed"><i></i><a
                                            href="http://localhost:8081/cat/searchs/${sanid}"
                                            class="selected">${san}</a></li>
                                    <c:forEach items="${ji}" var="jihe">
                                        <li class="tree-parent tree-parent-collapsed"><i></i><a
                                                href="http://localhost:8081/cat/searchs/${jihe.url}">${jihe.name}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- S 推荐展位 -->
        <div nctype="booth_goods" class="yksh-module" style="display:none;"></div>
        <!-- E 推荐展位 -->

        <div class="yksh-module"></div>
        <!-- 最近浏览 -->

        <div class="yksh-module yksh-module-style03">
            <div class="title">
                <h3>最近浏览</h3>
            </div>
            <div class="content">
                <div class="yksh-sidebar-viewed" id="nchSidebarViewed">
                    <ul>
                    </ul>
                </div>
                <a href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&op=list"
                   class="yksh-sidebar-all-viewed">全部浏览历史</a></div>
        </div>

    </div>
    <div class="right">
        <!-- 分类下的推荐商品 -->
        <div id="gc_goods_recommend_div" style="width:980px;"></div>

        <div class="shop_con_list" id="main-nav-holder">
            <nav class="sort-bar" id="main-nav">
                <div class="pagination">
                    <ul>
                        <li><span>上一页</span></li>
                        <li><span>下一页</span></li>
                    </ul>
                </div>
                <div class="yksh-sortbar-array"> 排序方式：
                    <ul>
                        <li class="selected"><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-0-0.html"
                                                title="默认排序">默认</a></li>
                        <li><a href="https://www.yuekangsong.com/cate-5484-0-0-1-2-0-0-0-0.html"
                               title="点击按销量从高到低排序">销量<i></i></a></li>
                        <li><a href="https://www.yuekangsong.com/cate-5484-0-0-2-2-0-0-0-0.html"
                               title="点击按人气从高到低排序">人气<i></i></a></li>
                        <li><a href="https://www.yuekangsong.com/cate-5484-0-0-3-2-0-0-0-0.html"
                               title="点击按价格从高到低排序">价格<i></i></a></li>
                    </ul>
                </div>
                <div class="yksh-sortbar-owner"><span><a
                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-1-0-0-0.html"><i></i>平台自营</a></span></div>
                <div class="yksh-sortbar-owner"><span><a
                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-1-0-0.html"><i></i>赠品</a></span></div>
                <div class="yksh-sortbar-location">商品所在地：
                    <div class="select-layer">
                        <div class="holder"><em nc_type="area_name">不限地区<!-- 所在地 --></em></div>
                        <div class="selected"><a nc_type="area_name">不限地区<!-- 所在地 --></a></div>
                        <i class="direction"></i>
                        <ul class="options">

                            <div class="filter-detailc" id="addressDraw">
                                <dl class="location-hots">
                                    <dt>常用地区</dt>
                                    <dd><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-1-0.html">北京</a></dd>
                                    <dd><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-2-0.html">天津</a></dd>
                                    <dd><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-9-0.html">上海</a></dd>
                                    <dd><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-35-0.html">海外</a>
                                    </dd>
                                </dl>
                                <dl class="location-all">
                                    <dt>省份</dt>
                                    <dd>
                                        <ul>
                                            <li>
                                                <p class="lt">A</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-12-0.html">安徽</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-34-0.html">澳门</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">C</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-22-0.html">重庆</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">F</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-13-0.html">福建</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">G</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-19-0.html">广东</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-28-0.html">甘肃</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-20-0.html">广西</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-24-0.html">贵州</a></span>
                                                </p>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <p class="lt">H</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-21-0.html">海南</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-3-0.html">河北</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-16-0.html">河南</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-8-0.html">黑龙江</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-17-0.html">湖北</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-18-0.html">湖南</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">J</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-10-0.html">江苏</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-14-0.html">江西</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-7-0.html">吉林</a></span>
                                                </p>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <p class="lt">N</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-6-0.html">辽宁</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-5-0.html">内蒙古</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-30-0.html">宁夏</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">Q</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-29-0.html">青海</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">S</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-15-0.html">山东</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-4-0.html">山西</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-27-0.html">陕西</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-23-0.html">四川</a></span>
                                                </p>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <p class="lt">T</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-32-0.html">台湾</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">X</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-26-0.html">西藏</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-31-0.html">新疆</a></span>
                                                    <span><a
                                                            href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-33-0.html">香港</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">Y</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-25-0.html">云南</a></span>
                                                </p>
                                            </li>
                                            <li>
                                                <p class="lt">Z</p>
                                                <p class="lc"><span><a
                                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-11-0.html">浙江</a></span>
                                                </p>
                                            </li>
                                        </ul>
                                    </dd>
                                </dl>
                                <p class="oreder-default"><a
                                        href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-0-0.html">不限地区</a></p>
                            </div>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- 商品列表循环  -->

            <div>
                <style type="text/css">
                    #box {
                        background: #FFF;
                        width: 238px;
                        height: 410px;
                        margin: -390px 0 0 0;
                        display: block;
                        border: solid 4px #D93600;
                        position: absolute;
                        z-index: 999;
                        opacity: .5
                    }

                    .shopMenu {
                        position: fixed;
                        z-index: 1;
                        right: 25%;
                        top: 0;
                    }
                </style>
                <div class="squares" nc_type="current_display_mode">
                    <input type="hidden" id="lockcompare" value="unlock"/>
                    <ul class="list_pic">
                        <c:forEach items="${items}" var="item">
                            <li class="item">
                                <div class="goods-content" nctype_goods=" 101625" nctype_store="1">
                                    <div class="goods-pic"><a href="/item/message/${item.itemId}"
                                                              target="_blank" title=${item.itemName}><img
                                            src=${item.img}
                                            title=${item.itemName} alt=${item.itemName}/></a></div>
                                    <div class="goods-info">
                                        <div class="goods-pic-scroll-show">
                                            <ul>
                                                <li class="selected"><a href="javascript:void(0);"><img
                                                        src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848417870892_60.jpg"/></a>
                                                </li>
                                                <li><a href="javascript:void(0);"><img
                                                        src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848573454995_60.jpg"/></a>
                                                </li>
                                                <li><a href="javascript:void(0);"><img
                                                        src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848571151708_60.jpg"/></a>
                                                </li>
                                                <li><a href="javascript:void(0);"><img
                                                        src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848572287959_60.jpg"/></a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="goods-name"><a href="/item/message/${item.itemId}"
                                                                   target="_blank" title="">${item.itemName}<em></em></a></div>
                                        <div class="goods-price">
                                            <span class="raty" data-score="4"></span>
                                            <em class="sale-price" title="商城价：&yen;8.80">&yen;${item.itemBazaar}</em>
                                            <em class="market-price" title="市场价：&yen;20.00">&yen;${item.itemMembership}</em>


                                        </div>
                                        <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_101625"
                                              data-param='{"gid":"101625"}'><i></i>加入对比</span></div>
                                        <div class="sell-stat">
                                            <ul>
                                                <li><a href="/item/message/${item.itemId}"
                                                       target="_blank" class="status">999999999999999999999999</a>
                                                    <p>商品销量</p>
                                                </li>
                                                <li><a href="https://www.yuekangsong.com/comments-101625-0-0.html"
                                                       target="_blank">999999999999999999999999999999</a>
                                                    <p>用户评论</p>
                                                </li>
                                                <li><em member_id="1">&nbsp;</em></li>
                                            </ul>
                                        </div>
                                        <div class="store"><a href="https://www.yuekangsong.com/shop-1.html"
                                                              title="王鹏林家" class="name">王鹏林家有限公司</a>
                                        </div>
                                        <div class="add-cart">
                                            <a href="javascript:void(0);" nctype="add_cart"
                                               data-param="{goods_id:101625}"><i
                                                    class="icon-shopping-cart"></i>加入购物车</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                        <div class="clear"></div>
                    </ul>
                </div>
                <form id="buynow_form" method="post" action="https://www.yuekangsong.com/index.php" target="_blank">
                    <input id="c" name="c" type="hidden" value="buy"/>
                    <input id="op" name="op" type="hidden" value="buy_step1"/>
                    <input id="goods_id" name="cart_id[]" type="hidden"/>
                </form>
                <script type="text/javascript"
                        src="https://www.yuekangsong.com/data/resource/js/jquery.raty/jquery.raty.min.js"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $('.raty').raty({
                            path: "https://www.yuekangsong.com/data/resource/js/jquery.raty/img",
                            readOnly: true,
                            width: 80,
                            score: function () {
                                return $(this).attr('data-score');
                            }
                        });
                        //初始化对比按钮
                        initCompare();
                    });
                </script>
            </div>
            <div class="tc mt20 mb20">
                <div class="pagination">
                    <ul>
                        <li><span>首页</span></li>
                        <li><span>上一页</span></li>
                        <li><span class="currentpage">1</span></li>
                        <li><span>下一页</span></li>
                        <li><span>末页</span></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- 猜你喜欢 -->
        <div id="guesslike_div" style="width:980px;"></div>
    </div>
    <div class="clear"></div>
</div>
<script src="https://www.yuekangsong.com/data/resource/js/waypoints.js"></script>
<script src="https://www.yuekangsong.com/shop/resource/js/search_category_menu.js"></script>
<script type="text/javascript">
    var defaultSmallGoodsImage = 'shop/common/default_goods_image_240.gif';
    var defaultTinyGoodsImage = 'shop/common/default_goods_image_60.gif';

    $(function () {
        $('#files').tree({
            expanded: 'li:lt(2)'
        });
        //品牌索引过长滚条
        $('#ncBrandlist').perfectScrollbar();
        //浮动导航  waypoints.js
        $('#main-nav-holder').waypoint(function (event, direction) {
            $(this).parent().toggleClass('sticky', direction === "down");
            event.stopPropagation();
        });
        // 单行显示更多
        $('span[nc_type="show"]').click(function () {
            s = $(this).parents('dd').prev().find('li[nc_type="none"]');
            if (s.css('display') == 'none') {
                s.show();
                $(this).html('<i class="icon-angle-up"></i>收起');
            } else {
                s.hide();
                $(this).html('<i class="icon-angle-down"></i>更多');
            }
        });


        // 推荐商品异步显示
        $('div[nctype="booth_goods"]').load('https://www.yuekangsong.com/index.php?c=search&op=get_booth_goods&cate_id=5484', function () {
            $(this).show();
        });
        //浏览历史处滚条
        $('#nchSidebarViewed').perfectScrollbar();

        //猜你喜欢
        $('#guesslike_div').load('https://www.yuekangsong.com/index.php?c=search&op=get_guesslike', function () {
            $(this).show();
        });

        //商品分类推荐
        $('#gc_goods_recommend_div').load('https://www.yuekangsong.com/index.php?c=search&op=get_gc_goods_recommend&cate_id=5484');
    });
</script>
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
                <a target="_blank" href="http://www.yuekangsong.com/data/upload/shop/article/05799717836792755.jpg">药品经营许可证</a>
                <a href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=48">营业执照</a>
                <a target="_blank" href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action">京ICP备15001998号</a>
                <a target="_blank"
                   href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=46">GSP认证证书</a>
            </p>
        </div>
        <div class="am-zz">
            <p>
                <a target="_blank" href="http://www.yuekangsong.com/data/upload/shop/article/05799719527653417.jpg">食品经营许可证</a>
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
                        src="https://www.yuekangsong.com/shop/templates/default/images/police_logo.png"
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

<script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/jquery.cookie.js"></script>
<link href="https://www.yuekangsong.com/data/resource/js/perfect-scrollbar.min.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/qtip/jquery.qtip.min.js"></script>
<link href="https://www.yuekangsong.com/data/resource/js/qtip/jquery.qtip.min.css" rel="stylesheet" type="text/css">
<!-- 对比 -->
<script src="https://www.yuekangsong.com/shop/resource/js/compare.js"></script>
<script type="text/javascript">
    $(function () {
        // Membership card
        $('[nctype="mcard"]').membershipCard({type: 'shop'});
    });
</script>
</body>
</html>
