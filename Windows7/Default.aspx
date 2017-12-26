<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Welcome</title>
        <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="css/font/segoeui.css">
        <link rel="stylesheet" type="text/css" href="css/controls.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <script type="text/javascript" src="js/lib/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="js/lib/jquery-ui.js"></script>
        <script type="text/javascript" src="js/lib/preloadjs-0.4.0.min.js"></script>
        <script type="text/javascript" src="js/lib/soundjs-0.5.0.min.js"></script>

        <script type="text/javascript" src="js/helper.js"></script>
        <script type="text/javascript" src="js/windows.js"></script>
        <script type="text/javascript" src="js/windowsmanager.js"></script>
        <script type="text/javascript" src="js/appmanager.js?4"></script>
        <script type="text/javascript" src="js/main.js"></script>

</head>
<body>
     <bootscreen>
            <div class="center">
                <p>Starting Windows</p>
            </div>
      </bootscreen>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <screen>
            <desktop>
                <icon class="shortcut" id="recycle_bin">
                    <div class="picture">
                        <img src="images/icons/recycle_bin.png">
                    </div>
                    <div class="name">
                        <span>回收站</span>
                    </div>
                </icon>
            </desktop>
            <windows>
            </windows>
        	<taskbar>
                <startmenupanel>
                    <div id="recent_program">
                        <div class="recent_program_item" appname="wordpress">
                            <div class="icon">
                                <img src="images/icons/wordpress.png" />
                            </div>
                            <div class="program_name">
                                <span>My blog</span>
                            </div>
                        </div>
                        <div class="recent_program_item" appname="chessjs">
                            <div class="icon">
                                <img src="images/icons/chessjs.png"/>
                            </div>
                            <div class="program_name">
                                <span>ChessJS</span>
                            </div>
                        </div>
                        <div class="recent_program_item" appname="w36kr">
                            <div class="icon">
                                <img src="images/icons/logo_36kr.png"/>
                            </div>
                            <div class="program_name">
                                <span>36Kr</span>
                            </div>
                        </div>
                        <div class="recent_program_item" appname="schoolrevisiontool">
                            <div class="icon">
                                <img src="images/icons/schoolrevisiontool.png"/>
                            </div>
                            <div class="program_name">
                                <span>Learn it by heart</span>
                            </div>
                        </div>
                        <div class="recent_program_item" appname="smartdoge">
                            <div class="icon">
                                <img src="images/icons/smartdoge.png"/>
                            </div>
                            <div class="program_name">
                                <span>Smart Doge</span>
                            </div>
                        </div>
                        <div class="recent_program_item" appname="cstrike">
                            <div class="icon">
                                <img src="images/icons/cstrike.png"/>
                            </div>
                            <div class="program_name">
                                <span>Counter Strike 1.6</span>
                            </div>
                        </div>

                        <div class="recent_program_item" appname="github_explorer">
                            <div class="icon">
                                <img src="images/icons/github_explorer.png" />
                            </div>
                            <div class="program_name">
                                <span>GitHub Explorer</span>
                            </div>
                        </div>

                        <div class="recent_program_item">
                            <div class="icon">
                                <img src="images/icons/chrome.png"/>
                            </div>
                            <div class="program_name">
                                <span>Google Chrome</span>
                            </div>
                        </div>
                        <div class="recent_program_item">
                            <div class="icon">
                                <img src="images/icons/war3.png" />
                            </div>
                            <div class="program_name">
                                <span>World of Warcraft</span>
                            </div>
                        </div>
                        <div class="recent_program_item">
                            <div class="icon">
                                <img src="images/icons/photoshop.png" />
                            </div>
                            <div class="program_name">
                                <span>Photoshop CS6</span>
                            </div>
                        </div>
                        <div id="bottom_bar">
                            <hr class="blue_line sidepadding"/>
                            <div id="all_programs">
                                <img src="css/images/right_arrow.png" /> <span>All Programs</span>
                            </div>
                            <div id="search_box">
                                <input type="text" placeholder="查找程序和文件" />
                            </div>
                        </div>
                    </div>
                    <div id="shortcuts">
                        <h1>Hades</h1>
                        <h1>文档</h1>
                        <h1>图片</h1>
                        <h1>音乐</h1>
                        <hr/>
                        <h1>游戏</h1>
                        <h1>计算机</h1>
                        <hr/>
                        <h1>控制面板</h1>
                        <h1>打印机</h1>
                        <h1>默认程序</h1>
                        <h1>帮助</h1>
                    </div>
                    <div id="avatar">
                        <div class="mask"></div>
                        <img src="images/TrungDQ_150x150.jpg"/>
                    </div>
                    <div id="powerbutton">
                        <span class="glass-button">关机</span>
                        <span style="padding: 1px 6px; margin-left: -2px" class="glass-button"><img src="css/images/small_arrow.png"/></span>
                    </div>
                </startmenupanel>
                <startmenu>
                    <img src="css/images/startmenu_hover.png"/>
                </startmenu>
                <quicklaunch>
                </quicklaunch>
                <tasks>
                </tasks>
                <notifications>
                </notifications>
                <datetime>
                </datetime>
                <areopeak></areopeak>
            </taskbar>
        </screen>
</body>
</html>
