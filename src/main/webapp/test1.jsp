<%--
  Created by IntelliJ IDEA.
  User: syy
  Date: 2019/12/19
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
    <button onclick="check()">aaa</button>
    <div id="post_show_all"></div>
<script>
      function check() {
          $.ajax({
              url: "/post/showPost",        //后台url
              data: {                          //数据
              },
              type: "post",                   //类型，POST或者GET
              dataType: "json",              //数据返回类型，可以是xml、json等

              success: function (data) {

                  var a =data;
                  var b="";
                  for(var i=a.length-1;i>=0;i--){
                      console.log(a[i].pid);
                      console.log(a[i].pname);
                      console.log(a[i].type);
                      console.log(a[i].content);
                      console.log(a[i].rank);
                      console.log(a[i].bonus);
                      console.log(a[i].time);
                      console.log(a[i].uname);

                      var post_show_all = "";
                      post_show_all =
                          '<div class="form-group">'+
                          /*标题*/
                          '<div>'+a[i].pname+'</div>'+
                          /*发帖时间*/
                          '<div>'+a[i].time+'</div>'+
                          /*内容*/
                          '<div>'+a[i].content+'</div>'+
                          /*名字/板块*/
                          '<div>'+a[i].uname+'/ '+a[i].type+'</div>'+
                          ' </div>';

                      b+=post_show_all;
                  }
                  $("#post_show_all").html(b);
              },
              error: function () {
                  alert("error!");
              }

          });
        }
</script>
</body>
</html>
