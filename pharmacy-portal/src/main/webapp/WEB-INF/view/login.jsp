<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>百姓平安药房健康网-登录</title>
    <link type="text/css" rel="stylesheet" href="https://www.yuekangsong.com/shop/templates/default/css/new/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="https://www.yuekangsong.com/shop/templates/default/css/new/login_register.css">
    <link type="text/css" rel="stylesheet" href="https://www.yuekangsong.com/shop/templates/default/css/new/ionicons.css">
    <!--<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js" ></script>
        <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>-->
    <script type="text/javascript" src="https://www.yuekangsong.com/shop/resource/js/new/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://www.yuekangsong.com/shop/resource/js/new/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://www.yuekangsong.com/shop/resource/js/new/common.js"></script>
</head>
<body>
<div class="am-area">
    <div class="am-left-bar">
        <div class="am-header"><a href="https://www.yuekangsong.com"> <img src="https://www.yuekangsong.com/data/upload/shop/common/06286872896538652.jpg"></a></div>
        <div class="am-peopel"><img src="https://www.yuekangsong.com/shop/templates/default/images/new/doctors.jpg"></div>
    </div>
    <div class="am-right-bar">
        <form id="signupForm" method="post" action="/user/login"  class="bg">
            <input type='hidden' name='formhash' value='PTk4mSSBf0k0Rx8rOJQTs5DkSWGgUUy' />        <input type="hidden" name="form_submit" value="ok" />
            <input name="nchash" type="hidden" value="421f03c0" />
            <h1 class="am-title"><span class="am-tips">无账号，<b><a href="/page/regist"> 立即注册</a></b></span>HI 欢迎登陆！</h1>

            <div class="form-group has-success has-feedback">
                <div class="input-group am-form-group"><span class="input-group-addon"><i
                        class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control username" id="username" value="" name="username" placeholder="请输入手机号/用户名/邮箱">
                </div>
                <span class="glyphicon glyphicon-ok-sign form-control-feedback" aria-hidden="true"></span> <span
                    class="glyphicon glyphicon-remove-sign form-control-feedback red-icon" aria-hidden="true"></span>
            </div>
            <div class="form-group has-success has-feedback">
                <div class="input-group am-form-group"><span class="input-group-addon"><i
                        class="ion ion-locked"></i></span>
                    <input type="password" class="form-control" id="password" value="" name="password">
                </div>
                <span class="glyphicon glyphicon-ok-sign form-control-feedback" aria-hidden="true"></span> <span
                    class="glyphicon glyphicon-remove-sign form-control-feedback red-icon" aria-hidden="true"></span>
            </div>
            <div class="checkbox"><span class="am-forget"><a href="index.php?c=login&op=forget_password">忘记密码？</a> </span>

                <div class="checkboxFive">
                    <input type="checkbox" value="1"  id="checkboxFiveInput" name="remember"/>
                    <label for="checkboxFiveInput"></label>
                </div>
                <label class="am-autologin"> 3天内免登录
                    <!-- 自动登录或几天内免登陆-->
                </label>
            </div>
            <div class="am-login-button">
                <input type="submit" class="btn btn-danger" value="登录" id="btn">
            </div>
            <div class="am-other-method clearfix"></div>

        </form>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#signupForm").validate({

                    rules: {
                        username: "required",
                        password: {
                            required: true,
                            minlength: 5
                        },

                    },
                    messages: {
                        username: "请输入姓名",
                        password: {
                            required: "请输入密码",
                            minlength: "密码长度不能小于 5 个字母"
                        },

                    },


                });
            });
            var redirectUrl = "";
            var LOGIN = {
                doLogin:function() {
                    $.post("/user/login", $("#signupForm").serialize(),function(data){
                        if (data.status == 200) {
                            alert("登录成功！");
                            if (redirectUrl == "") {
                                location.href = "http://localhost:8081";
                            } else {
                                location.href =redirectUrl;
                            }
                        } else {
                            alert("登录失败，原因是：" + data.msg);

                        }
                    });
                }
            };
            $(function(){
                $("#btn").click(function(){
                    LOGIN.doLogin();
                });
            });
        </script>
    </div>
</div>
</body>
</html>