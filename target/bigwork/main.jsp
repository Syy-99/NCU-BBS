<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<<<<<<< HEAD
    <script src="js/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
<%--    <input type="button" onclick="document.location.href='./post.jsp'" value="发帖">--%>
<button id="triggerBtn">发帖</button>
<input type="button" value="个人中心" onclick="document.location.href='../user/getByUId'">
<!-- 模态框 -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2 style="text-align: center">登录信息</h2>
            <span id="closeBtn" class="close">×</span>
        </div>
        <div class="modal-body">
            <form action="post/savePost" method="post">
                帖子标题：<input type="text" name="pname" required><br>
                发布版块：<select name="type" required style="width:100px;">
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
        </div>
        <div class="modal-footer">
            <h3>尾部</h3>
        </div>
    </div>
</div>
<script src="js/main.js"></script>

=======
</head>
<body>
    <input type="button" onclick="document.location.href='./post.jsp'" value="发帖">
    <input type="button" value="个人中心" onclick="document.location.href='../user/getByUId'">
>>>>>>> d6509fca00d16156a3ea3365b3311fcfb36e5023
</body>
</html>
