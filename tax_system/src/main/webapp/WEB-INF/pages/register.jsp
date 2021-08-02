<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2021/7/19
  Time: 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="doRegister" method="get">
    <h3>用户注册</h3>
    <table border="1">
        <tr><td>姓名：</td><td><input type="text" name="name" value="${registerBean.name}"></td></tr>
        <tr><td>密码：</td><td><input type="text" name="password" value="${registerBean.password}"></td></tr>
        <tr><td>确认密码：</td><td><input type="text" name="password2" value="${registerBean.password2}"></td></tr>
        <tr><td>邮箱：</td><td><input type="text" name="email" value="${registerBean.email}"></td></tr>
        <tr><td><input type="submit" value="提交"></td><td><input type="reset" value="重置"></td></tr>
    </table>
</form>

</body>
</html>
