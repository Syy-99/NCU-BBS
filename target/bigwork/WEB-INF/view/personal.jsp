<%@ page import="cn.edu.ncu.Entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 余航
  Date: 2019/12/17
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %><%--isELIgnored="false"--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="../css/style2.css" />
    <script type="text/javascript">
        function check(id) {
            document.getElementById('table1').style.display='none';
            document.getElementById('table2').style.display='none';
            document.getElementById('table3').style.display='none';
            document.getElementById(id).style.display='inline';
        }
    </script>
</head>
<body onload="showPersonalPost()">
    <%
        User user = (User) session.getAttribute("PersonalData");
        if(user.getUname() == null || user.getUname().length() == 0){
            user.setUname("");
        }
        if(user.getAge() == null || user.getAge().length() == 0){
            user.setAge("");
        }
        if(user.getAddress() == null || user.getAddress().length() == 0){
            user.setAddress("");
        }
        if(user.getSex() == null || user.getSex().length() == 0){
            user.setSex("");
        }
        if(user.getIntroduction() == null || user.getIntroduction().length() == 0){
            user.setIntroduction("");
        }
        if(user.getEmail() == null || user.getEmail().length() == 0){
            user.setEmail("");
        }
        if(user.getBonus() == null || user.getBonus().length() == 0){
            user.setBonus("0");
        }
    %>
    <div class="header">
        <div class="bar">
            <div class="w1200">
                <span class="l">BBS论坛<font>用户中心</font></span>
                <span class="r"><a href="../../main.jsp"><i class="icon iconfont icon-dianyuan"></i>返回</a></span>
            </div>
        </div>
        <div class="user-info">
            <div class="w1200">
                <div class="user-headface">
                    <img src="../images/1.jpg" style="width: 100px;height: 100px"/>
                </div>
                <div class="user-account">
                    <p class="tip">用户：<%=user.getUname()%></p>
                </div>
                <div class="user-modify" style="color: white">
                    <a onclick="editUser()" data-toggle="modal" data-target="#user_d">修改资料</a>
                </div>
            </div>
        </div>
    </div>
    <div class="main w1200">
        <div class="left">
            <ul>
                <li>
                    <a href="javascript:void(0);" onclick="check('table1')">
                        <i class="iaoicon iconfont icon-fangzidichan"></i>
                        个人资料
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="check('table2')">
                        <i class="icon iconfont icon-wenda"></i>
                        修改密码
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0);" onclick="check('table3')">
                        <i class="icon iconfont icon-geren"></i>
                        我发布的帖子
                    </a>
                </li>
            </ul>
        </div>
        <div class="right">
            <div class="tap">
                <span>信息</span>
            </div>
                <div class="no-doc">
                    <table class="table table-hover" id="table1" style="display: inline;">
                        <caption style="text-align: center;font-weight: bold">个人资料</caption>
                        <tr>
                            <td style="font-size: 22px;width: 480px">昵称</td>
                            <td style="width: 480px"><%=user.getUname()%></td>
                        </tr>
                        <tr>
                            <td>性别</td>
                            <td><%=user.getSex()%></td>
                        </tr>
                        <tr>
                            <td>年龄</td>
                            <td><%=user.getAge()%></td>
                        </tr>
                        <tr>
                            <td>居住地</td>
                            <td><%=user.getAddress()%></td>
                        </tr>
                        <tr>
                            <td>个人简介</td>
                            <td><%=user.getIntroduction()%></td>
                        </tr>
                        <tr>
                            <td>电子邮箱</td>
                            <td><%=user.getEmail()%></td>
                        </tr>
                        <tr>
                            <td>积分</td>
                            <td><%=user.getBonus()%></td>
                        </tr>
                    </table>

                    <%--修改密码--%>
                    <table class="table table-hover" id="table2" style="display: none">
                        <caption style="text-align: center;font-weight: bold">修改密码</caption>
                        <form class="form-horizontal">
                            <tr>
                                <td width="980px">
                                    <div class="form-group">
                                        <label class="col-sd-2 control-label">原密码</label>
                                        <div class="col-sd-10">
                                            <input type="password" class="form-control">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label class="col-sd-2 control-label">新密码</label>
                                        <div class="col-sd-10">
                                            <input type="password" class="form-control">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <div class="col-sd-offset-2 col-sd-10">
                                            <button type="submit" class="btn btn-primary">提交</button>
                                            <button type="reset" class="btn btn-danger">清空</button>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </form>
                    </table>
                    <table class="table table-hover" id="table3" style="display: none">

                    </table>
                </div>
            </div>
    </div>


<%--模态框--%>
    <div id="user_d" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                        <h3 class="modal-title text-center" id="exampleModalLabel">编辑个人资料</h3>
                    </div>
                    <div class="modal-body" id="user_Edit_all"></div>
                </div>
            </div>
        </div>
    </div>
<script language="JavaScript">
    function showPersonalPost() {
        $.ajax({
            type: "post",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "<%=request.getContextPath()%>/post/getByUId",//url
            success: function (data) {

                var a =data;
                var b="";
                for(var i=a.length-1;i>=0;i--){

                    console.log(a[i].time);

                    var showPersonalPost = "";
                    showPersonalPost =
                        '<tr>'+
                        '<td style="width: 350px;">'+
                        '<form action="" method="post" id="'+a[i].pid+'">'+
                        '<input type="hidden" name="pid" value="'+a[i].pid+'">'+
                        '</form>'+
                        '<h4>'+
                        '<b>'+a[i].pname+'</b>'+
                        '</h4>'+
                        '</td>'+
                        '<td style="width: 350px;">'+
                        a[i].time+
                        '</td>'+
                        '<td style="width: 100px">'+
                        '<button class="btn btn-primary">修改</button>'+
                        '</td>'+
                        '<td style="width: 150px">'+
                        '<button type="button" class="btn btn-danger" onclick="jump('+a[i].pid+')">删除</button>'+
                        '</td>'+
                        '</tr>';

                    b+=showPersonalPost;
                }
                $("#table3").html(b);
            },/*success function*/
            error: function () {
                alert("error!");
            }
        });
    }
    function jump(pid) {
        document.getElementById(pid).action="<%=request.getContextPath()%>/user/deleteByPId";
        document.getElementById(pid).submit();
    }

    function editUser() {

        $.ajax({
            //几个参数需要注意一下
            type: "post",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "<%=request.getContextPath()%>/user/editByUId",//url
            success: function (data) {

                var a= data;
                var user_Edit_all = "";

                var uname = "";
                var sex = "";
                var age = "";
                var address = "";
                var introduction = "";
                var email = "";



                if (a[0].age == null){
                    age = "";
                }else {
                    age = a[0].age;
                }
                if (a[0].address == null){
                    address = "";
                }else {
                    address = a[0].address;
                }
                if (a[0].uname == null){
                    uname = "";
                }else {
                    uname = a[0].uname;
                }
                if (a[0].introduction == null){
                    introduction = "";
                }else {
                    introduction = a[0].introduction;
                }
                if (a[0].email == null){
                    email = "";
                }else {
                    email = a[0].email;
                }


                var sex_checkM = "";
                var sex_checkW = "";

                if (a[0].sex==null){
                    sex_checkM = "";
                    sex_checkW = "";
                } else {
                    sex = a[0].sex;
                    if(sex=="男"){
                        sex_checkM = "checked";
                    }else {
                        sex_checkW = "checked";
                    }

                }

                user_Edit_all =

                    '<form id="form_userUpdate" method="post" class="form-horizontal">' +
                    '<input type="hidden" class="form-control" id="uid" name="uid" value="'+a[0].uid+'">' +
                    '' +
                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">用户名</label>' +
                    '<div class="col-sm-10">' +
                    '<input type="text" class="form-control" id="uname" name="uname" value="'+uname+'">' +
                    '</div>' +
                    '</div>' +


                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">性别</label>' +
                    '<div class="col-sm-10">' +
                    '<label class="radio-inline">' +
                    '<input type="radio" name="sex" id="sex1" value="男" '+sex_checkM+'>男'+
                    '</label>' +
                    '<label class="radio-inline">' +
                    '<input type="radio" name="sex" id="sex2" value="女"'+sex_checkW+'>女'+
                    '</label>' +
                    '</div>' +
                    '</div>' +


                    '<div class="form-group">' +
                    '<label for="age" class="col-sm-2 control-label">年龄</label>' +
                    '<div class="col-sm-10">' +
                    '<input type="text" class="form-control" id="age" name="age" value="'+age+'">' +
                    '</div>' +
                    '</div>' +



                    '<div class="form-group">' +
                    '<label class="col-sm-2 control-label">Email</label>' +
                    '<div class="col-sm-10">' +
                    '<input type="text" class="form-control" id="email" name="email" value="'+email+'">' +
                    '</div>' +
                    '</div>' +


                    '<div class="form-group">' +
                    '<label for="family" class="col-sm-2 control-label">家庭住址</label>' +
                    '<div class="col-sm-10">' +
                    '<input type="text" class="form-control" id="address" name="address" value="'+address+'">' +
                    '</div>' +
                    '</div>' +
                    '<div class="form-group">' +
                    '<label for="intro" class="col-sm-2 control-label">个人简介</label>' +
                    '<div class="col-sm-10">' +
                    '<textarea class="form-control" id="introduction" name="introduction" style="position: relative;height: 150px;">'+introduction+'</textarea>' +
                    '</div>' +
                    '</div>' +
                    '' +
                    '<div class="modal-footer">' +
                    '<button type="reset" class="btn btn-default">还原</button>' +
                    '<input type="button"  class="btn btn-primary" onclick="send()" value="保存">' +
                    '</div>' +
                    '</form>';
                $("#user_Edit_all").html(user_Edit_all);
            },/*success function*/
            error: function () {
                alert("error!");
            }
        });
    }

    function send() {
        document.getElementById("form_userUpdate").action="<%=request.getContextPath()%>/user/userEdit";
        document.getElementById("form_userUpdate").submit();
    }

</script>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>
