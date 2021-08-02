<%--
  Created by IntelliJ IDEA.
  User: xrx
  Date: 2021/7/31
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    System.out.println("basePath:  "+basePath);
%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>大气网站后台模板</title>
    <link rel="stylesheet" href="<%=basePath%>css/layui.css">
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">合同租赁管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="<%=basePath%>images/1.gif" class="layui-nav-img"> 管理员
                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="">基本资料</a>
                    </dd>
                    <dd>
                        <a href="">安全设置</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="">退了</a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
<%--                <li class="layui-nav-item layui-nav-itemed">--%>
<%--                    <a class="" href="javascript:;">菜单栏</a>--%>
<%--                    <dl class="layui-nav-child">--%>
<%--                        <dd>--%>
<%--                            <a href="product.html" target="right">产品管理</a>--%>
<%--                        </dd>--%>
<%--                        <dd>--%>
<%--                            <a href="newsType.html" target="right">新闻分类管理</a>--%>
<%--                        </dd>--%>
<%--                        <dd>--%>
<%--                            <a href="news.html" target="right">新闻管理</a>--%>
<%--                        </dd>--%>
<%--                        <dd>--%>
<%--                            <a href="link.html" target="right">友情链接</a>--%>
<%--                        </dd>--%>
<%--                        <dd>--%>
<%--                            <a href="message.html" target="right">留言管理</a>--%>
<%--                        </dd>--%>
<%--                        <dd>--%>
<%--                            <a href="message.html" target="right">用户管理</a>--%>
<%--                        </dd>--%>
<%--                        <dd>--%>
<%--                            <a href="javascript:void(0)"  onclick="updatePwd('修改密码',1)">修改密码</a>--%>
<%--                        </dd>--%>
<%--                    </dl>--%>
<%--                </li>--%>
<%--                <li class="layui-nav-item">--%>
<%--                    <a href="javascript:;">菜单栏</a>--%>
<%--                    <dl class="layui-nav-child">--%>

<%--                    </dl>--%>
<%--                </li>--%>

                <li class="layui-nav-item">
                    <a href="javascript:;">合同管理</a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a href="<%=basePath%>toContractInfo" target="right">合同管理</a>
                        </dd>
                        <dd>
                            <a href="javascript:void(0)"  onclick="addContract('新增合同')">新增合同</a>
                        </dd>
                    </dl>
                </li>

            </ul>
        </div>
    </div>

    <div class="layui-body" style="z-index: 0;">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe src="" name="right" frameborder="0" width="100%" height="1200"></iframe>

        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>

<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>myplugs/js/plugs.js">
</script>
<script type="text/javascript">
    //添加编辑弹出层
    function updatePwd(title) {
        $.jq_Panel({
            title: title,
            iframeWidth: 500,
            iframeHeight: 300,
            url: "updatePwd.html"
        });
    }
</script>


<script type="text/javascript">
    //添加编辑弹出层
    function addContract(title) {
        $.jq_Panel({
            title: title,
            iframeWidth: 500,
            iframeHeight: 300,
            url: "<%=basePath%>toAddContract"
        });
    }
</script>
<script src="<%=basePath%>js/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function() {
        var element = layui.element;

    });
</script>
</body>
</html>
