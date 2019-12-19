<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/18
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%  session = request.getSession();
        String path = (String) session.getAttribute("newFileName");
        path = "/java/"+path;
    %>
</head>
<body>
    <h2>图片上传</h2>
    <form action="image/test" method="post" enctype="multipart/form-data">
        <input type="file" name="uploadFile" accept="image/*"><br>
        <input type="submit" value="上传">
    </form>
    <hr>
    <h2>图片显示</h2>
    <img src=<%=path%> width="200px" height="180px">
</body>
</html>
