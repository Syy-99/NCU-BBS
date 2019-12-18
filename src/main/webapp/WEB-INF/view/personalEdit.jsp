<%@ page import="cn.edu.ncu.Entity.User" %><%--
  Created by IntelliJ IDEA.
  User: 余航
  Date: 2019/12/18
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
</head>
<body onload="checkSex()">
<%
    User user = (User) session.getAttribute("PersonalData");
%>
<div>
    <div><h2>修改你的个人信息</h2></div>

    <div>
        <form action="<%=request.getContextPath()%>/user/userEdit">

            <div><input type="text" name="uid" value="<%=user.getUid()%>"></div>
            <div>用户名：<input type="hidden" name="uname" value="<%=user.getUname()%>"></div>
            <div>性别：<label><input type="radio" name="sex" id="sex1" value="男">男</label> <label><input type="radio"  name="sex" id="sex2" value="女">女</label> </div>
            <div>年龄：<input type="text" name="age" value="<%=user.getAge()%>"></div>
            <div>简介：<input type="text" name="introduction" value="<%=user.getIntroduction()%>"></div>
            <div>邮箱：<input type="text" name="email" value="<%=user.getEmail()%>"></div>
            <div>分数：<input type="text" name="bonus" value="<%=user.getBonus()%>"></div>
            <div>家庭住址：<input type="text" name="address" value="<%=user.getAddress()%>"></div>
            <input type="submit" value="修改">
        </form>
    </div>

</div>

<script>
    function checkSex() {
        <%
            if(user.getSex().equals("男")){
        %>
        document.getElementById("sex1").checked=true;

        <%
            }else{
        %>

        document.getElementById("sex2").checked=true;
        <%
        }
        %>

    }
</script>
</body>
</html>
