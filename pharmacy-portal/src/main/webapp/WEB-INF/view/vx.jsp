<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>百姓平安药房网</title>
    <meta name="keywords" content="百姓平安药房网">
    <meta name="description" content="百姓平安药房网">
    <meta name="author" content="yuekangsong">
    <meta name="copyright" content="yuekangsong. All Rights Reserved">
    <style type="text/css">
        body {
            _behavior: url(https://www.yuekangsong.com/shop/templates/default/css/csshover.htc);
        }

        .yks-appbar-tabs a.compare {
            display: none !important;
        }
    </style>
    <link href="https://www.yuekangsong.com/shop/templates/default/css/base.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/templates/default/css/home_cart.css" rel="stylesheet" type="text/css">
    <link href="https://www.yuekangsong.com/shop/resource/font/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!--[if IE 7]>
    <link rel="stylesheet" href="https://www.yuekangsong.com/shop/resource/font/font-awesome/css/font-awesome-ie7.min.css">
    <![endif]-->
    <script type="text/javascript" async="" src="https://dn-growing.qbox.me/vds.js"></script><script>
        var COOKIE_PRE = 'yuekangsong_';
        var _CHARSET = 'utf-8';
        var SITEURL = 'https://www.yuekangsong.com';
        var RESOURCE_SITE_URL = 'https://www.yuekangsong.com/data/resource';
        var RESOURCE_SITE_URL = 'https://www.yuekangsong.com/data/resource';
        var SHOP_TEMPLATES_URL = 'https://www.yuekangsong.com/shop/templates/default';
        var PRICE_FORMAT = '&yen;%s';
    </script>
    <!--
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/common.js"></script>
    -->
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/common.js"></script>

    <script src="https://www.yuekangsong.com/data/resource/js/jquery-ui/jquery.ui.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.validation.min.js"></script>
    <script src="https://www.yuekangsong.com/data/resource/js/jquery.poshytip.min.js"></script>
    <script type="text/javascript" src="https://www.yuekangsong.com/data/resource/js/dialog/dialog.js" id="dialog_js" charset="utf-8"></script><link href="https://www.yuekangsong.com/data/resource/js/dialog/dialog.css" rel="stylesheet" type="text/css">
            <script src="https://www.yuekangsong.com/data/resource/js/goods_cart.js"></script>
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
<style id="poshytip-css-tip-yellowsimple" type="text/css">div.tip-yellowsimple{visibility:hidden;position:absolute;top:0;left:0;}div.tip-yellowsimple table, div.tip-yellowsimple td{margin:0;font-family:inherit;font-size:inherit;font-weight:inherit;font-style:inherit;font-variant:inherit;}div.tip-yellowsimple td.tip-bg-image span{display:block;font:1px/1px sans-serif;height:10px;width:10px;overflow:hidden;}div.tip-yellowsimple td.tip-right{background-position:100% 0;}div.tip-yellowsimple td.tip-bottom{background-position:100% 100%;}div.tip-yellowsimple td.tip-left{background-position:0 100%;}div.tip-yellowsimple div.tip-inner{background-position:-10px -10px;}div.tip-yellowsimple div.tip-arrow{visibility:hidden;position:absolute;overflow:hidden;font:1px/1px sans-serif;}</style></head>
<body>

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
                                    <li class="am-rightlist1"><a href="javascript:;"> <img src="https://www.yuekangsong.com/data/upload/shop/common/05198329174411116.jpg">

                            <div class="show">15502283132</div>
                        </a></li>
                                <li class="am-rightlist2" id="rtoolbar_cart">

                    <div class="am-buy-area">
                        <img src="https://www.yuekangsong.com/shop/templates/default/images/buy_cart.png">

                                                    <p>购物车</p>
                            <div id="rtoobar_cart_count" class="right-addcart-goods-num"></div>
                                            </div>


                </li>
                <li class="am-rightlist3"><a href="https://www.yuekangsong.com/index.php?c=member_favorites&amp;op=fglist"><img src="https://www.yuekangsong.com/shop/templates/default/images/start.png">

                        <div class="show">我的收藏</div>
                    </a></li>
                <li class="am-rightlist4"><a href="https://www.yuekangsong.com/index.php?c=member_goodsbrowse&amp;op=list"><img src="https://www.yuekangsong.com/shop/templates/default/images/clock.png">

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
                    <div class="show_erweima"><em></em><img src="https://www.yuekangsong.com/shop/templates/default/images/shop/erweim.jpg"></div>
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
                                您好<a href="https://www.yuekangsong.com/index.php?c=member&amp;op=home">15502283132</a><span>[<a href="https://www.yuekangsong.com/index.php?c=login&amp;op=logout">退出</a>] </span>
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
                      <div class="am-collect"><a href="https://www.yuekangsong.com/index.php?c=member_favorites&amp;op=fglist">我的收藏</a></div>
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
<!--
<header class="ncc-head-layout">
    <div class="site-logo"><a href="https://www.yuekangsong.com"><img src="https://www.yuekangsong.com/data/upload/shop/common/06286872896538652.jpg" class="pngFix"></a></div>
        <ul class="ncc-flow">
      <li class=""><i class="step1"></i>
        <p>我的购物车</p>
        <sub></sub>
        <div class="hr"></div>
      </li>
      <li class=""><i class="step2"></i>
        <p>填写核对购物信息</p>
        <sub></sub>
        <div class="hr"></div>
      </li>
      <li class="current"><i class="step3"></i>
        <p>支付提交</p>
        <sub></sub>
        <div class="hr"></div>
      </li>
      <li class=""><i class="step4"></i>
        <p>订单完成</p>
        <sub></sub>
        <div class="hr"></div>
      </li>
    </ul>
      </header>
  -->

<!-- new header start  -->
<div class="ncc-head-layout am-buyheader">
    <div class="am-buyheader-con">
                                    <div class="am-buyheader-left am-buyorder-icon am-pay-icon">付款方式</div>
                            <ul class="ncc-flow">
                <li><span class="am-cicle am-orange">1</span><span class="am-tips am-orange-f">我的购物车</span><span class="am-line am-orange"></span></li>
                <li><span class="am-cicle  am-orange ">2</span><span class="am-tips  am-orange-f ">确认订单</span><span class="am-line  am-orange "></span></li>
                <li><span class="am-cicle  am-orange ">3</span><span class="am-tips  am-orange-f ">付款方式</span><span class="am-line  am-orange "></span></li>
                <li><span class="am-cicle  am-gray ">4</span><span class="am-tips  am-gray-f ">订单完成</span></li>
            </ul>
            </div>
</div>
<!-- new header end  -->



<!-- tab css slider start -->
<div class="am-tab-con">

<div class="am-tab-box ">

    <ul><li class="am-selected"><span class="am-sel">全部商品</span></li><li style="display: none;"><span>百姓平安药房健康网</span></li></ul>
    <div class="clear"></div>
</div>

</div>
<!-- tab css slider end -->

<div class="ncc-wrapper am-ncc-wrapper">

    <style>
.wxpayment { border-top: 2px solid #4b5b78; padding: 12px 30px 0; border: 1px solid #eee; color: #777; }
.p-w-bd::after,
.pay-weixin::after { clear: both; content: ""; display: table; }
.p-w-hd { font-family: "Microsoft Yahei"; font-size: 18px; margin-bottom: 20px; }
.p-w-bd { margin-bottom: 30px; padding-left: 130px; }
.pw-box-hd img { border: 1px solid #ddd; }
.p-w-box { float: left; width: 300px; }
.payment-change .pc-wrap { display: block; height: 56px; line-height: 56px; padding: 0 20px; transition: all 0.1s ease 0s; }
.payment-change .pc-wrap .pc-w-arrow-left { float: left; margin-right: 15px; }
.payment-change .pc-wrap .pc-w-arrow-left,
.payment-change .pc-wrap .pc-w-arrow-right { color: #2fa1dd; float: right; font-family: "宋体"; font-size: 22px; font-style: normal; text-align: center; width: 20px; }
.pw-box-ft { background: url("https://www.yuekangsong.com/shop/templates/default/images/payment/icon-red.png") no-repeat scroll 50px 8px #ff7674; height: 44px; padding: 8px 0 8px 125px; }
.p-w-sidebar { background: url("https://www.yuekangsong.com/shop/templates/default/images/payment/phone-bg.png") no-repeat scroll 50px 0 rgba(0, 0, 0, 0); float: left; height: 421px; margin-top: -20px; padding-left: 50px; width: 379px; }
.pw-box-ft p { color: #fff; font-size: 14px; font-weight: 700; line-height: 22px; margin: 0; }
.payment-change .pc-wrap .pc-w-arrow-left { float: left; margin-right: 15px; }
.payment-change .pc-wrap strong { color: #2ea7e7; cursor: pointer; float: left; font-size: 14px; margin-right: 30px; }
</style>
<div class="ncc-main">
  <div class="ncc-title">
    <h3>支付提交</h3>
    <h5>订单详情内容可通过查看<a href="index.php?c=member_order" target="_blank">我的订单</a>进行核对处理。</h5>
  </div>
  <div class="ncc-receipt-info">
    <div class="ncc-receipt-info-title">
      <h3> 订单提交成功，请您尽快付款。 应付金额：<strong>28.00</strong>元 </h3>
    </div>
  </div>
      <table class="ncc-table-style">
        <thead>
          <tr>
            <th class="w50"></th>
            <th class="w200 tl">订单号</th>
            <th class="tl">金额(元)</th>
          </tr>
        </thead>
        <tbody>
                              <tr>
            <td></td>
            <td class="tl">3000000000122701</td>
            <td class="tl">28.00</td>
          </tr>
                  </tbody>
      </table>
  <div class="wxpayment"> 
    <!-- 微信支付 -->
    <div class="pay-weixin">
      <div class="p-w-hd">微信支付</div>
      <div class="p-w-bd">
        <div class="p-w-box">
          <div class="pw-box-hd"> <img width="298" src="https://www.yuekangsong.com/index.php?c=payment&amp;op=qrcode&amp;data=RTdNdjI5Y2FJS0k0WUNDeWZfUWRnU05pa0RaNWNTdDNlVDZqY1NfaG5DQmRjWUxrbEpTRTlseC14NWlNTmp1VzM4bA%3D%3D"> </div>
          <div class="pw-box-ft">
            <p>请使用微信扫一扫</p>
            <p>扫描二维码支付</p>
          </div>
        </div>
        <div class="p-w-sidebar"></div>
      </div>
    </div>
    <!-- 微信支付 end --> 
    <!-- payment-change 变更支付方式 -->
    <div class="payment-change"> <a href="javascript:history.back(-1)" id="reChooseUrl" class="pc-wrap"> <i class="pc-w-arrow-left">&lt;</i> <strong>选择其他支付方式</strong> </a> </div>
    <!-- payment-change 变更支付方式 end --> 
  </div>
</div>
<script>
$(document).ready(function(){
    setInterval(queryOrderState, 3000);
});

function queryOrderState(){
    $.ajax({
        type: "GET",
        url: "https://www.yuekangsong.com/index.php?c=payment&op=query_state&buyer_id=66447&pay_id=1227",
        data: "",
        dataType: "json",
        timeout: 4000,
        async:false,
        success: function(result) {
            if(result.state==1){
                if (result.type == 'r') {
                	window.location.href = 'https://www.yuekangsong.com/index.php?c=member_order';
                } else {
                	window.location.href = 'https://www.yuekangsong.com/index.php?c=member_vr_order&op=index';
                }
            }
        }
    });
}
</script>
<div style="clear: both"></div>
</div>
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
                                                                                <a target="_blank" href="http://www.yuekangsong.com/shop/index.php?c=article&amp;op=show&amp;article_id=46">GSP认证证书</a>
                                                                                                                                                                    </p>
    </div>
    <div class="am-zz">
        <p>
                                                                                                                                                                                                                        <a target="_blank" href="http://www.yuekangsong.com/data/upload/shop/article/05799719527653417.jpg">食品经营许可证</a>
                                                                                <a target="_blank" href="https://www.yuekangsong.com/article-43.html">互联网药品信息服务资格证书:（京）-非经营性-2015-0001</a>
                                                                                <a target="_blank" href="https://www.yuekangsong.com/article-42.html">互联网药品交易资格证书：京C20150004</a>
                                                        </p>
</div>
<div class="am-bottom-copy">版权所有：北京源通百姓平安大药房有限公司</div>
<div class="am-copy-img">
    <div style="width:300px;margin:0 auto; padding:20px 0;">
        <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11030102010086" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="https://www.yuekangsong.com/shop/templates/default/images/police_logo.png" style="float:left;margin-right: 0px;"><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393; font-size:14px;">京公网安备 11030102010086号</p></a>
    </div>
</div>
</div>
    <script type="text/javascript">
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
</script><script>
    //提示信息
    $('.tip').poshytip({
        className: 'tip-yellowsimple',
        showOn: 'hover',
        alignTo: 'target',
        alignX: 'center',
        alignY: 'top',
        offsetX: 0,
        offsetY: 5,
        allowTipHover: false
    });
</script>


</body></html>