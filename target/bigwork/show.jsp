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

</body>
</html>
