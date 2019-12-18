<%@ page import="cn.edu.ncu.Entity.User" %>
<%@ page import="java.util.List" %><%--
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
<table>
    <%
        List<User> list = (List<User>) session.getAttribute("userList");
        for(User user:list){
    %>
    <form>
        <tr>
            <input type="text" value="<%=user.getUid()%>" name="uid">
            <input type="text" value="<%=user.getUname()%>" name="uname">
            <input type="password" value="<%=user.getUpassword()%>" name="upassword">
        </tr>
    </form>
    <%
        }
    %>
</table>

</body>
</html>
