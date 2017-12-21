<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="zh-CN">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <link rel="shortcut icon" href="/img/ico.ico" type="image/x-icon" />
    <link href="/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="/css/bootstrap-responsive.css" rel="stylesheet" media="screen">
    <link href="/css/css.css" rel="stylesheet" media="screen">
    <link href="/css/css2.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="/css/milk.css">
    <!-- 表单验证 -->
    <script type="text/javascript">
        var taken_for_user = '576c6476-c84b-4c9f-9509-67a993f5ee33';
	</script>
    <script src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/defaultToken.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.mockjax.js"></script>
    <script src="/js/jquery.validate.js"></script>
    <script type="text/javascript" src="/js/login.js"></script>
    <script type="text/javascript" src="/js/recordquery.js"></script>
    <script type="text/javascript" src="/js/md5.min.js"></script>
    <style>
        .error {
            position: absolute;
            top: 5px;
            left: 278px;
            width: 300px;
        }

        .error2 {
            position: absolute;
            top: 103px;
            left: 278px;
            width: 300px;
        }

        .error3 {
            position: absolute;
            top: 140px;
            left: 278px;
            width: 300px;
        }

        .errors {
            position: absolute;
            top: 65px;
            left: 278px;
            width: 300px;
        }

        a:hover {
            text-decoration: none;
        }

        h5 {
            color: #666666 !important;
        }
    </style>

    <title>科技日志</title>
</head>
<body>
    <div class="wrapper" style="position: relative;">
        <!-- start:头部 -->
        <div class="container container1">
            <div class="navbar-header page-scroll">
                <a class="logo">
                    <img src="/img/logo.png" width="247" />
                </a>
                <div class="logo-right index-top">
                    <div class="input-append pull-right">
                        <input class="span2" type="text" style="border-right: 0px;" placeholder="备案查询">
                    
                    </div>
                    <ul class="nav nav-pills z-index">
                        <li class='active'><a href="/Default.aspx">首页</a></li>
                        <li><a href="/recordInform.html">前端</a></li>
                        <li><a href="/recordIssue.html">后端</a></li>
                        <li><a href="/recordNotice.html">移动端</a></li>
                        <li><a href="/newTech.html">新方向</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="heng"></div>
        <!-- end:头部 -->
        <div id="over" class="over"></div>
        <div id="layout" class="layout">
            <img src="/img/loading2.gif" />
        </div>
        <script type="text/javascript">
            function loading() {
                document.getElementById("over").style.display = "block";
                document.getElementById("layout").style.display = "block";
            }
        </script>

        <!-- start:登录 -->
        <div class="z_indexk">
            <div class="z_adbg" id="cbg">
                <div class="container container1" style="position: relative;">
                    <div class="z_adleft">
                        <div class="xuanch">
                            <img src="/img/xcy.png" />
                        </div>
                        <div class="liucheng">
                            <img id="imgliucheng" src="/img/liucheng.png" />
                        </div>
                    </div>
                    <!-- start:登录框 -->
                    <div class="loginbg" style="position: relative; width: 330px;" id="dlk">
                        <!-- start:tab页 -->
                        <ul class="nav nav-tabs login_tab" id="myTab" style="margin-top: -16px; font-size: 10px;">
                            <li id="dl1" class="active">
                                <a href="#ptyh" data-toggle="tab" id="PTUSER">网站用户</a>
                            </li>
                            <li id="dl2">
                                <a href="#jrs" data-toggle="tab" id="qyLoginA">IDC/ISP/CDN</a>
                            </li>
                            <li id="dl3">
                                <a href="#appMarket" data-toggle="tab" id="APPMarket">APP商店</a>
                            </li>
                            <!-- 	<li id="dl4">
           		<a href="#cdn" data-toggle="tab" id="CDN">CDN用户</a>
       		</li> -->
                        </ul>
                        <!-- start:tab页 -->
                        <!-- start:tab页内容 -->
                        <div id="myTabContent" class="">
                            <!-- 普通用户 -->
                            <div class="tab-pane  active in" id="ptyh">
                                <form id="loginform" autocomplete="off" action="/user/login" method="post">
                                    <input type="hidden" name="token" value="576c6476-c84b-4c9f-9509-67a993f5ee33" />
                                    <ul class="unstyled controls logink">
                                        <li class="row-fluid" style="position: relative;">
                                            <label id="laccount" for="account" class=" text-right z_color">用户名</label>&nbsp;
                  <input class="z_input" type="text" name="account" id="account" maxlength="30" onkeyup="accountCheck()" />
                                            <input type="hidden" id="accountFlag" />
                                            <span id="accountRequired" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入账号</font></span>
                                            <span id="accountNum" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号最少六位</font></span>
                                            <span id="accountRule" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号为字母、数字、下划线</font></span>
                                            <span id="accountR" class="error" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lpwd" for="pwd" class="text-right z_color">密码</label>&nbsp;
                  <input class="z_input" type="password" onpaste="return false" name="pwd" id="pwd" maxlength="20" onkeyup="pwdCheck()" />
                                            <input type="hidden" id="pwdFlag" />
                                            <span id="pwdRequired" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入密码</font></span>
                                            <span id="pwdNum" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">密码最少六位</font></span>
                                            <span id="pwdR" class="error2" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error2"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lvalidCode" class=" text-right z_color">验证码</label>&nbsp;
                  <input class="z_input" type="text" name="validCode" maxlength="4" id="validCode" style="width: 70px;" onkeyup="validCodeCheck()" />
                                            <span>
                                                <img alt="点击刷新" id="imgs" src="http://beian.gov.cn/common/image.jsp?t=4" style="cursor: pointer;" onclick="this.src='/common/image.jsp?t=4&tim='+new Date().getTime()"></span>
                                            <input type="hidden" id="validCodeFlag" />
                                            <span id="validCodeRequired" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入验证码</font></span>
                                            <span id="validCodeE" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">验证码错误</font></span>
                                            <span id="validCodeR" class="error3" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error3"></span>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 10px; height: 20px;">
                                            <label class="" style="line-height: 20px; margin-left: 30px; width: 90px;">
                                            </label>
                                            <label class="text-right" style="margin-left: 80px;"><a href="../portal/findpwd">忘记密码？</a></label>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 5px;">
                                            <input type="hidden" value="" name="zz" id="zz" />
                                            <a href="javascript:void(0)" class="btn btn-danger btn-large" style="width: 230px; margin-left: 35px;" id="btn" onclick="logging()">登录</a>
                                        </li>
                                        <li class="row-fluid" style="">
                                            <label class="text-left z_color " style="width: 140px; margin-left: 40px;">没有账号？<a href="/user/registerurl?userType=ptyh">注册</a></label>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                            <!-- 普通用户 -->
                            <!-- IDC用户 -->
                            <div class="tab-pane " id="jrs" style="display: none;">
                                <form id="loginformIDC" autocomplete="off" action="/user/loginIdc" method="post">
                                    <input type="hidden" name="token" value="576c6476-c84b-4c9f-9509-67a993f5ee33" />
                                    <ul class="unstyled controls logink">
                                        <li class="row-fluid">
                                            <label id="laccount" for="account" class=" text-right z_color">用户名</label>&nbsp;
                  <input class="z_input" type="text" name="accountIDC" id="accountIDC" maxlength="30" onkeyup="accountCheckIDC()" />
                                            <input type="hidden" id="accountFlagIDC" />
                                            <span id="accountRequiredIDC" class=" errors" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入账号</font></span>
                                            <span id="accountNumIDC" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号最少六位</font></span>
                                            <span id="accountRuleIDC" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号为字母、数字、下划线</font></span>
                                            <span id="accountRIDC" class="error" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lpwd" for="pwd" class="text-right z_color">密码</label>&nbsp;
                  <input class="z_input" type="password" onpaste="return false" name="pwdIDC" id="pwdIDC" maxlength="20" onkeyup="pwdCheckIDC()" />
                                            <input type="hidden" id="pwdFlagIDC" />
                                            <span id="pwdRequiredIDC" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入密码</font></span>
                                            <span id="pwdNumIDC" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">密码最少六位</font></span>
                                            <span id="pwdRIDC" class="error2" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error2"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lvalidCode" class=" text-right z_color">验证码</label>&nbsp;
                  <input class="z_input" type="text" name="validCodeIDC" maxlength="4" id="validCodeIDC" style="width: 70px;" onkeyup="validCodeCheckIDC()" />
                                            <span>
                                                <img alt="点击刷新" id="imgs" src="http://beian.gov.cn/common/image.jsp?t=7" style="cursor: pointer;" onclick="this.src='/common/image.jsp?t=7&tim='+new Date().getTime()"></span>
                                            <input type="hidden" id="validCodeFlagIDC" />
                                            <span id="validCodeRequiredIDC" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入验证码</font></span>
                                            <span id="validCodeEIDC" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">验证码错误</font></span>
                                            <span id="validCodeRIDC" class="error3" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error3"></span>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 10px; height: 20px;">
                                            <label class="" style="line-height: 20px; margin-left: 30px; width: 90px;">
                                            </label>
                                            <label class="text-right" style="margin-left: 80px;"><a href="../portal/idcfindpwd">忘记密码？</a></label>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 5px;">
                                            <input type="hidden" value="" name="zz" id="zz" />
                                            <a href="javascript:void(0)" class="btn btn-danger btn-large" style="width: 230px; margin-left: 35px;" id="btn" onclick="loggingIDC()">登录</a>
                                        </li>
                                        <li class="row-fluid" style="">
                                            <label class="text-left z_color " style="width: 260px; margin-left: 40px;">
                                                <a onclick="idcEwm()">显示二维码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  	没有账号？<a href="/user/registerurl?userType=idc">注册</a>
                                            </label>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                            <!-- IDC用户 -->
                            <!-- app市场 -->
                            <div class="tab-pane " id="appMarket" style="display: none;">
                                <form id="loginformApp" autocomplete="off" action="/user/loginAPP" method="post">
                                    <input type="hidden" name="token" value="576c6476-c84b-4c9f-9509-67a993f5ee33" />
                                    <ul class="unstyled controls logink">
                                        <li class="row-fluid" style="position: relative;">
                                            <label id="laccount" for="account" class=" text-right z_color">用户名</label>&nbsp;
                  <input class="z_input" type="text" name="accountApp" id="accountApp" maxlength="30" onkeyup="accountCheckApp()" />
                                            <input type="hidden" id="accountFlagApp" />
                                            <span id="accountRequiredApp" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入账号</font></span>
                                            <span id="accountNumApp" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号最少六位</font></span>
                                            <span id="accountRuleApp" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号为字母、数字、下划线</font></span>
                                            <span id="accountRApp" class="error" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lpwd" for="pwd" class="text-right z_color">密码</label>&nbsp;
                  <input class="z_input" type="password" onpaste="return false" name="pwdApp" id="pwdApp" maxlength="20" onkeyup="pwdCheckApp()" />
                                            <input type="hidden" id="pwdFlagApp" />
                                            <span id="pwdRequiredApp" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入密码</font></span>
                                            <span id="pwdNumApp" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">密码最少六位</font></span>
                                            <span id="pwdRApp" class="error2" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error2"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lvalidCode" class=" text-right z_color">验证码</label>&nbsp;
                  <input class="z_input" type="text" name="validCodeApp" maxlength="4" id="validCodeApp" style="width: 70px;" onkeyup="validCodeCheckApp()" />
                                            <span>
                                                <img alt="点击刷新" id="imgs" src="http://beian.gov.cn/common/image.jsp?t=100" style="cursor: pointer;" onclick="this.src='/common/image.jsp?t=100&tim='+new Date().getTime()"></span>
                                            <input type="hidden" id="validCodeFlagApp" />
                                            <span id="validCodeRequiredApp" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入验证码</font></span>
                                            <span id="validCodeEApp" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">验证码错误</font></span>
                                            <span id="validCodeRApp" class="error3" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error3"></span>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 10px; height: 20px;">
                                            <label class="" style="line-height: 20px; margin-left: 30px; width: 90px;">
                                            </label>
                                            <label class="text-right" style="margin-left: 80px;"><a href="../portal/appfindpwd">忘记密码？</a></label>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 5px;">
                                            <input type="hidden" value="" name="zz" id="zz" />
                                            <a href="javascript:void(0)" class="btn btn-danger btn-large" style="width: 230px; margin-left: 35px;" id="btn" onclick="loggingApp()">登录</a>
                                        </li>
                                        <li class="row-fluid" style="">
                                            <label class="text-left z_color " style="width: 140px; margin-left: 40px;">没有账号？<a href="/user/registerurl?userType=app">注册</a></label>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                            <!-- app市场 -->
                            <!-- CDN用户-->
                            <div class="tab-pane " id="CDNPanel" style="display: none;">
                                <form id="loginformCDN" autocomplete="off" action="/user/loginCDN" method="post">
                                    <input type="hidden" name="token" value="576c6476-c84b-4c9f-9509-67a993f5ee33" />
                                    <ul class="unstyled controls logink">
                                        <li class="row-fluid" style="position: relative;">
                                            <label id="laccount" for="account" class=" text-right z_color">用户名</label>&nbsp;
                  <input class="z_input" type="text" name="accountCDN" id="accountCDN" maxlength="30" onkeyup="accountCheckCDN()" />
                                            <input type="hidden" id="accountFlagCDN" />
                                            <span id="accountRequiredCDN" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入账号</font></span>
                                            <span id="accountNumCDN" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号最少六位</font></span>
                                            <span id="accountRuleCDN" class="error" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">账号为字母、数字、下划线</font></span>
                                            <span id="accountRCDN" class="error" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lpwd" for="pwd" class="text-right z_color">密码</label>&nbsp;
                  <input class="z_input" type="password" onpaste="return false" name="pwdCDN" id="pwdCDN" maxlength="20" onkeyup="pwdCheckCDN()" />
                                            <input type="hidden" id="pwdFlagCDN" />
                                            <span id="pwdRequiredCDN" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入密码</font></span>
                                            <span id="pwdNumCDN" class="error2" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">密码最少六位</font></span>
                                            <span id="pwdRCDN" class="error2" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error2"></span>
                                        </li>
                                        <li class="row-fluid">
                                            <label id="lvalidCode" class=" text-right z_color">验证码</label>&nbsp;
                  <input class="z_input" type="text" name="validCodeCDN" maxlength="4" id="validCodeCDN" style="width: 70px;" onkeyup="validCodeCheckCDN()" />
                                            <span>
                                                <img alt="点击刷新" id="imgs" src="http://beian.gov.cn/common/image.jsp?t=100" style="cursor: pointer;" onclick="this.src='/common/image.jsp?t=100&tim='+new Date().getTime()"></span>
                                            <input type="hidden" id="validCodeFlagCDN" />
                                            <span id="validCodeRequiredCDN" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">请输入验证码</font></span>
                                            <span id="validCodeECDN" class="error3" style="display: none;">
                                                <img src="/img/unchecked.gif"><font color="red">验证码错误</font></span>
                                            <span id="validCodeRCDN" class="error3" style="display: none;">
                                                <img src="/img/checked.gif"></span>
                                            <span class="status error3"></span>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 10px; height: 20px;">
                                            <label class="" style="line-height: 20px; margin-left: 30px; width: 90px;">
                                            </label>
                                            <label class="text-right" style="margin-left: 80px;"><a href="../portal/forgetPwd">忘记密码？</a></label>
                                        </li>
                                        <li class="row-fluid" style="margin-top: 5px;">
                                            <input type="hidden" value="" name="zz" id="zz" />
                                            <a href="javascript:void(0)" class="btn btn-danger btn-large" style="width: 230px; margin-left: 35px;" id="btn" onclick="loggingCDN()">登录</a>
                                        </li>
                                        <li class="row-fluid" style="">
                                            <label class="text-left z_color " style="width: 140px; margin-left: 40px;">没有账号？<a href="/user/registerurl?userType=cdn">注册</a></label>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                            <!-- CDN用户-->
                        </div>
                        <div id="huangYing" class="loginbg_xia" style="position: absolute; right: 0px; bottom: -32px; width: 330px;">
                            欢迎IDC用户下载<a onclick="djxs();"><span style="color: #FFCC00;">智慧IDC</span></a>移动应用软件
                        </div>
                        <!-- end:tab页内容 -->
                    </div>
                    <!-- end:登录框 -->
                    <!-- start:二维码 -->
                    <div id="ewm" style="display: none;">
                        <div>
                            <img id="u1_img" src="/img/ewm1.jpg" /><img id="u2_img" src="/img/ewm2.jpg" />
                        </div>
                        <div class="sao_sao">
                            使用手机扫一扫对应版本的二维码<br />
                            <br />
                            下载<span style="color: #FFCC00;">智慧IDC</span>移动应用软件
        	 	<br />
                            <br />
                            <a onclick="djfh();"><span style="color: #ffffff; margin-left: 194px; cursor: pointer;">点击返回登录页面<span></a>
                        </div>
                    </div>
                    <!-- end:二维码 -->
                </div>
            </div>
            <!-- end:登录 -->
        <div id="over" class="over"></div>
        <div id="layout" class="layout">
            <img src="/img/loading2.gif" />
        </div>

        <div class="container container1 index_content">
            <div class="index_left">
                <div class="tongzhi" style="overflow: hidden;">
                    <p class="z_p">
                        <span class="tit">热点关注</span>
                    </p>
                    <marquee behavior="scroll" direction="down" loop="-1" scrollamount="2" onmouseout="this.start()" onmouseover="this.stop()" vspace="10" height="300">
          <ul class="tz_list">
          
         	 
         		<li>
					 <span class="tz_tit">ycsrcsc.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">hu-bai.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">zwdxx.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">sfx.gov.cn</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">rubber-flex.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">gbyyh.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">instwall.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">tx-jx.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">laiqun.cn</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">shutuo.tv</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">maimaicn.xyz</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">xxtxsb.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">jl465.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">siri-thinktank.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">jianshezhen.shcm.gov.cn</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">happycfc.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">daxi001.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">92wav.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">pingguodj.com</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			 
         		<li>
					 <span class="tz_tit">jlltxw.org.cn</span> 
	             	 <span class="tz_tit_url"> 已备案</span>
             	</li>
			
          </ul>
         </marquee>
                </div>
                
            </div>
            <!-- q前端-->
            <div class="index_right">
                <div class="content">
                    <h5>前端<span><a href="/recordInform.html"><img src="../img/more.gif"></a></span></h5>
                    <ul class="tz_list listr">
                        <li>
                            <a title="中华人民共和国网络安全法" href="/portal/topicDetail?id=54">中华人民共和国网络安全法</a>
                        </li>

                        <li>
                            <a title="中华人民共和国刑法修正案（九 ）" href="/portal/topicDetail?id=42">中华人民共和国刑法修正案（九 ）</a>
                        </li>

                        <li>
                            <a title="最高人民法院关于适用《中华人民共和国行政诉讼法》若干问题的解释 " href="/portal/topicDetail?id=40">最高人民法院关于适用《中华人民共和国行政诉讼法》若干问题的解释 </a>
                        </li>

                        <li>
                            <a title="最高人民法院关于适用《中华人民共和国民事诉讼法》的解释" href="/portal/topicDetail?id=39">最高人民法院关于适用《中华人民共和国民事诉讼法》的解释</a>
                        </li>

                        <li>
                            <a title="关于印发《互联网危险物品信息发布管理规定》的通知" href="/portal/topicDetail?id=37">关于印发《互联网危险物品信息发布管理规定》的通知</a>
                        </li>
                    </ul>
                </div>
                <!--后端 -->
                <div class="content">
                    <h5>后端<span><a href="/recordIssue.html"><img src="../img/more.gif"></a></span></h5>
                    <ul class="tz_list listr">

                        <li>
                            <a title="哪些属于违反九不准的有害信息" href="/portal/topicDetail?id=26">哪些属于违反九不准的有害信息</a>
                        </li>

                        <li>
                            <a title="不履行公安机关联网备案的法律后果" href="/portal/topicDetail?id=8">不履行公安机关联网备案的法律后果</a>
                        </li>

                        <li>
                            <a title="开办者常见问题FAQ" href="/portal/topicDetail?id=50">开办者常见问题FAQ</a>
                        </li>

                        <li>
                            <a title="如何举报和处理互联网违法和不良信息" href="/portal/topicDetail?id=25">如何举报和处理互联网违法和不良信息</a>
                        </li>

                        <li>
                            <a title="哪些属于网络敲诈和有偿删帖有害信息" href="/portal/topicDetail?id=24">哪些属于网络敲诈和有偿删帖有害信息</a>
                        </li>

                    </ul>
                </div>
                <!--移动端 -->
                <div class="content" style="margin-top: 10px;">
                    <h5>移动端<span><a href="/recordNotice.html"><img src="../img/more.gif"></a></span></h5>
                    <ul class="tz_list listr">

                        <li>
                            <a href="/portal/downloadFile?token=576c6476-c84b-4c9f-9509-67a993f5ee33&id=29">
                                <span>互联网站安全服务平台操作指南</span>
                            </a>
                        </li>
                        <li>
                            <a href="/portal/downloadFile?token=576c6476-c84b-4c9f-9509-67a993f5ee33&id=20">
                                <span>全国公安互联网站安全服务平台IDC用户操作手册</span>
                            </a>
                        </li>
                        <li>
                            <a href="/portal/downloadFile?token=576c6476-c84b-4c9f-9509-67a993f5ee33&id=26">
                                <span>互联网安全服务平台APP市场备案使用说明</span>
                            </a>
                        </li>
                        <li>
                            <a href="/portal/downloadFile?token=576c6476-c84b-4c9f-9509-67a993f5ee33&id=22">
                                <span>应用市场接入APP模板</span>
                            </a>
                        </li>
                        <li>
                            <a href="/portal/downloadFile?token=576c6476-c84b-4c9f-9509-67a993f5ee33&id=32">
                                <span>CDN_IP上报模板</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!--新方向 -->
                <div class="content" style="margin-top: 10px;">
                    <h5>新方向<span><a href="/newTech.html"><img src="../img/more.gif"></a></span></h5>
                    <ul class="tz_list listr">


                        <li>
                            <a title="全国打击治理电信网络新型违法犯罪集中宣传月活动启动" href="/portal/topicDetail?id=58">全国打击治理电信网络新型违法犯罪集中宣传月活动启动</a>
                        </li>

                        <li>
                            <a title="公安机关依法查处编造传播九寨沟地震谣言信息的网民" href="/portal/topicDetail?id=57">公安机关依法查处编造传播九寨沟地震谣言信息的网民</a>
                        </li>
                        <li>
                            <a title="人民日报：公安改革　惠及亿万群众" href="/portal/topicDetail?id=56">人民日报：公安改革　惠及亿万群众</a>
                        </li>

                        <li>
                            <a title="新华社：“爱国”幌子下的圈钱骗局——起底“五行币”系列传销案" href="/portal/topicDetail?id=55">新华社：“爱国”幌子下的圈钱骗局——起底“五行币”系列传销案</a>
                        </li>
                        <li>
                            <a title="公安部指挥破获特大网络赌博案 " href="/portal/topicDetail?id=44">公安部指挥破获特大网络赌博案 </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
        </div>
    <input type="hidden" id="dengLuType" value="">
     <div class="z_footerk">
            <p class="z_gap"></p>
            <div class="z_footer" style="padding-bottom: 15px;">
                <!-- <div style="text-align: center;margin:0 auto;width: 550px;"> -->
                <div style="text-align: center; margin: 0 auto; width: 950px; height: 79px;">
                    <div style="width: 700px; height: 79px; margin: 0 auto;">
                        <div style="float: left; padding-right: 26px">
                            <script type="text/javascript">
                                document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript src='http://dcs.conac.cn/js/33/000/0000/60573107/CA330000000605731070007.js' type='text/javascript'%3E%3C/script%3E"));
                            </script>
                        </div>
                        <div style="float: left; font-size: 12px; text-align: center;">
                            <p class="text-center" style="color: #666666;">
                                Copyright2017 公安部网络安全保卫局 All Rights Reserved<br />
                                <a href="http://www.miitbeian.gov.cn">京ICP备05070602号&nbsp;&nbsp;&nbsp;</a>
                                邮箱：<a href="mailto:support@beian.gov.cn">support@beian.gov.cn</a><br />
                                <div style="width: 440px; margin: 0 auto; padding: 0;">
                                    <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102002019" style="display: inline-block; text-decoration: none; height: 20px; line-height: 20px; width: 100%;">
                                        <img src="/img/ghs.png" style="float: left;" />
                                        <p style="float: left; height: 20px; line-height: 20px; margin: 0px 0px 0px 5px; color: #666666;">
                                            京公网安备 11010102002019号
                                        </p>
                                        &nbsp;&nbsp;&nbsp;建议使用1024*768以上分辨率浏览
                                    </a>
                                </div>
                            </p>
                            <form id="recordform" action="/portal/registerSystemInfo" method="post">
                                <input type="hidden" name="recordcode" value="京ICP备030173号" />
                                <input type="hidden" name="token" value="576c6476-c84b-4c9f-9509-67a993f5ee33" />
                            </form>
                        </div>
                        <div style="float: left; padding-right: 26px; padding-top: 10px;">
                            <script id="_jiucuo_" sitecode='bm09000026' src='http://pucha.kaipuyun.cn/exposure/jiucuo.js'></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
