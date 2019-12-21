<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<<<<<<< HEAD
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录界面</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
</head>
<body>
    <div class="container demo-1">
        <div class="content">
            <div id="large-header" class="large-header">
                <canvas id="demo-canvas"></canvas>
                <div class="logo_box">
                    <h3>欢迎来到校园BBS系统</h3>
                    <form action="" method="post">
                        <div class="input_outer">
                            <span class="u_user"></span>
                            <input name="uid" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账号">
                        </div>
                        <div class="input_outer">
                            <span class="us_uer"></span>
                            <input name="upassword" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                        </div>
                        <div style="text-align:center;letter-spacing:75px;">
                            <input class="act-but submit" type="submit" onclick="javascript:this.form.action='../user/testUser';" style="color: #FFFFFF;width:120px" value="登录" >
                            <input class="act-but submit" type="submit" onclick="javascript:this.form.action='register.jsp';" style="color: #FFFFFF;width:120px" value="注册">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div><!-- /container -->
    <script src="js/TweenLite.min.js"></script>
    <script src="js/EasePack.min.js"></script>
    <script src="js/rAF.js"></script>
    <script src="js/demo-1.js"></script>
=======
    <title>登录界面</title>
</head>
<body>
    <form method="post" action="user/testUser">
        账号：<input type="text" name="uid"><br>
        密码：<input type="password" name="upassword"><br>
        <input type="submit" value="登录">
    </form>
>>>>>>> d6509fca00d16156a3ea3365b3311fcfb36e5023
</body>
</html>
