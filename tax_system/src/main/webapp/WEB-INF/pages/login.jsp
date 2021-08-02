<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2021/7/19
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    System.out.println("basePath:  "+basePath);
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/skin_/login.css"/>
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.select.js"></script>
    <title>税务局人事管理系统后台登录</title>
</head>

<body>
<div id="container">
    <div id="bd">
        <div id="main">
            <div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <form action="doLogin" method="post">
                    <div class="input username">
                        <label for="userName">用户名</label>
                        <span></span>
                        <input type="text" name="username" id="userName"/>
                    </div>
                    <div class="input psw">
                        <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                        <span></span>
                        <input type="password" name="password" id="password"/>
                    </div>
                    <div class="input validate">
                        <label for="valiDate">验证码</label>
                        <input type="text" id="valiDate"/>
                        <div class="value">X3D5</div>
                    </div>
                    <div class="styleArea">
                        <div class="styleWrap">
                            <select name="style">
                                <option value="默认风格">默认风格</option>
                                <option value="红色风格">红色风格</option>
                                <option value="绿色风格">绿色风格</option>
                            </select>
                        </div>
                    </div>
                    <div id="btn" class="loginButton">
                        <input type="submit" class="button" value="登录"/>
                    </div>
                    <div class="input validate">
                        <span style="margin-left: 20px;color: red">${msg}</span>
                    </div>
                </form>

            </div>

        </div>
    </div>
    <div id="ft">CopyRight&nbsp;2014&nbsp;&nbsp;版权所有&nbsp;&nbsp;More Templates <a href="http://www.cssmoban.com/"
                                                                                  target="_blank" title="模板之家">人事管理</a>
        - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">人事管理</a> &nbsp;&nbsp;
    </div>
</div>

</div>

</body>
<script type="text/javascript">
    var height = $(window).height() > 445 ? $(window).height() : 445;
    $("#container").height(height);
    var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
    $('#bd').css('padding-top', bdheight);
    $(window).resize(function (e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
        $("#container").height(height);
        var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
        $('#bd').css('padding-top', bdheight);
    });
    $('select').select();


    // $('.loginButton').click(function(e) {
    //     // alert($('#userName').val())
    //     $.ajax(
    //         {
    //           url: "doLogin",
    //           data: {
    //               userName: $('#userName').val(),
    //               password:$('#password').val()
    //           },
    //           type: "POST",
    //           dataType: "json",
    //           success: function(msg) {
    //               data = jQuery.parseJSON(data);
    //               window.location.href="jsp/main/main.jsp"
    //           },
    //           error: function (msg) {
    //               alert("用户名或密码错误");
    //           }
    //         }
    //     );
    // });
</script>

</html>
