/**
 * 验证码
 */
function validCodeCheck() {
	$("validCodeFlag").val("");
	var validCode = $("#validCode").val();
	$("#validCodeRequired").hide();
	$("#validCodeE").hide();
	$("#validCodeR").hide();
	if (validCode.length == 4) {// 验证码
		$.post("../portal/verCode?t=4&code=" + validCode, function(data) {
			$("#validCodeFlag").val("");
			if (data == 1) {// 验证成功
				$("#validCodeFlag").val("1");
				$("#validCodeR").show();
			} else {
				$("#validCodeFlag").val("");
				$("#validCodeE").show();
			}
		});
	} else if ("" == validCode) {// 验证码为空
		$("validCodeFlag").val("");
		$("#validCodeRequired").show();
	} else {
		$("#validCodeFlag").val("");
		$("#validCodeE").show();
	}
}

/**
 * IDC验证码
 */
function validCodeCheckIDC() {
	$("validCodeFlagIDC").val("");
	var validCode = $("#validCodeIDC").val();
	$("#validCodeRequiredIDC").hide();
	$("#validCodeEIDC").hide();
	$("#validCodeRIDC").hide();
	if (validCode.length == 4) {// 验证码
		$.post("../portal/verCode?t=7&code=" + validCode, function(data) {
			$("#validCodeFlagIDC").val("");
			if (data == 1) {// 验证成功
				$("#validCodeFlagIDC").val("1");
				$("#validCodeRIDC").show();
			} else {
				$("#validCodeFlagIDC").val("");
				$("#validCodeEIDC").show();
			}
		});
	} else if ("" == validCode) {// 验证码为空
		$("validCodeFlagIDC").val("");
		$("#validCodeRequiredIDC").show();
	} else {
		$("#validCodeFlagIDC").val("");
		$("#validCodeEIDC").show();
	}
}

/**
 * APP市场用户
 */
function validCodeCheckApp() {
	$("#validCodeFlagApp").val("");
	var validCode = $("#validCodeApp").val();
	$("#validCodeRequiredApp").hide();
	$("#validCodeEApp").hide();
	$("#validCodeRApp").hide();
	if (validCode.length == 4) {// 验证码
		$.post("../portal/verCode?t=100&code=" + validCode, function(data) {
			$("#validCodeFlagApp").val("");
			if (data == 1) {// 验证成功
				$("#validCodeFlagApp").val("1");
				$("#validCodeRApp").show();
			} else {
				$("#validCodeFlagApp").val("");
				$("#validCodeEApp").show();
			}
		});
	} else if ("" == validCode) {// 验证码为空
		$("#validCodeFlagApp").val("");
		$("#validCodeRequiredApp").show();
	} else {
		$("#validCodeFlagApp").val("");
		$("#validCodeEApp").show();
	}
}

/**
 * CDN市场用户
 */
function validCodeCheckCDN() {
	$("#validCodeFlagCDN").val("");
	var validCode = $("#validCodeCDN").val();
	$("#validCodeRequiredCDN").hide();
	$("#validCodeECDN").hide();
	$("#validCodeRCDN").hide();
	if (validCode.length == 4) {// 验证码
		$.post("../portal/verCode?t=100&code=" + validCode, function(data) {
			$("#validCodeFlagCDN").val("");
			if (data == 1) {// 验证成功
				$("#validCodeFlagCDN").val("1");
				$("#validCodeRCDN").show();
			} else {
				$("#validCodeFlagCDN").val("");
				$("#validCodeECDN").show();
			}
		});
	} else if ("" == validCode) {// 验证码为空
		$("#validCodeFlagCDN").val("");
		$("#validCodeRequiredCDN").show();
	} else {
		$("#validCodeFlagCDN").val("");
		$("#validCodeECDN").show();
	}
}

function accountCheck() {
	$("#accountFlag").val('');
	var account = $("#account").val();
	$("#accountRequired").hide();
	
	if (charStatisticsNumber(account) == 0) {// 请输入账号
		$("#accountFlag").val('');
		$("#accountRequired").show();
	}else{
		$("#accountFlag").val('1');
	}
}
function accountCheckIDC() {
	$("#accountFlagIDC").val('');
	var account = $("#accountIDC").val();
	$("#accountRequiredIDC").hide();
	
	if (charStatisticsNumber(account) == 0) {// 请输入账号
		$("#accountFlagIDC").val('');
		$("#accountRequiredIDC").show();
	}else{
		$("#accountFlagIDC").val('1');
	}
}

function accountCheckApp() {
	$("#accountFlagApp").val('');
	var account = $("#accountApp").val();
	$("#accountRequiredApp").hide();
	
	if (charStatisticsNumber(account) == 0) {// 请输入账号
		$("#accountFlagApp").val('');
		$("#accountRequiredApp").show();
	}else{
		$("#accountFlagApp").val('1');
	}
}

function accountCheckCDN() {
	$("#accountFlagCDN").val('');
	var account = $("#accountCDN").val();
	$("#accountRequiredCDN").hide();
	
	if (charStatisticsNumber(account) == 0) {// 请输入账号
		$("#accountFlagCDN").val('');
		$("#accountRequiredCDN").show();
	}else{
		$("#accountFlagCDN").val('1');
	}
}

/* 统计字符串长度 */
function charStatisticsNumber(str) {
	var number = str.replace(/\s+/g, "").length;
	return number;
}

function pwdCheck() {
	$("#pwdFlag").val('');
	var pwd = $("#pwd").val();
	$("#pwdRequired").hide();

	if (charStatisticsNumber(pwd) == 0) {// 请设置密码
		$("#pwdFlag").val('');
		$("#pwdRequired").show();
	}else{
		$("#pwdFlag").val('1');
	}
}

function pwdCheckIDC() {
	$("#pwdFlagIDC").val('');
	var pwd = $("#pwdIDC").val();
	$("#pwdRequiredIDC").hide();

	if (charStatisticsNumber(pwd) == 0) {// 请设置密码
		$("#pwdFlagIDC").val('');
		$("#pwdRequiredIDC").show();
	}else{
		$("#pwdFlagIDC").val('1');
	}
}

function pwdCheckApp() {
	$("#pwdFlagApp").val('');
	var pwd = $("#pwdApp").val();
	$("#pwdRequiredApp").hide();

	if (charStatisticsNumber(pwd) == 0) {// 请设置密码
		$("#pwdFlagApp").val('');
		$("#pwdRequiredApp").show();
	}else{
		$("#pwdFlagApp").val('1');
	}
}

function pwdCheckCDN() {
	$("#pwdFlagCDN").val('');
	var pwd = $("#pwdCDN").val();
	$("#pwdRequiredCDN").hide();

	if (charStatisticsNumber(pwd) == 0) {// 请设置密码
		$("#pwdFlagCDN").val('');
		$("#pwdRequiredCDN").show();
	}else{
		$("#pwdFlagCDN").val('1');
	}
}
/**
 * 登陆
 */
function logging() {
	pwdCheck();
	accountCheck();
	var pwd = $("#pwd").val();
	if ($("#validCode").val() == "") {
		$("validCodeFlag").val("");
		$("#validCodeRequired").show();
	}
	if ($("#pwdFlag").val() && $("#accountFlag").val()&& $("#validCodeFlag").val()) {
		document.getElementById("over").style.display = "block";
		document.getElementById("layout").style.display = "block";
		if (/^(?![a-zA-Z0-9]+$)(?![^a-zA-Z/D]+$)(?![^0-9/D]+$).{8,16}$/.test(pwd)) {// 数字、字母、下
			$("#zz").val("0");
		} else {
			$("#zz").val("1");
		}
		//密码md5加密
		$("#pwd").val(md5(pwd).replace(/\b(0+)/gi,""));
		$("#loginform").submit();
	}
}

/**
 * 登陆
 */
function loggingIDC() {
	pwdCheckIDC();
	accountCheckIDC();
	var pwd = $("#pwdIDC").val();
	if ($("#validCodeIDC").val() == "") {
		$("validCodeFlagIDC").val("");
		$("#validCodeRequiredIDC").show();
	}
	if ($("#pwdFlagIDC").val() && $("#accountFlagIDC").val()&& $("#validCodeFlagIDC").val()) {
		document.getElementById("over").style.display = "block";
		document.getElementById("layout").style.display = "block";
		if (/^(?![a-zA-Z0-9]+$)(?![^a-zA-Z/D]+$)(?![^0-9/D]+$).{8,16}$/.test(pwd)) {// 数字、字母、下
			$("#zz").val("0");
		} else {
			$("#zz").val("1");
		}
		//密码md5加密
		$("#pwdIDC").val(md5(pwd).replace(/\b(0+)/gi,""));
		$("#loginformIDC").submit();
	}
}

/**
 * APP市场用户登陆
 */
function loggingApp() {
	pwdCheckApp();
	accountCheckApp();
	var pwd = $("#pwdApp").val();
	if ($("#validCodeApp").val() == "") {
		$("validCodeFlagApp").val("");
		$("#validCodeRequiredApp").show();
	}
	if ($("#pwdFlagApp").val() && $("#accountFlagApp").val()&& $("#validCodeFlagApp").val()) {
		document.getElementById("over").style.display = "block";
		document.getElementById("layout").style.display = "block";
		if (/^(?![a-zA-Z0-9]+$)(?![^a-zA-Z/D]+$)(?![^0-9/D]+$).{8,16}$/.test(pwd)) {// 数字、字母、下
			$("#zz").val("0");
		} else {
			$("#zz").val("1");
		}
		//密码md5加密
		$("#pwdApp").val(md5(pwd).replace(/\b(0+)/gi,""));
		$("#loginformApp").submit();
	}
}

/**
 * CDN用户登陆
 */
function loggingCDN() {
	pwdCheckCDN();
	accountCheckCDN();
	var pwd = $("#pwdCDN").val();
	if ($("#validCodeCDN").val() == "") {
		$("validCodeFlagCDN").val("");
		$("#validCodeRequiredCDN").show();
	}
	if ($("#pwdFlagCDN").val() && $("#accountFlagCDN").val()&& $("#validCodeFlagCDN").val()) {
		document.getElementById("over").style.display = "block";
		document.getElementById("layout").style.display = "block";
		if (/^(?![a-zA-Z0-9]+$)(?![^a-zA-Z/D]+$)(?![^0-9/D]+$).{8,16}$/.test(pwd)) {// 数字、字母、下
			$("#zz").val("0");
		} else {
			$("#zz").val("1");
		}
		//密码md5加密
		$("#pwdCDN").val(md5(pwd).replace(/\b(0+)/gi,""));
		$("#loginformCDN").submit();
	}
}


function refresh(){
	var time = new Date().getTime();
    document.getElementById('imgs').src="http://localhost:8080/iscs/common/image.jsp?t=4&tim="+time;
}

/**
 * 需要页面加载完执行的动作
 */
$(document).ready(function (){
	if($("#account").val()&&$("#pwd").val()){
		$("#remindme").attr("checked","checked");
	}
}); 

/**
 * 回车事件
 */
document.onkeydown=function(event){
    var e = event || window.event || arguments.callee.caller.arguments[0];      
    if(e && e.keyCode==13){ // enter 键
   	 	logging();
    }
}; 
