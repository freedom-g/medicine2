<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta property="wb:webmaster" content="5a5b2e4624798d0f" />
    <title>百姓平安药房网 - 感冒</title>
    <meta name="keywords" content="百姓平安药房网" />
    <meta name="description" content="百姓平安药房网" />
    <meta name="baidu-site-verification" content="wF8dpAI40x" />
    <meta name="copyright" content="yuekangsong Inc. All Rights Reserved">
    <style type="text/css">
        body {
            _behavior: url(https://www.yuekangsong.com/shop/templates/default/css/csshover.htc);
        }
    </style>
    <link href="https://www.yuekangsong.com/shop/templates/default/css/base.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/templates/default/css/home_header.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/templates/default/css/home_login.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/resource/font/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="https://www.yuekangsong.com/shop/resource/font/font-awesome/css/font-awesome-ie7.min.css">
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
        var COOKIE_PRE = 'yuekangsong_';var _CHARSET = 'utf-8';var SITEURL = 'https://www.yuekangsong.com';var SHOP_SITE_URL = 'https://www.yuekangsong.com';var RESOURCE_SITE_URL = 'https://www.yuekangsong.com/data/resource';var RESOURCE_SITE_URL = 'https://www.yuekangsong.com/data/resource';var SHOP_TEMPLATES_URL = 'https://www.yuekangsong.com/shop/templates/default';
    </script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/common.js" charset="utf-8"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery-ui/jquery.ui.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.validation.min.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.masonry.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/dialog/dialog.js" id="dialog_js" charset="utf-8"></script>
    <script type="text/javascript">
        var PRICE_FORMAT = '&yen;%s';
        $(function(){
            //首页左侧分类菜单
            $(".category ul.menu").find("li").each(
                    function() {
                        $(this).hover(
                                function() {
                                    var cat_id = $(this).attr("cat_id");
                                    var menu = $(this).find("div[cat_menu_id='"+cat_id+"']");
                                    menu.show();
                                    $(this).addClass("hover");
                                    menu.masonry({itemSelector: 'dl'});
                                    var menu_height = menu.height();
                                    if (menu_height < 60) menu.height(80);
                                    menu_height = menu.height();
                                    var li_top = $(this).position().top;
                                    if ((li_top > 60) && (menu_height >= li_top)) $(menu).css("top",-li_top+50);
                                    if ((li_top > 150) && (menu_height >= li_top)) $(menu).css("top",-li_top+90);
                                    if ((li_top > 240) && (li_top > menu_height)) $(menu).css("top",menu_height-li_top+90);
                                    if ((li_top > 240) && (li_top - menu_height) < 60) $(menu).css("top",-150);
                                    if (li_top > 300 && (li_top > menu_height)) $(menu).css("top",60-menu_height);
                                    if ((li_top > 40) && (menu_height <= 120)) $(menu).css("top",-5);
                                },
                                function() {
                                    $(this).removeClass("hover");
                                    var cat_id = $(this).attr("cat_id");
                                    $(this).find("div[cat_menu_id='"+cat_id+"']").hide();
                                }
                        );
                    }
            );
            $(".head-user-menu dl").hover(function() {
                        $(this).addClass("hover");
                    },
                    function() {
                        $(this).removeClass("hover");
                    });
            $('.head-user-menu .my-mall').mouseover(function(){// 最近浏览的商品
                load_history_information();
                $(this).unbind('mouseover');
            });
            $('.head-user-menu .my-cart').mouseover(function(){// 运行加载购物车
                load_cart_information();
                $(this).unbind('mouseover');
            });
            $('#button').click(function(){
                if ($('#keyword').val() == '') {
                    return false;
                }
            });

            $('.am-topadd img').css({'width':'100%','height':'auto'});

            $('.am-topadd img').css({'width':'100%','height':'auto'});
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
                <li class="am-rightlist3"><a href="https://www.yuekangsong.com/index.php?c=member_favorites&op=fglist"><img src="https://www.yuekangsong.com/shop/templates/default/images/start.png">

                    <div class="show">我的收藏</div>
                </a></li>
                <li class="am-rightlist4"><a href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&op=list"><img src="https://www.yuekangsong.com/shop/templates/default/images/clock.png">

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
                <li class="am-erweima"><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweima.png">
                    <div class="show_erweima"><em></em><img
                            src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweim.jpg"></div>
                </li>
                <li><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/am-top.png" id="goTopnew"></li>
            </ul>
        </div>

    </div>
</div>

<!--  改版的右侧侧边栏结束-->

<script type="text/javascript">
    //返回顶部
    backTop=function (btnId){
        var btn=document.getElementById(btnId);
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        window.onscroll=set;
        btn.onclick=function (){
            btn.style.opacity="0.5";
            window.onscroll=null;
            this.timer=setInterval(function(){
                scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
                scrollTop-=Math.ceil(scrollTop*0.1);
                if(scrollTop==0) clearInterval(btn.timer,window.onscroll=set);
                if (document.documentElement.scrollTop > 0) document.documentElement.scrollTop=scrollTop;
                if (document.body.scrollTop > 0) document.body.scrollTop=scrollTop;
            },10);
        };
        function set(){
            scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
            btn.style.opacity=scrollTop?'1':"0.5";
        }
    };
    backTop('goTopnew');
</script>
<div class="public-top-layout w">
    <div class="topbar wrapper">
        <div class="am-topbar">
            <div class="am-topbar-left">
                <span><b><a href="https://www.yuekangsong.com/index.php?c=login&op=register">注册</a></b></span><span><a href="https://www.yuekangsong.com/index.php?c=login&op=index">请登录</a></span>
            </div>
            <div class="am-topbar-right">
                <ul>
                    <li>
                        <div class="am-order"><a href="https://www.yuekangsong.com/index.php?c=member_order">我的订单</a></div>
                    </li>
                    <li>
                        <div class="am-buy">手机购物</div>
                    </li>
                    <li>
                        <div class="am-tel">4008-120-102</div>
                    </li>
                    <li>
                        <div class="am-collect"><a href="https://www.yuekangsong.com/index.php?c=member_favorites&op=fglist">我的收藏</a></div>
                    </li>
                    <li>
                        <div class="am-cus"><a href="https://www.yuekangsong.com/article_cate-6.html">客户服务</a></div>
                    </li>
                    <li class="am-last">
                        <div class="am-wx">公众号</div>
                        <div class="am-show-gzh" style="display: none;"><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweim.jpg"></div>
                    </li>
                </ul>

            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    //动画显示边条内容区域
    $(function() {
        $(function() {
            $('#civator').click(function() {
                $('#content-cart').animate({'right': '-250px'});
                $('#content-compare').animate({'right': '-150px'});
                $('#ncToolbar').animate({'right': '-60px'}, 300,
                        function() {
                            $('#ncHideBar').animate({'right': '59px'},	300);
                        });
                $('div[nctype^="bar"]').hide();
            });
            $('#ncHideBar').click(function() {
                $('#ncHideBar').animate({
                            'right': '-79px'
                        },
                        300,
                        function() {
                            $('#content-cart').animate({'right': '-250px'});
                            $('#content-compare').animate({'right': '-250px'});
                            $('#ncToolbar').animate({'right': '0'},300);
                        });
            });
        });
        $("#compare").click(function(){
            if ($("#content-compare").css('right') == '-210px') {
                loadCompare(false);
                $('#content-cart').animate({'right': '-210px'});
                $("#content-compare").animate({right:'50px'});
            } else {
                $(".close").click();
                $(".chat-list").css("display",'none');
            }
        });
        $("#rtoolbar_cart").click(function(){
            if ($("#content-cart").css('right') == '-210px') {
                $('#content-compare').animate({'right': '-210px'});
                $("#content-cart").animate({right:'34px'});
                if (!$("#rtoolbar_cartlist").html()) {
                    $("#rtoolbar_cartlist").load('index.php?c=cart&op=ajax_load&type=html');
                }
            } else {
                $(".close").click();
                $(".chat-list").css("display",'none');
            }
        });
        $(".close").click(function(){
            $(".content-box").animate({right:'-210px'});
        });

        $(".quick-menu dl").hover(function() {
                    $(this).addClass("hover");
                },
                function() {
                    $(this).removeClass("hover");
                });

        // 右侧bar用户信息
        $('div[nctype="a-barUserInfo"]').click(function(){
            $('div[nctype="barUserInfo"]').toggle();
        });
        // 右侧bar登录
        $('div[nctype="a-barLoginBox"]').click(function(){
            $('div[nctype="barLoginBox"]').toggle();
            document.getElementById('codeimage').src='https://www.yuekangsong.com/index.php?c=seccode&op=makecode&nchash=421f03c0&t=' + Math.random();
        });
        $('a[nctype="close-barLoginBox"]').click(function(){
            $('div[nctype="barLoginBox"]').toggle();
        });


        //公众号
        $('.am-topbar-right .am-last').hover(function () {
            $('.am-topbar-right .am-show-gzh').show();
        },function(){

            $('.am-topbar-right .am-show-gzh').hide();

        })
        //公众号结束
    });
</script>

<div class="am-topadd" style="height:0px">    </div>

<!-- PublicHeadLayout Begin -->
<div class="header-wrap am-header-wrap">
    <header class="public-head-layout wrapper">
        <h1 class="site-logo"><a href="https://www.yuekangsong.com"><img src="https://www.yuekangsong.com/data/upload/shop/common/06286872896538652.jpg" class="pngFix"></a></h1>

        <div class="head-search-bar">
            <form action="https://www.yuekangsong.com" method="get" class="search-form" id="top_search_form">
                <input name="c" id="search_c" value="search" type="hidden">
                <input name="keyword" id="keyword" type="text" class="input-text" value="" maxlength="60" x-webkit-speech lang="zh-CN" onwebkitspeechchange="foo()" placeholder="请输入您要搜索的商品关键字" x-webkit-grammar="builtin:search" />
                <input type="submit" id="button" value="搜索" class="input-submit">
            </form>
            <div class="keyword">
                <ul>
                    <li><a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E5%85%AD%E5%91%B3%E5%9C%B0%E9%BB%84%E4%B8%B8">六味地黄丸</a></li>
                    <li><a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E4%B9%9D%E8%8A%9D%E5%A0%82%E8%83%96%E5%A4%A7%E6%B5%B7%E6%B6%A6%E5%96%89%E7%B3%96">九芝堂胖大海润喉糖</a></li>
                    <li><a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E5%9B%9B%E7%89%A9%E8%83%B6%E5%9B%8A">四物胶囊</a></li>
                    <li><a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E6%84%9F%E5%86%92%E6%B8%85%E7%83%AD%E9%A2%97%E7%B2%92">感冒清热颗粒</a></li>
                    <li><a href="https://www.yuekangsong.com/index.php?c=search&op=index&keyword=%E5%92%B3%E7%89%B9%E7%81%B5%E7%89%87">咳特灵片</a></li>
                </ul>
            </div>
        </div>
        <div class="head-user-menu">
            <div class="am-ewm"><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/ykewm.jpg"></div>
            <dl class="my-mall" style="display: none;">
                <dt><span class="ico"></span>我的商城<i class="arrow"></i></dt>
                <dd>
                    <div class="sub-title">
                        <h4>                                                </h4>
                        <a href="https://www.yuekangsong.com/index.php?c=member&op=home" class="arrow">我的用户中心<i></i></a></div>
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
                                                      src="https://www.yuekangsong.com/shop/templates/default/images/loading.gif"/></li>
                        </ul>
                    </div>
                </dd>
            </dl>
            <dl class="my-cart">
                <div class="addcart-goods-num">0</div>
                <dt onclick="javascript:go('https://www.yuekangsong.com/index.php?c=cart')"><span class="ico"></span>我的购物车<i class="arrow" style="display: none;"></i></dt>

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
                alert('111');
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
            <li><a href="https://www.yuekangsong.com" >首页</a></li>
            <li><a href="https://www.yuekangsong.com/brand.html" > 品牌</a></li>
            <li><a href="https://www.yuekangsong.com/integral.html" > 积分中心</a></li>
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
<div class="yksh-container wrapper" >
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
                                    <li class="tree-parent tree-parent-collapsed"><i></i><a href="http://localhost:8081/cat/searchs/${sanid}"  class="selected">${san}</a></li>
                                    <c:forEach items="${ji}" var="jihe">
                                        <li class="tree-parent tree-parent-collapsed"><i></i><a href="http://localhost:8081/cat/searchs/${jihe.url}" >${jihe.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- S 推荐展位 -->
        <div nctype="booth_goods" class="yksh-module" style="display:none;"> </div>
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
                <a href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&op=list" class="yksh-sidebar-all-viewed">全部浏览历史</a></div>
        </div>

    </div>
    <div class="right">
        <!-- 分类下的推荐商品 -->
        <div id="gc_goods_recommend_div" style="width:980px;"></div>

        <div class="shop_con_list" id="main-nav-holder">
            <nav class="sort-bar" id="main-nav">
                <div class="pagination"><ul><li><span>上一页</span></li><li><span>下一页</span></li></ul> </div>
                <div class="yksh-all-category">
                    <div class="all-category">
                        <div class="title"><i></i>
                            <h3><a href="https://www.yuekangsong.com/category.html">全部分类</a></h3>
                        </div>
                        <div class="category new_category">
                            <ul class="menu">
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5483.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5483-0-0-0-0-0-0-0-0.html">家庭常备</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-0-0.html">感冒</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5485-0-0-0-0-0-0-0-0.html">流行性感冒</a>
                                                    <a href="https://www.yuekangsong.com/cate-5486-0-0-0-0-0-0-0-0.html">普通感冒</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5487-0-0-0-0-0-0-0-0.html">皮肤护理</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5492-0-0-0-0-0-0-0-0.html">脚气/手足癣</a>
                                                    <a href="https://www.yuekangsong.com/cate-5493-0-0-0-0-0-0-0-0.html">脱发</a>
                                                    <a href="https://www.yuekangsong.com/cate-5494-0-0-0-0-0-0-0-0.html">创可贴</a>
                                                    <a href="https://www.yuekangsong.com/cate-5495-0-0-0-0-0-0-0-0.html">白发</a>
                                                    <a href="https://www.yuekangsong.com/cate-5496-0-0-0-0-0-0-0-0.html">皮肤瘙痒</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5488-0-0-0-0-0-0-0-0.html">清热解毒类</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5497-0-0-0-0-0-0-0-0.html">清热解毒</a>
                                                    <a href="https://www.yuekangsong.com/cate-5498-0-0-0-0-0-0-0-0.html">清热泻火凉血燥湿</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5489-0-0-0-0-0-0-0-0.html">清热消炎</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5499-0-0-0-0-0-0-0-0.html">清热解毒</a>
                                                    <a href="https://www.yuekangsong.com/cate-5500-0-0-0-0-0-0-0-0.html">咳嗽</a>
                                                    <a href="https://www.yuekangsong.com/cate-5501-0-0-0-0-0-0-0-0.html">咽炎/扁桃体炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5502-0-0-0-0-0-0-0-0.html">止咳化痰</a>
                                                    <a href="https://www.yuekangsong.com/cate-5503-0-0-0-0-0-0-0-0.html">口腔溃疡及咽喉用药</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5490-0-0-0-0-0-0-0-0.html">胃肠用药</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5504-0-0-0-0-0-0-0-0.html">便秘</a>
                                                    <a href="https://www.yuekangsong.com/cate-5505-0-0-0-0-0-0-0-0.html">胃肠溃疡</a>
                                                    <a href="https://www.yuekangsong.com/cate-5506-0-0-0-0-0-0-0-0.html">消化不良</a>
                                                    <a href="https://www.yuekangsong.com/cate-5507-0-0-0-0-0-0-0-0.html">痔疮</a>
                                                    <a href="https://www.yuekangsong.com/cate-5508-0-0-0-0-0-0-0-0.html">腹泻</a>
                                                    <a href="https://www.yuekangsong.com/cate-5509-0-0-0-0-0-0-0-0.html">止痛消炎活血</a>
                                                    <a href="https://www.yuekangsong.com/cate-5516-0-0-0-0-0-0-0-0.html">蛔虫病</a>
                                                    <a href="https://www.yuekangsong.com/cate-5694-0-0-0-0-0-0-0-0.html">胃痛胃胀</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5491-0-0-0-0-0-0-0-0.html">眼耳口鼻</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5510-0-0-0-0-0-0-0-0.html">视疲劳</a>
                                                    <a href="https://www.yuekangsong.com/cate-5511-0-0-0-0-0-0-0-0.html">口腔溃疡</a>
                                                    <a href="https://www.yuekangsong.com/cate-5512-0-0-0-0-0-0-0-0.html">过敏性鼻炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5513-0-0-0-0-0-0-0-0.html">头晕耳鸣</a>
                                                    <a href="https://www.yuekangsong.com/cate-5514-0-0-0-0-0-0-0-0.html">鼻炎鼻窦炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5515-0-0-0-0-0-0-0-0.html">牙周炎/牙龈炎</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5555.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5555-0-0-0-0-0-0-0-0.html">中西药品</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5556-0-0-0-0-0-0-0-0.html">减肥</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5557-0-0-0-0-0-0-0-0.html">减肥瘦身</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5558-0-0-0-0-0-0-0-0.html">维矿物质</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5559-0-0-0-0-0-0-0-0.html">维生素c</a>
                                                    <a href="https://www.yuekangsong.com/cate-5560-0-0-0-0-0-0-0-0.html">维生素AD</a>
                                                    <a href="https://www.yuekangsong.com/cate-5561-0-0-0-0-0-0-0-0.html">锌</a>
                                                    <a href="https://www.yuekangsong.com/cate-5562-0-0-0-0-0-0-0-0.html">碳酸钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5563-0-0-0-0-0-0-0-0.html">维生素AD/鱼肝油</a>
                                                    <a href="https://www.yuekangsong.com/cate-5564-0-0-0-0-0-0-0-0.html">复合钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5565-0-0-0-0-0-0-0-0.html">复合维生素</a>
                                                    <a href="https://www.yuekangsong.com/cate-5695-0-0-0-0-0-0-0-0.html">复合矿物质</a>
                                                    <a href="https://www.yuekangsong.com/cate-5701-0-0-0-0-0-0-0-0.html">维矿物质</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5568-0-0-0-0-0-0-0-0.html">滋补保健</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5571-0-0-0-0-0-0-0-0.html">滋阴补肾</a>
                                                    <a href="https://www.yuekangsong.com/cate-5574-0-0-0-0-0-0-0-0.html">滋肾养肝</a>
                                                    <a href="https://www.yuekangsong.com/cate-5575-0-0-0-0-0-0-0-0.html">阿胶类</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5569-0-0-0-0-0-0-0-0.html">叶酸</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5572-0-0-0-0-0-0-0-0.html">叶酸片</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5570-0-0-0-0-0-0-0-0.html">营养补益</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5573-0-0-0-0-0-0-0-0.html">滋补肝肾</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5737-0-0-0-0-0-0-0-0.html">男科/泌尿科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5738-0-0-0-0-0-0-0-0.html">风湿骨科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5739-0-0-0-0-0-0-0-0.html">神经/精神科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5740-0-0-0-0-0-0-0-0.html">心血管</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5741-0-0-0-0-0-0-0-0.html">呼吸消化科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5742-0-0-0-0-0-0-0-0.html">皮肤性病科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5743-0-0-0-0-0-0-0-0.html">妇产科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5744-0-0-0-0-0-0-0-0.html">儿童用药</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5576.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5576-0-0-0-0-0-0-0-0.html">专科用药</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5577-0-0-0-0-0-0-0-0.html">风湿骨科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5578-0-0-0-0-0-0-0-0.html">止痛消炎活血</a>
                                                    <a href="https://www.yuekangsong.com/cate-5579-0-0-0-0-0-0-0-0.html">跌打骨伤</a>
                                                    <a href="https://www.yuekangsong.com/cate-5580-0-0-0-0-0-0-0-0.html">活血化瘀</a>
                                                    <a href="https://www.yuekangsong.com/cate-5581-0-0-0-0-0-0-0-0.html">颈椎病</a>
                                                    <a href="https://www.yuekangsong.com/cate-5582-0-0-0-0-0-0-0-0.html">风湿/类风湿</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5583-0-0-0-0-0-0-0-0.html">肝胆胃肠</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5584-0-0-0-0-0-0-0-0.html">肠胃炎止泻药</a>
                                                    <a href="https://www.yuekangsong.com/cate-5585-0-0-0-0-0-0-0-0.html">胆道疾病</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5586-0-0-0-0-0-0-0-0.html">解热镇痛</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5587-0-0-0-0-0-0-0-0.html">解热镇痛药</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5588-0-0-0-0-0-0-0-0.html">皮肤科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5589-0-0-0-0-0-0-0-0.html">痤疮</a>
                                                    <a href="https://www.yuekangsong.com/cate-5590-0-0-0-0-0-0-0-0.html">过敏性鼻炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5591-0-0-0-0-0-0-0-0.html">狐臭腋臭</a>
                                                    <a href="https://www.yuekangsong.com/cate-5592-0-0-0-0-0-0-0-0.html">灰指甲</a>
                                                    <a href="https://www.yuekangsong.com/cate-5593-0-0-0-0-0-0-0-0.html">疱疹</a>
                                                    <a href="https://www.yuekangsong.com/cate-5594-0-0-0-0-0-0-0-0.html">皮肤湿疹</a>
                                                    <a href="https://www.yuekangsong.com/cate-5595-0-0-0-0-0-0-0-0.html">皮肤外伤</a>
                                                    <a href="https://www.yuekangsong.com/cate-5596-0-0-0-0-0-0-0-0.html">皮肤癣症</a>
                                                    <a href="https://www.yuekangsong.com/cate-5598-0-0-0-0-0-0-0-0.html">皮肤炎症</a>
                                                    <a href="https://www.yuekangsong.com/cate-5600-0-0-0-0-0-0-0-0.html">驱蚊防暑</a>
                                                    <a href="https://www.yuekangsong.com/cate-5601-0-0-0-0-0-0-0-0.html">烧烫创伤</a>
                                                    <a href="https://www.yuekangsong.com/cate-5602-0-0-0-0-0-0-0-0.html">蚊虫叮咬</a>
                                                    <a href="https://www.yuekangsong.com/cate-5603-0-0-0-0-0-0-0-0.html">荨麻疹</a>
                                                    <a href="https://www.yuekangsong.com/cate-5734-0-0-0-0-0-0-0-0.html">足廯</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5605-0-0-0-0-0-0-0-0.html">缺铁性贫血</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5606-0-0-0-0-0-0-0-0.html">缺铁性贫血</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5607-0-0-0-0-0-0-0-0.html">神经/精神科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5608-0-0-0-0-0-0-0-0.html">失眠</a>
                                                    <a href="https://www.yuekangsong.com/cate-5609-0-0-0-0-0-0-0-0.html">晕车</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5610-0-0-0-0-0-0-0-0.html">心脑血管科</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5611-0-0-0-0-0-0-0-0.html">冠心病</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5612-0-0-0-0-0-0-0-0.html">眼耳口鼻</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5613-0-0-0-0-0-0-0-0.html">过敏性鼻炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5728-0-0-0-0-0-0-0-0.html">结膜炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5729-0-0-0-0-0-0-0-0.html">耳鸣耳聋</a>
                                                    <a href="https://www.yuekangsong.com/cate-5730-0-0-0-0-0-0-0-0.html">复发性口疮</a>
                                                    <a href="https://www.yuekangsong.com/cate-5733-0-0-0-0-0-0-0-0.html">滴眼液</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5614-0-0-0-0-0-0-0-0.html">营养补益</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5615-0-0-0-0-0-0-0-0.html">补气补血</a>
                                                    <a href="https://www.yuekangsong.com/cate-5736-0-0-0-0-0-0-0-0.html">补益安神</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5616-0-0-0-0-0-0-0-0.html">止痛</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5617-0-0-0-0-0-0-0-0.html">疼痛用药</a>
                                                    <a href="https://www.yuekangsong.com/cate-5732-0-0-0-0-0-0-0-0.html">咽痛</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5618-0-0-0-0-0-0-0-0.html">中药饮片</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5696-0-0-0-0-0-0-0-0.html">活血化瘀</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5619-0-0-0-0-0-0-0-0.html">滋补免疫类</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5697-0-0-0-0-0-0-0-0.html">益气补血类</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5473.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5473-0-0-0-0-0-0-0-0.html">妇科用药</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5474-0-0-0-0-0-0-0-0.html">妇科疾病</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5475-0-0-0-0-0-0-0-0.html">阴道炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5476-0-0-0-0-0-0-0-0.html">避孕</a>
                                                    <a href="https://www.yuekangsong.com/cate-5477-0-0-0-0-0-0-0-0.html">痛经</a>
                                                    <a href="https://www.yuekangsong.com/cate-5478-0-0-0-0-0-0-0-0.html">月经不调</a>
                                                    <a href="https://www.yuekangsong.com/cate-5479-0-0-0-0-0-0-0-0.html">白带异常</a>
                                                    <a href="https://www.yuekangsong.com/cate-5480-0-0-0-0-0-0-0-0.html">更年期</a>
                                                    <a href="https://www.yuekangsong.com/cate-5481-0-0-0-0-0-0-0-0.html">盆腔炎</a>
                                                    <a href="https://www.yuekangsong.com/cate-5482-0-0-0-0-0-0-0-0.html">滋阴降火</a>
                                                    <a href="https://www.yuekangsong.com/cate-5689-0-0-0-0-0-0-0-0.html">过敏</a>
                                                    <a href="https://www.yuekangsong.com/cate-5690-0-0-0-0-0-0-0-0.html">宫颈炎</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5691-0-0-0-0-0-0-0-0.html">滋补保健</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5693-0-0-0-0-0-0-0-0.html">滋阴降火</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5699-0-0-0-0-0-0-0-0.html">消字号</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5700-0-0-0-0-0-0-0-0.html">阴道炎</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5517.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5517-0-0-0-0-0-0-0-0.html">男科用药</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5518-0-0-0-0-0-0-0-0.html">滋补保健</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5519-0-0-0-0-0-0-0-0.html">温肾壮阳</a>
                                                    <a href="https://www.yuekangsong.com/cate-5520-0-0-0-0-0-0-0-0.html">滋肾养肺</a>
                                                    <a href="https://www.yuekangsong.com/cate-5521-0-0-0-0-0-0-0-0.html">阳痿早泄</a>
                                                    <a href="https://www.yuekangsong.com/cate-5522-0-0-0-0-0-0-0-0.html">补肾固齿</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5465.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5465-0-0-0-0-0-0-0-0.html">儿童用药</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5468-0-0-0-0-0-0-0-0.html">儿童用药</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5469-0-0-0-0-0-0-0-0.html">小儿咳嗽</a>
                                                    <a href="https://www.yuekangsong.com/cate-5470-0-0-0-0-0-0-0-0.html">小儿感冒</a>
                                                    <a href="https://www.yuekangsong.com/cate-5471-0-0-0-0-0-0-0-0.html">小儿厌食</a>
                                                    <a href="https://www.yuekangsong.com/cate-5472-0-0-0-0-0-0-0-0.html">小儿腹泻</a>
                                                    <a href="https://www.yuekangsong.com/cate-5688-0-0-0-0-0-0-0-0.html">清热解毒</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5620.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5620-0-0-0-0-0-0-0-0.html">滋补保健</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5621-0-0-0-0-0-0-0-0.html">改善机能</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5622-0-0-0-0-0-0-0-0.html">调节三高</a>
                                                    <a href="https://www.yuekangsong.com/cate-5623-0-0-0-0-0-0-0-0.html">改善视力</a>
                                                    <a href="https://www.yuekangsong.com/cate-5624-0-0-0-0-0-0-0-0.html">调节免疫</a>
                                                    <a href="https://www.yuekangsong.com/cate-5632-0-0-0-0-0-0-0-0.html">调节免疫、抵抗疲劳、耐高原反应</a>
                                                    <a href="https://www.yuekangsong.com/cate-5633-0-0-0-0-0-0-0-0.html">解酒护肝</a>
                                                    <a href="https://www.yuekangsong.com/cate-5634-0-0-0-0-0-0-0-0.html">戒烟解酒护肝</a>
                                                    <a href="https://www.yuekangsong.com/cate-5635-0-0-0-0-0-0-0-0.html">调节睡眠改善记忆</a>
                                                    <a href="https://www.yuekangsong.com/cate-5636-0-0-0-0-0-0-0-0.html">补肾壮阳</a>
                                                    <a href="https://www.yuekangsong.com/cate-5637-0-0-0-0-0-0-0-0.html">抵抗疲劳</a>
                                                    <a href="https://www.yuekangsong.com/cate-5638-0-0-0-0-0-0-0-0.html">增强免疫力</a>
                                                    <a href="https://www.yuekangsong.com/cate-5639-0-0-0-0-0-0-0-0.html">抗疲劳</a>
                                                    <a href="https://www.yuekangsong.com/cate-5640-0-0-0-0-0-0-0-0.html">调节睡眠改善记忆</a>
                                                    <a href="https://www.yuekangsong.com/cate-5731-0-0-0-0-0-0-0-0.html">养阴生津</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5625-0-0-0-0-0-0-0-0.html">维矿物质</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5626-0-0-0-0-0-0-0-0.html">维生素C</a>
                                                    <a href="https://www.yuekangsong.com/cate-5646-0-0-0-0-0-0-0-0.html">复合维生素</a>
                                                    <a href="https://www.yuekangsong.com/cate-5647-0-0-0-0-0-0-0-0.html">铁</a>
                                                    <a href="https://www.yuekangsong.com/cate-5648-0-0-0-0-0-0-0-0.html">锌</a>
                                                    <a href="https://www.yuekangsong.com/cate-5649-0-0-0-0-0-0-0-0.html">碳酸钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5650-0-0-0-0-0-0-0-0.html">维生素B</a>
                                                    <a href="https://www.yuekangsong.com/cate-5651-0-0-0-0-0-0-0-0.html">复合矿物质</a>
                                                    <a href="https://www.yuekangsong.com/cate-5652-0-0-0-0-0-0-0-0.html">成人钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5653-0-0-0-0-0-0-0-0.html">复合钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5654-0-0-0-0-0-0-0-0.html">维生素E</a>
                                                    <a href="https://www.yuekangsong.com/cate-5655-0-0-0-0-0-0-0-0.html">小儿钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5656-0-0-0-0-0-0-0-0.html">液体钙</a>
                                                    <a href="https://www.yuekangsong.com/cate-5657-0-0-0-0-0-0-0-0.html">调节免疫、抵抗疲劳、耐高原反应</a>
                                                    <a href="https://www.yuekangsong.com/cate-5658-0-0-0-0-0-0-0-0.html">改善视力</a>
                                                    <a href="https://www.yuekangsong.com/cate-5659-0-0-0-0-0-0-0-0.html">孕妇用补充维生矿物质</a>
                                                    <a href="https://www.yuekangsong.com/cate-5660-0-0-0-0-0-0-0-0.html">美容养颜</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5641-0-0-0-0-0-0-0-0.html">贵细滋补品</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5642-0-0-0-0-0-0-0-0.html">燕窝</a>
                                                    <a href="https://www.yuekangsong.com/cate-5643-0-0-0-0-0-0-0-0.html">冬虫夏草</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5644-0-0-0-0-0-0-0-0.html">减肥美颜</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5645-0-0-0-0-0-0-0-0.html">减肥茶</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5661-0-0-0-0-0-0-0-0.html">休闲零食</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5662-0-0-0-0-0-0-0-0.html">阿胶类</a>
                                                    <a href="https://www.yuekangsong.com/cate-5663-0-0-0-0-0-0-0-0.html">润喉糖</a>
                                                    <a href="https://www.yuekangsong.com/cate-5664-0-0-0-0-0-0-0-0.html">红糖黑糖</a>
                                                    <a href="https://www.yuekangsong.com/cate-5665-0-0-0-0-0-0-0-0.html">枣类</a>
                                                    <a href="https://www.yuekangsong.com/cate-5666-0-0-0-0-0-0-0-0.html">蜂产品</a>
                                                    <a href="https://www.yuekangsong.com/cate-5667-0-0-0-0-0-0-0-0.html">增强免疫力及补充维矿物质</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5670-0-0-0-0-0-0-0-0.html">养生茶饮</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5671-0-0-0-0-0-0-0-0.html">养颜花茶</a>
                                                    <a href="https://www.yuekangsong.com/cate-5672-0-0-0-0-0-0-0-0.html">传统汤料</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5673-0-0-0-0-0-0-0-0.html">叶酸</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5674-0-0-0-0-0-0-0-0.html">孕妇用补充维生矿物质</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5675-0-0-0-0-0-0-0-0.html">营养调节</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5676-0-0-0-0-0-0-0-0.html">胶原蛋白类</a>
                                                    <a href="https://www.yuekangsong.com/cate-5677-0-0-0-0-0-0-0-0.html">褪黑素</a>
                                                    <a href="https://www.yuekangsong.com/cate-5678-0-0-0-0-0-0-0-0.html">氨基酸类</a>
                                                    <a href="https://www.yuekangsong.com/cate-5679-0-0-0-0-0-0-0-0.html">植物提取物</a>
                                                    <a href="https://www.yuekangsong.com/cate-5680-0-0-0-0-0-0-0-0.html">膳食纤维素</a>
                                                    <a href="https://www.yuekangsong.com/cate-5681-0-0-0-0-0-0-0-0.html">MACA玛卡</a>
                                                    <a href="https://www.yuekangsong.com/cate-5682-0-0-0-0-0-0-0-0.html">小麦胚芽油</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5683-0-0-0-0-0-0-0-0.html">中药饮片</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5684-0-0-0-0-0-0-0-0.html">传统汤料</a>
                                                    <a href="https://www.yuekangsong.com/cate-5686-0-0-0-0-0-0-0-0.html">珍珠</a>
                                                    <a href="https://www.yuekangsong.com/cate-5687-0-0-0-0-0-0-0-0.html">洋参/花旗参</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5460.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5460-0-0-0-0-0-0-0-0.html">成人用品</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5461-0-0-0-0-0-0-0-0.html">计生用品</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5463-0-0-0-0-0-0-0-0.html">避孕套</a>
                                                    <a href="https://www.yuekangsong.com/cate-5464-0-0-0-0-0-0-0-0.html">验孕检测</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5466-0-0-0-0-0-0-0-0.html">润滑延时</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5467-0-0-0-0-0-0-0-0.html">润滑液</a>
                                                    <a href="https://www.yuekangsong.com/cate-5723-0-0-0-0-0-0-0-0.html">润滑剂</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5705-0-0-0-0-0-0-0-0.html">女用器具</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5708-0-0-0-0-0-0-0-0.html">G点后庭</a>
                                                    <a href="https://www.yuekangsong.com/cate-5709-0-0-0-0-0-0-0-0.html">丰乳挑逗</a>
                                                    <a href="https://www.yuekangsong.com/cate-5710-0-0-0-0-0-0-0-0.html">阴蒂刺激</a>
                                                    <a href="https://www.yuekangsong.com/cate-5711-0-0-0-0-0-0-0-0.html">振动棒</a>
                                                    <a href="https://www.yuekangsong.com/cate-5712-0-0-0-0-0-0-0-0.html">其他女用</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5706-0-0-0-0-0-0-0-0.html">男用器具</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5713-0-0-0-0-0-0-0-0.html">仿真乳房</a>
                                                    <a href="https://www.yuekangsong.com/cate-5714-0-0-0-0-0-0-0-0.html">简单便携</a>
                                                    <a href="https://www.yuekangsong.com/cate-5715-0-0-0-0-0-0-0-0.html">阴臀倒模</a>
                                                    <a href="https://www.yuekangsong.com/cate-5716-0-0-0-0-0-0-0-0.html">性玩偶</a>
                                                    <a href="https://www.yuekangsong.com/cate-5717-0-0-0-0-0-0-0-0.html">其他男用</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5707-0-0-0-0-0-0-0-0.html">情趣用品</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5718-0-0-0-0-0-0-0-0.html">情趣跳蛋</a>
                                                    <a href="https://www.yuekangsong.com/cate-5719-0-0-0-0-0-0-0-0.html">延时套环</a>
                                                    <a href="https://www.yuekangsong.com/cate-5720-0-0-0-0-0-0-0-0.html">调情香水</a>
                                                    <a href="https://www.yuekangsong.com/cate-5721-0-0-0-0-0-0-0-0.html">另类玩具</a>
                                                    <a href="https://www.yuekangsong.com/cate-5722-0-0-0-0-0-0-0-0.html">其他用品</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                                <li>
                                    <div class="class sprite01">
                                        <span class="am-goods-ionic"><img src="https://www.yuekangsong.com/data/upload/shop/common/category-pic-5539.jpg"></span>
                                        <h4><a href="https://www.yuekangsong.com/cate-5539-0-0-0-0-0-0-0-0.html">医疗器械</a></h4>
                                    </div>
                                    <div class="sub-class">
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5540-0-0-0-0-0-0-0-0.html">家庭常备</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5544-0-0-0-0-0-0-0-0.html">口罩</a>
                                                    <a href="https://www.yuekangsong.com/cate-5545-0-0-0-0-0-0-0-0.html">发热贴</a>
                                                    <a href="https://www.yuekangsong.com/cate-5550-0-0-0-0-0-0-0-0.html">退热贴</a>
                                                    <a href="https://www.yuekangsong.com/cate-5551-0-0-0-0-0-0-0-0.html">洗鼻器</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5541-0-0-0-0-0-0-0-0.html">康复理疗仪</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5546-0-0-0-0-0-0-0-0.html">电磁治疗仪</a>
                                                    <a href="https://www.yuekangsong.com/cate-5726-0-0-0-0-0-0-0-0.html">颈椎治疗仪</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5542-0-0-0-0-0-0-0-0.html">血糖仪</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5552-0-0-0-0-0-0-0-0.html">血糖试纸</a>
                                                    <a href="https://www.yuekangsong.com/cate-5553-0-0-0-0-0-0-0-0.html">血糖仪单机</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5543-0-0-0-0-0-0-0-0.html">治疗器材</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5554-0-0-0-0-0-0-0-0.html">洗鼻器</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5702-0-0-0-0-0-0-0-0.html">雾化器</a>
                                                </div>
                                                <div class="am-sub-right">
                                                    <a href="https://www.yuekangsong.com/cate-5724-0-0-0-0-0-0-0-0.html">雾化器</a>
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5725-0-0-0-0-0-0-0-0.html">其他</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div class="am-sublist">

                                            <div class="am-hot-word-line">
                                                <div class="am-sub-left"><span class="arrow"></span><a href="https://www.yuekangsong.com/cate-5727-0-0-0-0-0-0-0-0.html">血压计</a>
                                                </div>
                                                <div class="am-sub-right">
                                                </div>
                                                <div class="clear"></div>
                                            </div>

                                        </div>

                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="yksh-sortbar-array"> 排序方式：
                    <ul>
                        <li class="selected"><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-0-0.html"  title="默认排序">默认</a></li>
                        <li ><a href="https://www.yuekangsong.com/cate-5484-0-0-1-2-0-0-0-0.html"  title="点击按销量从高到低排序">销量<i></i></a></li>
                        <li ><a href="https://www.yuekangsong.com/cate-5484-0-0-2-2-0-0-0-0.html"  title="点击按人气从高到低排序">人气<i></i></a></li>
                        <li ><a href="https://www.yuekangsong.com/cate-5484-0-0-3-2-0-0-0-0.html"  title="点击按价格从高到低排序">价格<i></i></a></li>
                    </ul>
                </div>
                <div class="yksh-sortbar-owner"><span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-1-0-0-0.html" ><i></i>平台自营</a></span></div>
                <div class="yksh-sortbar-owner"><span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-1-0-0.html" ><i></i>赠品</a></span></div>
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
                                    <dd><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-35-0.html">海外</a></dd>
                                </dl>
                                <dl class="location-all">
                                    <dt>省份</dt>
                                    <dd>
                                        <ul>
                                            <li>
                                                <p class="lt">A</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-12-0.html">安徽</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-34-0.html">澳门</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">C</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-22-0.html">重庆</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">F</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-13-0.html">福建</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">G</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-19-0.html">广东</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-28-0.html">甘肃</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-20-0.html">广西</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-24-0.html">贵州</a></span> </p>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <p class="lt">H</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-21-0.html">海南</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-3-0.html">河北</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-16-0.html">河南</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-8-0.html">黑龙江</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-17-0.html">湖北</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-18-0.html">湖南</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">J</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-10-0.html">江苏</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-14-0.html">江西</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-7-0.html">吉林</a></span> </p>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <p class="lt">N</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-6-0.html">辽宁</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-5-0.html">内蒙古</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-30-0.html">宁夏</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">Q</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-29-0.html">青海</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">S</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-15-0.html">山东</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-4-0.html">山西</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-27-0.html">陕西</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-23-0.html">四川</a></span> </p>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <p class="lt">T</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-32-0.html">台湾</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">X</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-26-0.html">西藏</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-31-0.html">新疆</a></span> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-33-0.html">香港</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">Y</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-25-0.html">云南</a></span> </p>
                                            </li>
                                            <li>
                                                <p class="lt">Z</p>
                                                <p class="lc"> <span><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-11-0.html">浙江</a></span> </p>
                                            </li>
                                        </ul>
                                    </dd>
                                </dl>
                                <p class="oreder-default"><a href="https://www.yuekangsong.com/cate-5484-0-0-0-0-0-0-0-0.html">不限地区</a></p>
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
                    <input type="hidden" id="lockcompare" value="unlock" />
                    <ul class="list_pic">
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 101625" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-101625.html" target="_blank" title="藿香正气丸"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848417870892_240.jpg" title="藿香正气丸" alt="藿香正气丸" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848417870892_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848573454995_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848571151708_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05925848572287959_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-101625.html" target="_blank" title="">藿香正气丸<em></em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;8.80">&yen;8.80</em>
                                        <em class="market-price" title="市场价：&yen;20.00">&yen;20.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_101625" data-param='{"gid":"101625"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-101625.html#ncGoodsRate" target="_blank" class="status">0</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-101625-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="北京源通百姓平安大药房有限公司" class="name">北京源通百姓平安大药房有限公司</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:101625}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 101527" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-101527.html" target="_blank" title="复方金银花颗粒"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05506701091448339_240.jpg" title="复方金银花颗粒" alt="复方金银花颗粒" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05506701091448339_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05506701506794525_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05506701532532536_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05506701559374862_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05506701581083719_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-101527.html" target="_blank" title="">复方金银花颗粒<em></em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;18.00">&yen;18.00</em>
                                        <em class="market-price" title="市场价：&yen;28.00">&yen;28.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_101527" data-param='{"gid":"101527"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-101527.html#ncGoodsRate" target="_blank" class="status">3</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-101527-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="北京源通百姓平安大药房有限公司" class="name">北京源通百姓平安大药房有限公司</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:101527}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 101132" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-101132.html" target="_blank" title="连花清瘟胶囊"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05204363444021482_240.jpg" title="连花清瘟胶囊" alt="连花清瘟胶囊" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05204363444021482_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05204363917283775_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05204363932999150_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05204363882840749_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05204363897976866_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-101132.html" target="_blank" title="">连花清瘟胶囊<em></em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;18.50">&yen;18.50</em>
                                        <em class="market-price" title="市场价：&yen;21.90">&yen;21.90</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_101132" data-param='{"gid":"101132"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-101132.html#ncGoodsRate" target="_blank" class="status">62</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-101132-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" onclick="login_dialog();"><i class="icon-bullhorn"></i>到货通知</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 101069" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-101069.html" target="_blank" title="B藿香正气口服液"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05198508799806751_240.jpg" title="B藿香正气口服液" alt="B藿香正气口服液" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05198508799806751_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05198509337892085_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05198509360430547_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05198509382764801_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-101069.html" target="_blank" title="太极牌藿香正气口服液 +送抽纸">B藿香正气口服液<em>太极牌藿香正气口服液 +送抽纸</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;19.80">&yen;19.80</em>
                                        <em class="market-price" title="市场价：&yen;25.80">&yen;25.80</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_101069" data-param='{"gid":"101069"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-101069.html#ncGoodsRate" target="_blank" class="status">162</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-101069-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="北京源通百姓平安大药房有限公司" class="name">北京源通百姓平安大药房有限公司</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:101069}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100831" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100831.html" target="_blank" title="银翘解毒片"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149941317463962_240.png" title="银翘解毒片" alt="银翘解毒片" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149941317463962_60.png"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149941687341777_60.png"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149941716317660_60.png"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100831.html" target="_blank" title="北京同仁堂银翘解毒片">银翘解毒片<em>北京同仁堂银翘解毒片</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;15.00">&yen;15.00</em>
                                        <em class="market-price" title="市场价：&yen;18.00">&yen;18.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100831" data-param='{"gid":"100831"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100831.html#ncGoodsRate" target="_blank" class="status">139</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100831-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:100831}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100801" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100801.html" target="_blank" title="复方板蓝根颗粒"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05246844693912078_240.jpg" title="复方板蓝根颗粒" alt="复方板蓝根颗粒" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05246844693912078_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05246844712693840_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100801.html" target="_blank" title="白云山复方板蓝根颗粒">复方板蓝根颗粒<em>白云山复方板蓝根颗粒</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;19.00">&yen;19.00</em>
                                        <em class="market-price" title="市场价：&yen;23.00">&yen;23.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100801" data-param='{"gid":"100801"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100801.html#ncGoodsRate" target="_blank" class="status">172</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100801-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:100801}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100794" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100794.html" target="_blank" title="感冒灵胶囊"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149191816067126_240.jpg" title="感冒灵胶囊" alt="感冒灵胶囊" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149191816067126_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149192143700168_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149192160610497_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149192179042972_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149192199343684_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100794.html" target="_blank" title="三九感冒灵胶囊">感冒灵胶囊<em>三九感冒灵胶囊</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;18.00">&yen;18.00</em>
                                        <em class="market-price" title="市场价：&yen;22.00">&yen;22.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100794" data-param='{"gid":"100794"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100794.html#ncGoodsRate" target="_blank" class="status">98</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100794-0-0.html" target="_blank">1</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" onclick="login_dialog();"><i class="icon-bullhorn"></i>到货通知</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100759" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100759.html" target="_blank" title="复方氨酚烷胺胶囊(快克)"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149004107723430_240.jpg" title="复方氨酚烷胺胶囊(快克)" alt="复方氨酚烷胺胶囊(快克)" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149004107723430_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149004314532941_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149004333640120_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05149004350665285_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100759.html" target="_blank" title="快克复方氨酚烷胺胶囊">复方氨酚烷胺胶囊(快克)<em>快克复方氨酚烷胺胶囊</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;8.70">&yen;8.70</em>
                                        <em class="market-price" title="市场价：&yen;9.50">&yen;9.50</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100759" data-param='{"gid":"100759"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100759.html#ncGoodsRate" target="_blank" class="status">191</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100759-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:100759}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100684" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100684.html" target="_blank" title="桑菊感冒片"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05148018816820416_240.jpg" title="桑菊感冒片" alt="桑菊感冒片" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05148018816820416_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05148019738349503_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05148019770404837_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05148019807008901_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100684.html" target="_blank" title="北京同仁堂桑菊感冒片">桑菊感冒片<em>北京同仁堂桑菊感冒片</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;15.00">&yen;15.00</em>
                                        <em class="market-price" title="市场价：&yen;24.60">&yen;24.60</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100684" data-param='{"gid":"100684"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100684.html#ncGoodsRate" target="_blank" class="status">110</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100684-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:100684}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100681" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100681.html" target="_blank" title="感冒灵颗粒(999)"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05146619508321106_240.png" title="感冒灵颗粒(999)" alt="感冒灵颗粒(999)" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05146619508321106_60.png"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05146620359041626_60.png"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05146620619507908_60.png"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100681.html" target="_blank" title="">感冒灵颗粒(999)<em></em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;15.80">&yen;15.80</em>
                                        <em class="market-price" title="市场价：&yen;18.00">&yen;18.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100681" data-param='{"gid":"100681"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100681.html#ncGoodsRate" target="_blank" class="status">81</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100681-0-0.html" target="_blank">1</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="北京源通百姓平安大药房有限公司" class="name">北京源通百姓平安大药房有限公司</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" onclick="login_dialog();"><i class="icon-bullhorn"></i>到货通知</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="item">
                            <div class="goods-content" nctype_goods=" 100625" nctype_store="1">
                                <div class="goods-pic"><a href="https://www.yuekangsong.com/item-100625.html" target="_blank" title="复方对乙酰氨基酚片（Ⅱ）(散利痛)"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05145629178311969_240.jpeg" title="复方对乙酰氨基酚片（Ⅱ）(散利痛)" alt="复方对乙酰氨基酚片（Ⅱ）(散利痛)" /></a></div>
                                <div class="goods-info">
                                    <div class="goods-pic-scroll-show">
                                        <ul>
                                            <li class="selected"><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05145629178311969_60.jpeg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05145629219664610_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05145629260964382_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05145629298432394_60.jpg"/></a></li>
                                            <li><a href="javascript:void(0);"><img src="https://www.yuekangsong.com/data/upload/shop/store/goods/1/1_05145629331427513_60.jpg"/></a></li>
                                        </ul>
                                    </div>
                                    <div class="goods-name"><a href="https://www.yuekangsong.com/item-100625.html" target="_blank" title="散利痛复方对乙酰氨基酚片（Ⅱ）">复方对乙酰氨基酚片（Ⅱ）(散利痛)<em>散利痛复方对乙酰氨基酚片（Ⅱ）</em></a></div>
                                    <div class="goods-price">
                                        <span class="raty" data-score="5"></span>
                                        <em class="sale-price" title="商城价：&yen;14.70">&yen;14.70</em>
                                        <em class="market-price" title="市场价：&yen;16.00">&yen;16.00</em>


                                    </div>
                                    <div class="goods-sub">
                                        <span class="goods-compare" nc_type="compare_100625" data-param='{"gid":"100625"}'><i></i>加入对比</span> </div>
                                    <div class="sell-stat">
                                        <ul>
                                            <li><a href="https://www.yuekangsong.com/item-100625.html#ncGoodsRate" target="_blank" class="status">147</a>
                                                <p>商品销量</p>
                                            </li>
                                            <li><a href="https://www.yuekangsong.com/comments-100625-0-0.html" target="_blank">0</a>
                                                <p>用户评论</p>
                                            </li>
                                            <li><em member_id="1">&nbsp;</em></li>
                                        </ul>
                                    </div>
                                    <div class="store"><a href="https://www.yuekangsong.com/shop-1.html" title="悦康送百姓平安大药房" class="name">悦康送百姓平安大药房</a></div>
                                    <div class="add-cart">
                                        <a href="javascript:void(0);" nctype="add_cart" data-param="{goods_id:100625}"><i class="icon-shopping-cart"></i>加入购物车</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <form id="buynow_form" method="post" action="https://www.yuekangsong.com/index.php" target="_blank">
                    <input id="c" name="c" type="hidden" value="buy" />
                    <input id="op" name="op" type="hidden" value="buy_step1" />
                    <input id="goods_id" name="cart_id[]" type="hidden"/>
                </form>
                <script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/jquery.raty/jquery.raty.min.js"></script>
                <script type="text/javascript">
                    $(document).ready(function(){
                        $('.raty').raty({
                            path: "https://www.yuekangsong.com/data/resource/js/jquery.raty/img",
                            readOnly: true,
                            width: 80,
                            score: function() {
                                return $(this).attr('data-score');
                            }
                        });
                        //初始化对比按钮
                        initCompare();
                    });
                </script>
            </div>
            <div class="tc mt20 mb20">
                <div class="pagination"> <ul><li><span>首页</span></li><li><span>上一页</span></li><li><span class="currentpage">1</span></li><li><span>下一页</span></li><li><span>末页</span></li></ul> </div>
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

    $(function(){
        $('#files').tree({
            expanded: 'li:lt(2)'
        });
        //品牌索引过长滚条
        $('#ncBrandlist').perfectScrollbar();
        //浮动导航  waypoints.js
        $('#main-nav-holder').waypoint(function(event, direction) {
            $(this).parent().toggleClass('sticky', direction === "down");
            event.stopPropagation();
        });
        // 单行显示更多
        $('span[nc_type="show"]').click(function(){
            s = $(this).parents('dd').prev().find('li[nc_type="none"]');
            if(s.css('display') == 'none'){
                s.show();
                $(this).html('<i class="icon-angle-up"></i>收起');
            }else{
                s.hide();
                $(this).html('<i class="icon-angle-down"></i>更多');
            }
        });


        // 推荐商品异步显示
        $('div[nctype="booth_goods"]').load('https://www.yuekangsong.com/index.php?c=search&op=get_booth_goods&cate_id=5484', function(){
            $(this).show();
        });
        //浏览历史处滚条
        $('#nchSidebarViewed').perfectScrollbar();

        //猜你喜欢
        $('#guesslike_div').load('https://www.yuekangsong.com/index.php?c=search&op=get_guesslike', function(){
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
                <a  target="_blank" href="http://www.yuekangsong.com/data/upload/shop/article/05799717836792755.jpg">药品经营许可证</a>
                <a  href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=48">营业执照</a>
                <a  target="_blank" href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action">京ICP备15001998号</a>
                <a  target="_blank" href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=46">GSP认证证书</a>
            </p>
        </div>
        <div class="am-zz">
            <p>
                <a  target="_blank" href="http://www.yuekangsong.com/data/upload/shop/article/05799719527653417.jpg">食品经营许可证</a>
                <a  target="_blank" href="https://www.yuekangsong.com/article-43.html">互联网药品信息服务资格证书:（京）-非经营性-2015-0001</a>
                <a  target="_blank" href="https://www.yuekangsong.com/article-42.html">互联网药品交易资格证书：京C20150004</a>
            </p>
        </div>
        <div class="am-bottom-copy">版权所有：北京源通百姓平安大药房有限公司</div>
        <div class="am-copy-img">
            <div style="width:300px;margin:0 auto; padding:20px 0;">
                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11030102010086" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="https://www.yuekangsong.com/shop/templates/default/images/police_logo.png" style="float:left;margin-right: 0px;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393; font-size:14px;">京公网安备 11030102010086号</p></a>
            </div>
        </div>
    </div>
    <script type='text/javascript'>
        var _vds = _vds || [];
        window._vds = _vds;
        (function(){
            _vds.push(['setAccountId', 'b86f8ea45795d65c']);
            (function() {
                var vds = document.createElement('script');
                vds.type='text/javascript';
                vds.async = true;
                vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(vds, s);
            })();
        })();
    </script> </div>
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
</script></body>
</html>
