<%@ page import="cn.edu.ncu.Entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.edu.ncu.Entity.Post" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/17
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<<<<<<< HEAD
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>管理员界面</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!--linear icon css-->
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <!--chartist.min.css-->
    <link rel="stylesheet" href="assets/chartist/css/chartist.min.css">
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
                            <li><a href="#"><i class="lnr lnr-user"></i> <span>我的文件</span></a></li>
                            <li><a href="#"><i class="lnr lnr-envelope"></i> <span>我的信息</span></a></li>
                            <li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
                            <li><a href="#"><i class="lnr lnr-exit"></i> <span>退出登录</span></a></li>
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
                        <a href="javascript:void(0);" onclick="change('table1')">
                            <i class="glyphicon glyphicon-home" style="padding-left: 10px"></i> <span>查看用户信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" onclick="change('table2')">
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
                        <div class="box">
                            <div class="box-head">
                                <h2>查看所有信息</h2>
                            </div><!--/.box-head-->
                            <div class="item">
                                <div class="item-responsive ">
                                    <table class="table" id="table1" style="display: none;">
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
                                    <table class="table" id="table2" style="display: none;">
                                        <thead>
                                        <tr>
                                            <th>名称</th>
                                            <th>板块</th>
                                            <th>内容</th>
                                            <th>等级</th>
                                            <th>奖励</th>
                                            <th>时间</th>
                                            <th>昵称</th>
                                            <th>状态</th>
                                            <th colspan="5" style="text-align: center">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            List<Post> list1 = (List<Post>) session.getAttribute("postList");
                                            for(Post post:list1){
                                        %>
                                        <form method="post">
                                            <tr>
                                                <input type="hidden" value="<%=post.getPid()%>" style="border: none" readonly name="pid">
                                                <td><textarea class="form-control" rows="3" name="pname" style="resize: none;"><%=post.getPname()%></textarea></td>
                                                <td><input type="text" value="<%=post.getType()%>" style="border: none;width: 50px" name="type"></td>
                                                <td><textarea class="form-control" rows="3" name="content" style="resize: none;width: 250px"><%=post.getContent()%></textarea></td>
                                                <td><input type="text" value="<%=post.getRank()%>" style="border: none;width: 30px" name="rank"></td>
                                                <td><input type="text" value="<%=post.getBonus()%>" style="border: none;width: 50px" name="bonus"></td>
                                                <td><input type="text" value="<%=post.getTime()%>" style="border: none" name="time"></td>
                                                <td><input type="text" value="<%=post.getUname()%>" style="border: none;width: 50px;" name="uname"></td>
                                                <td><input type="text" value="<%=post.getStatus()%>" style="border: none;width: 30px" name="status"></td>
                                                <td><input type="submit" value="删除" class="btn btn-danger" onclick="javascript:this.form.action='../admin/deletePost'"></td>
                                                <td><input type="submit" value="修改" class="btn btn-primary" onclick="javascript:this.form.action='../admin/updatePost'"></td>
                                                <td><input type="submit" value="置顶" class="btn btn-info" onclick="javascript:this.form.action='../admin/top'"></td>
                                                <td><input type="submit" value="加精" class="btn btn-warning" onclick="javascript:this.form.action='../admin/add'"></td>
                                                <td><input type="submit" value="审核" class="btn btn-success" onclick="javascript:this.form.action='../admin/check'"></td>
                                            </tr>
                                        </form>
                                        <%
                                            }
                                        %>
                                        </tbody><!--/tbody-->
                                    </table>
                                </div><!--/.table-responsive-->
                            </div><!--/.item-->
                        </div><!--/.box-->
                    </div><!--/.col-->
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
<script type="text/javascript">
    function change(id) {
        document.getElementById('table1').style.display='none';
        document.getElementById('table2').style.display='none';
        document.getElementById(id).style.display='inline';
    }
</script>























<%--    <div class="container" style="width: 100%">--%>
<%--        <div class="row">--%>
<%--            <div class="col-sm-1">--%>
<%--                <ul class="nav nav-pills nav-stacked">--%>
<%--                    <li role="presentation" class="active"><a href="javascript:void(0);" onclick="change('table1')">显示所有用户</a></li>--%>
<%--                    <li role="presentation"><a href="javascript:void(0);" onclick="change('table2')">显示所有帖子</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="col-sm-11">--%>
<%--                <table class="table table-hover table-condensed" style="width: 300px;height: 200px;display: none"  >--%>
<%--                    <caption>--%>
<%--                        <h2 style="text-align: center">当前系统所有用户</h2>--%>
<%--                    </caption>--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>用户账号</th>--%>
<%--                        <th>用户昵称</th>--%>
<%--                        <th>用户密码</th>--%>
<%--                        <th colspan="2" style="text-align: center">操作</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <%--%>
<%--                        List<User> list = (List<User>) session.getAttribute("userList");--%>
<%--                        for(User user:list){--%>
<%--                    %>--%>
<%--                    <form method="post">--%>
<%--                        <tr>--%>
<%--                            <td><input type="text" value="<%=user.getUid()%>" style="border: none" readonly name="uid"></td>--%>
<%--                            <td><input type="text" value="<%=user.getUname()%>" style="border: none" name="uname"></td>--%>
<%--                            <td><input type="text" value="<%=user.getUpassword()%>" style="border: none" name="upassword"></td>--%>
<%--                            <td><input type="submit" value="删除" class="btn btn-danger" onclick="javascript:this.form.action='../admin/deleteUser'"></td>--%>
<%--                            <td><input type="submit" value="修改" class="btn btn-primary" onclick="javascript:this.form.action='../admin/updateUser'"></td>--%>
<%--                        </tr>--%>
<%--                    </form>--%>
<%--                    <%--%>
<%--                        }--%>
<%--                    %>--%>
<%--                </table>--%>
<%--                <table class="table table-hover table-condensed" style="display: none" id="table2">--%>
<%--                    <caption>--%>
<%--                        <h2 style="text-align: center">当前系统所有帖子</h2>--%>
<%--                    </caption>--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>名称</th>--%>
<%--                        <th>板块</th>--%>
<%--                        <th>内容</th>--%>
<%--                        <th>等级</th>--%>
<%--                        <th>奖励</th>--%>
<%--                        <th>时间</th>--%>
<%--                        <th>发帖人昵称</th>--%>
<%--                        <th>状态</th>--%>
<%--                        <th colspan="5" style="text-align: center">操作</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <%--%>
<%--                        List<Post> list1 = (List<Post>) session.getAttribute("postList");--%>
<%--                        for(Post post:list1){--%>
<%--                    %>--%>
<%--                    <form method="post">--%>
<%--                        <tr>--%>
<%--                            <input type="hidden" value="<%=post.getPid()%>" style="border: none" readonly name="pid">--%>
<%--                            <td><textarea class="form-control" rows="3" name="content" style="width: 80%;resize: none;height:100px;"><%=post.getPname()%></textarea></td>--%>
<%--&lt;%&ndash;                            <td><input type="text" value="<%=post.getPname()%>" style="border: none" name="pname"></td>&ndash;%&gt;--%>
<%--                            <td><input type="text" value="<%=post.getType()%>" style="border: none;width: 50px" name="type"></td>--%>
<%--                            <td><textarea class="form-control" rows="3" name="content" style="width: 80%;resize: none;height:180px;"><%=post.getContent()%></textarea></td>--%>
<%--                            <td><input type="text" value="<%=post.getRank()%>" style="border: none;width: 30px" name="rank"></td>--%>
<%--                            <td><input type="text" value="<%=post.getBonus()%>" style="border: none;width: 50px" name="bonus"></td>--%>
<%--                            <td><input type="text" value="<%=post.getTime()%>" style="border: none" name="time"></td>--%>
<%--                            <td><input type="text" value="<%=post.getUname()%>" style="border: none" name="uname"></td>--%>
<%--                            <td><input type="text" value="<%=post.getStatus()%>" style="border: none;width: 30px" name="status"></td>--%>
<%--                            <td><input type="submit" value="删除" class="btn btn-danger" onclick="javascript:this.form.action='../admin/deletePost'"></td>--%>
<%--                            <td><input type="submit" value="修改" class="btn btn-primary" onclick="javascript:this.form.action='../admin/updatePost'"></td>--%>
<%--                            <td><input type="submit" value="审核" class="btn btn-success" onclick="javascript:this.form.action='../admin/check'"></td>--%>
<%--                            <td><input type="submit" value="加精" class="btn btn-warning" onclick="javascript:this.form.action='../admin/add'"></td>--%>
<%--                            <td><input type="submit" value="置顶" class="btn btn-info" onclick="javascript:this.form.action='../admin/top'"></td>--%>
<%--                        </tr>--%>
<%--                    </form>--%>
<%--                    <%--%>
<%--                        }--%>
<%--                    %>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<hr>
=======
    <title>管理员界面</title>
</head>
<body>
<table border="1">
    <caption>当前系统所有用户</caption>
    <th>用户账号</th>
    <th>用户昵称</th>
    <th>用户密码</th>
    <th>操作</th>
    <%
        List<User> list = (List<User>) session.getAttribute("userList");
        for(User user:list){
    %>
    <form method="post">
        <tr>
            <td><input type="text" value="<%=user.getUid()%>" name="uid"></td>
            <td><input type="text" value="<%=user.getUname()%>" name="uname"></td>
            <td><input type="text" value="<%=user.getUpassword()%>" name="upassword"></td>
            <td><input type="submit" value="删除" onclick="javascript:this.form.action='../admin/deleteUser'">
                <input type="submit" value="修改" onclick="javascript:this.form.action='../admin/updateUser'">
            </td>
        </tr>
    </form>
    <%
        }
    %>
</table>
<hr>
<table border="1">
    <caption>当前系统所有帖子</caption>
    <th>帖子id</th>
    <th>帖子名称</th>
    <th>帖子板块</th>
    <th>帖子内容</th>
    <th>帖子等级</th>
    <th>帖子奖励</th>
    <th>帖子时间</th>
    <th>发帖人昵称</th>
    <th>帖子状态</th>
    <th>操作</th>
    <%
        List<Post> list1 = (List<Post>) session.getAttribute("postList");
        for(Post post:list1){
    %>
    <form method="post">
        <tr>
            <td><input type="text" value="<%=post.getPid()%>" name="pid"></td>
            <td><input type="text" value="<%=post.getPname()%>" name="pname"></td>
            <td><input type="text" value="<%=post.getType()%>" name="type"></td>
            <td><input type="text" value="<%=post.getContent()%>" name="content"></td>
            <td><input type="text" value="<%=post.getRank()%>" name="rank"></td>
            <td><input type="text" value="<%=post.getBonus()%>" name="bonus"></td>
            <td><input type="text" value="<%=post.getTime()%>" name="time"></td>
            <td><input type="text" value="<%=post.getUname()%>" name="uname"></td>
            <td><input type="text" value="<%=post.getStatus()%>" name="status"></td>
            <td><input type="submit" value="删除" onclick="javascript:this.form.action='../admin/deletePost'">
                <input type="submit" value="修改" onclick="javascript:this.form.action='../admin/updatePost'">
            </td>
        </tr>
    </form>
    <%
        }
    %>
</table>
>>>>>>> d6509fca00d16156a3ea3365b3311fcfb36e5023

</body>
</html>
