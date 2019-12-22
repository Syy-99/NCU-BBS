<%--
  Created by IntelliJ IDEA.
  User: syy
  Date: 2019/12/19
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台用户中心</title>
    <link rel="stylesheet" type="text/css" href="css/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="css/style2.css" />
</head>
<body>
<div class="header">
    <div class="bar">
        <div class="w1200">
            <span class="l">BBS论坛<font>用户中心</font></span>
            <span class="r"><a href="#"><i class="icon iconfont icon-dianyuan"></i>退出</a></span>
        </div>
    </div>
    <div class="user-info">
        <div class="w1200">
            <div class="user-headface">
                <img src="images/1.jpg" style="width: 100px;height: 100px"/>
            </div>
            <div class="user-account">
                <p class="tip">用户：tomandjerry</p>
            </div>
            <div class="user-modify">
                <a href="#">修改资料></a>
            </div>
        </div>
    </div>
</div>
<div class="main w1200">
    <div class="left">
        <ul>
            <li>
                <a href="#">
                    <i class="iaoicon iconfont icon-fangzidichan"></i>
                    个人资料
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="icon iconfont icon-wenda"></i>
                    修改密码
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="icon iconfont icon-geren"></i>
                    我发布的帖子
                </a>
            </li>
        </ul>
    </div>
    <div class="right">
        <div class="tap">
            <span>系统消息</span>
        </div>
        <div class="container">
            <div class="no-doc">
                <img src="images/no_doc.jpg"/>
                <p>您还没有消息哦~</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
