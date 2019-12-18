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
</head>
<body>


<div >
    <%
        User user = (User) session.getAttribute("PersonalData");
    %>
    <table>
        <tr>
            <td>用户名：</td>
            <td>
                <%=user.getUname()%>
            </td>
        </tr>
        <tr>
            <td>性别：</td>
            <td>
                <%=user.getSex()%>
            </td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td>
                <%=user.getAge()%>
            </td>
        </tr>
        <tr>
            <td>简介：</td>
            <td>
                <%=user.getIntroduction()%>
            </td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td>
                <%=user.getEmail()%>
            </td>
        </tr>
        <tr>
            <td>分数：</td>
            <td>
                <%=user.getBonus()%>
            </td>
        </tr>
        <tr>
            <td>家庭住址：</td>
            <td>
                <%=user.getAddress()%>
            </td>
        </tr>
    </table>


    <a href="<%=request.getContextPath()%>/user/jumpToUserEdit">修改个人信息</a>


</div>




</body>
</html>
