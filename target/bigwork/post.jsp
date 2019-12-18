<%--
  Created by IntelliJ IDEA.
  User: syy
  Date: 2019/12/17
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

//    获得user id name
%>
    <form action="post/savePost" method="post">
        帖子标题：<input type="text" name="pname" required><br>
        发布版块：<select name="type" required>
            <option value="1">1</option>
            <option value="1">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select><br>
        设置奖励：<input type="number" name="bonus" min="0"><br>
        帖子内容:<br>
        <textarea name="content" required style="height: 100px;width: 200px;resize: none;"></textarea><br>
        <input type="submit" name="确认发布">
        <input type="reset" name="重置信息">
    </form>
</body>
</html>
