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
    <title>登录界面</title>
</head>
<body>
    <form method="post" action="user/testUser">
        账号：<input type="text" name="uid"><br>
        密码：<input type="password" name="upassword"><br>
        <input type="submit" value="登录">
    </form>
</body>
</html>
