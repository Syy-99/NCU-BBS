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
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <script src="js/bootstrap.min.js"></script>
    <title>管理员界面</title>
</head>
<body>
<table class="table table-hover table-condensed" style="width: 300px;height: 200px;margin-left: 400px">
    <caption>
        <h2 style="text-align: center">当前系统所有用户</h2>
    </caption>
    <thead>
        <tr>
            <th>用户账号</th>
            <th>用户昵称</th>
            <th>用户密码</th>
            <th colspan="2" style="text-align: center">操作</th>
        </tr>
    </thead>
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
</table>
<hr>
<table class="table table-hover table-condensed">
    <caption>
        <h2 style="text-align: center">当前系统所有帖子</h2>
    </caption>
    <thead>
        <tr>
            <th>名称</th>
            <th>板块</th>
            <th>内容</th>
            <th>等级</th>
            <th>奖励</th>
            <th>时间</th>
            <th>发帖人昵称</th>
            <th>状态</th>
            <th colspan="2" style="text-align: center">操作</th>
        </tr>
    </thead>
    <%
        List<Post> list1 = (List<Post>) session.getAttribute("postList");
        for(Post post:list1){
    %>
    <form method="post">
        <tr>
            <input type="hidden" value="<%=post.getPid()%>" style="border: none" readonly name="pid">
            <td><input type="text" value="<%=post.getPname()%>" style="border: none" name="pname"></td>
            <td><input type="text" value="<%=post.getType()%>" style="border: none;width: 50px" name="type"></td>
            <td><input type="text" value="<%=post.getContent()%>" style="border: none" name="content"></td>
            <td><input type="text" value="<%=post.getRank()%>" style="border: none;width: 30px" name="rank"></td>
            <td><input type="text" value="<%=post.getBonus()%>" style="border: none;width: 50px" name="bonus"></td>
            <td><input type="text" value="<%=post.getTime()%>" style="border: none" name="time"></td>
            <td><input type="text" value="<%=post.getUname()%>" style="border: none" name="uname"></td>
            <td><input type="text" value="<%=post.getStatus()%>" style="border: none;width: 30px" name="status"></td>
            <td><input type="submit" value="删除" class="btn btn-danger" onclick="javascript:this.form.action='../admin/deletePost'"></td>
            <td><input type="submit" value="修改" class="btn btn-primary" onclick="javascript:this.form.action='../admin/updatePost'"></td>
        </tr>
    </form>
    <%
        }
    %>
</table>

</body>
</html>
