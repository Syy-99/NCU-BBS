<%@ page import="cn.edu.ncu.Entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/21
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- TITLE OF SITE -->
    <title>管理员界面</title>
    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!--linear icon css-->
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <!--chartist.min.css-->
    <link rel="stylesheet" href="assets/chartist/css/chartist.min.css">
    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!--style.css-->
    <link rel="stylesheet" href="assets/css/style.css">
    <!--responsive.css-->
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
<!-- wrapper -->
<div id="wrapper">

    <!-- navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="javascript:void(0);">
                管理员<span>界面</span>
            </a>
        </div><!--/.brand -->
        <div class="container-fluid">
            <div class="navbar-btn">
                <button type="button" class="btn-toggle-fullwidth">
                    <i class="lnr lnr-arrow-left-circle"></i>
                </button>
            </div><!--/.navbar-btn -->
            <form class="navbar-form navbar-left">
                <div class="search-group">
                    <button type="button"><i data-feather="search"></i></button>
                    <input type="text" value="" placeholder="Search..">
                </div><!--/.search-group -->
            </form><!--/form -->
            <div class="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="glyphicon glyphicon-bell"></i>
                            <span class="badge badge-bg-1">2</span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
                            <li><a href="#" class="more">See all notifications</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="glyphicon glyphicon-envelope"></i>
                            <span class="badge badge-bg-1">3</span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
                            <li><a href="#" class="more">See all notifications</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="assets/images/parson.png" class="img-circle" alt="parson-img">
                            <i class="icon-submenu fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
                            <li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
                            <li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
                            <li><a href="#"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div><!--/.container-fluid -->
    </nav><!--/nav -->
    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li class="active">
                        <a href="index.html" >
                            <i class="glyphicon glyphicon-home" style="padding-left: 10px"></i> <span>查看用户信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-book" style="padding-left: 10px"></i> <span>查看帖子信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-camera" style="padding-left: 10px"></i> <span>其他</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- MAIN -->
    <div class="main">

        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <div class="main-content-head">
                    <h2>Welcome!</h2>
                    <p>欢迎来到管理员界面</p>
                </div>
                <div class="row">
                    <div class="col-sm-8">
                        <div class="box">
                            <div class="box-head">
                                <h2>查看所有用户信息</h2>
                            </div><!--/.box-head-->
                            <div class="item">
                                <div class="item-responsive ">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>用户账号</th>
                                            <th>用户昵称</th>
                                            <th>用户密码</th>
                                            <th colspan="2" style="text-align: center">操作</th>
                                        </tr>
                                        </thead><!--/thead-->
                                        <tbody>
                                        <%
                                            List<User> list = (List<User>) session.getAttribute("userList");
                                            for(User user:list){
                                        %>
                                        <form method="post">
                                        <tr>
                                            <td><input type="text" value="<%=user.getUid()%>" style="border: none" readonly name="uid"></td>
                                            <td><input type="text" value="<%=user.getUname()%>" style="border: none" name="uname"></td>
                                            <td><input type="text" value="<%=user.getUpassword()%>" style="border: none" name="upassword"></td>
                                            <td><input type="submit" value="删除" class="btn btn-danger" onclick="javascript:this.form.action='../admin/deleteUser'"></td>
                                            <td><input type="submit" value="修改" class="btn btn-primary" onclick="javascript:this.form.action='../admin/updateUser'"></td>
                                        </tr>
                                        </form>
                                        <%
                                            }
                                        %>
                                        </tbody><!--/tbody-->
                                    </table><!--/.table-->
                                </div><!--/.table-responsive-->
                            </div><!--/.item-->
                        </div><!--/.box-->
                    </div><!--/.col-->
                </div>
            </div><!--/.main-content-->
        </div>
    </div><!-- END MAIN -->
</div><!-- END WRAPPER -->
    <!--jquery-1.12.4.min.js-->
    <script  src="assets/js/jquery.min.js"></script>
    <!--chartist.min.js-->
    <script src="assets/chartist/js/chartist.min.js"></script>
    <script src="assets/chartist/js/chartist-tooltip-plugin.js"></script>
    <script src="assets/chartist/js/chartist-custom.js"></script>
    <!--bootstrap.min.js-->
    <script src="assets/js/bootstrap.min.js"></script>
    <!--jquery.slimscroll.min.js-->
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <!--feather.min.js-->
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <!-- DataMaps Plugin Js -->
    <script src="assets/js/d3.min.js"></script>
    <script src="assets/js/topojson.js"></script>
    <script src="assets/js/datamaps.world.min.js"></script>
    <!--fontawesome-all.min.js-->
    <script src="assets/js/fontawesome-all.min.js"></script>
    <!--Custom JS-->
    <script src="assets/js/custom.js"></script>
</body>
</html>
