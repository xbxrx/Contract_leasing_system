<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2021/7/19
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css" />
    <link rel="stylesheet" href="<%=basePath%>css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/skin_/nav.css" />
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/global.js"></script>
    <title>底部内容页</title>
</head>

<body>
<div id="container">
    <div id="bd">
        <div class="sidebar">
            <div class="sidebar-bg"></div>
            <i class="sidebar-hide"></i>
            <h2><a href="javascript:;"><i class="h2-icon" title="切换到树型结构"></i><span>浙江地税人事管理系统</span></a></h2>
            <ul class="nav">
                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">数据录入修改</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>toListOrgnInfo" data-id="11">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">机构编制展示</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>toListOrgnInfo" data-id="12">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">在职人员管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="13">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">离退人员管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="14">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">临时人员管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="15">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">党工团管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="16">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">人才库管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="17">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">人员信息维护</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-li current">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">业务查询统计</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="21">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">机构编制查询</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="22">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">人事信息查询</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="23">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">工资社保查询</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="24">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">教育培训查询</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="25">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">离退人员查询</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="26">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">党工团查询</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="27">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">人才库查询</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">报表统计</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="31">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">报表统计</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">领导查询</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="41">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">领导查询</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">信息交流</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="51">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">公文管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="52">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">普通信息交流</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">系统维护</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="61">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">统一编码管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="62">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">数据库管理</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="62">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">日志管理</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">账户角色控制</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="71">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">账户角色控制</span>
                            </a>
                        </li>
                        <li class="subnav-li" href="<%=basePath%>WEB-INF/pages/orgn_list.jsp" data-id="72">
                            <a href="javascript:;" class="ue-clear">
                                <i class="subnav-icon"></i>
                                <span class="subnav-text">账户信息维护</span>
                            </a>
                        </li>
                    </ul>
                </li>


            </ul>
            <div class="tree-list outwindow">
                <div class="tree ztree"></div>
            </div>
        </div>
        <div class="main">
            <div class="title">
                <i class="sidebar-show"></i>
                <ul class="tab ue-clear">

                </ul>
                <i class="tab-more"></i>
                <i class="tab-close"></i>
            </div>
            <div class="content">
            </div>
        </div>
    </div>
</div>

<div class="more-bab-list">
    <ul></ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-bl"></div>
</div>
</body>
<script type="text/javascript" src="<%=basePath%>js/nav.js"></script>
<script type="text/javascript" src="<%=basePath%>js/Menu.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript">
    var menu = new Menu({
        defaultSelect: $('.nav').find('li[data-id="11"]')
    });

    // 左侧树结构加载
    var setting = {};

    var zNodes =[
        { name:"新闻管理",
            children: [
                { name:"新闻视频管理",icon:'img/skin_/leftlist.png'},
                { name:"新闻频道管理",icon:'img/skin_/leftlist.png'},
                { name:"地方新闻管理",icon:'img/skin_/leftlist.png'}
            ]},
        { name:"用户信息设置", open:true,
            children: [
                { name:"首页", checked:true,icon:'img/skin_/leftlist.png'},
                { name:"表单",icon:'img/skin_/leftlist.png'},
                { name:"表格",icon:'img/skin_/leftlist.png'},
                { name:"自定义设置",icon:'img/skin_/leftlist.png'}
            ]},
        { name:"工作安排",
            children: [
                { name:"工作安排",icon:'img/skin_/leftlist.png'},
                { name:"安排管理",icon:'img/skin_/leftlist.png'},
                { name:"类型选择",icon:'img/skin_/leftlist.png'},
                { name:"自定义设置",icon:'img/skin_/leftlist.png'}
            ]},
        { name:"数据管理",
            children: [
                { name:"工作安排",icon:'img/skin_/leftlist.png'},
                { name:"安排管理",icon:'img/skin_/leftlist.png'},
                { name:"类型选择",icon:'img/skin_/leftlist.png'},
                { name:"自定义设置",icon:'img/skin_/leftlist.png'}
            ]}
    ];

    $.fn.zTree.init($(".tree"), setting, zNodes);


    $('.sidebar h2').click(function(e) {
        $('.tree-list').toggleClass('outwindow');
        $('.nav').toggleClass('outwindow');
    });

    $(document).click(function(e) {
        if(!$(e.target).is('.tab-more')){
            $('.tab-more').removeClass('active');
            $('.more-bab-list').hide();
        }
    });
</script>
</html>
