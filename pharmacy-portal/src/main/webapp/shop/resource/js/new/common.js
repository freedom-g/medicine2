/**
 * Created by yks on 2016/8/27.
 */

//$(document).ready(function () {
//
//    $('.username').focus(function () {
//        $(this).val("");
//
//    }).blur(function () {
//        $(this).val("请输入手机号/用户名/邮箱");
//
//    })
//})



/* 设置cookie开始*/

function setCookie(name,value,days) {//设置cookie
	var dates=new Date();//创建一个时间对象
	dates.setDate(dates.getDate()+days); //按天数设置
	document.cookie=name+"="+value+"; expires="+dates;
}
function getCookie(name){
	var arr=document.cookie.split('; ');
   /* alert(arr);
    alert(arr.length);*/
	// alert(arr); //返回['user1=XX','user2=OO','user3=MM']
	for (var i = 0; i < arr.length; i++) {
		var arr2=arr[i].split('=');//i=0--['user1','XX']
       // alert(arr2);
		if (arr2[0]==name) {
			return arr2[1];
		};
	};
	return false;
	// return '';
}
function removeCookie(name){
	setCookie(name,'1',-2);
}
var user=document.getElementById('user');
var pass=document.getElementById('pass');
var cb=document.getElementById('checkboxFiveInput');
var btn=document.getElementById('btn');
window.onload=function(){
	if (getCookie('user1')) {
		user.value=getCookie('user1');
		pass.value=getCookie('pass1');
		cb.checked=true;
	};
	btn.onclick=function(){
		if (cb.checked) {
			setCookie('user1',user.value,3);
			setCookie('pass1',pass.value,73);
		} else{
			removeCookie('user1');
			removeCookie('pass1');
		};
	
	}
}

/* 设置cookie结束*/