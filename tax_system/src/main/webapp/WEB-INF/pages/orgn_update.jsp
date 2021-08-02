<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2021/7/19
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/WdatePicker.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/skin_/form.css"/>
    <link href="<%=basePath%>umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/global.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.select.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/WdatePicker.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/umeditor.config.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/editor_api.js"></script>
    <script type="text/javascript" src="<%=basePath%>umeditor/lang/zh-cn/zh-cn.js"></script>
    <title>机构信息维护</title>
</head>

<body>
<h3>机构信息维护</h3>
<div id="container">
    <div id="hd">
    </div>
    <div id="bd">
        <div id="main">
            <h2 class="subfild">
                <span>基本信息</span>
            </h2>
            <form action="updateResult">
                <div class="subfild-content base-info">
                    <%--                <div class="kv-item ue-clear">--%>
                    <%--                    <label><span class="impInfo">*</span>机构编号</label>--%>
                    <%--                    <div class="kv-item-content">--%>
                    <%--                        <input id="orgnId"  type="hidden" placeholder="机构编号" value="${orgnInfo.orgnId}" />--%>
                    <%--                    </div>--%>
                    <%--                </div>--%>

                    <div action="updateResult" method="post">
                        <input id="orgnId" name="orgnId" type="hidden" placeholder="机构编号" value="${orgnInfo.orgnId}"/>
                        <input id="orgnInfo" type="hidden" value="${orgnInfo}"/>

                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>机构级别</label>
                            <div class="kv-item-content">
                                <input id="orgnLevel" name="orgnLevel" type="text" placeholder="机构级别"
                                       value="${orgnInfo.orgnLevel}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear time">
                            <label><span class="impInfo">*</span>批准设立时间</label>
                            <div class="kv-item-content">
                                <input id="approvalCreateTime" name="approvalCreateTime" type="text"
                                       placeholder="批准设立时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
                                       value="${orgnInfo.approvalCreateTime}"/>
                                <i class="time-icon"></i>
                            </div>
                        </div>

                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>行政级别</label>
                            <div class="kv-item-content">
                                <input id="adminRank" name="adminRank" type="text" placeholder="行政级别"
                                       value="${orgnInfo.adminRank}"/>
                            </div>
                        </div>

                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>机构类别</label>
                            <div class="kv-item-content">
                                <input id="orgnType" name="orgnType" type="text" placeholder="机构类别"
                                       value="${orgnInfo.orgnType}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>行政区名</label>
                            <div class="kv-item-content">
                                <input id="areaName" name="areaName" type="text" placeholder="行政区名"
                                       value="${orgnInfo.areaName}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>机构名称</label>
                            <div class="kv-item-content">
                                <input id="orgnName" name="orgnName" type="text" placeholder="机构名称"
                                       value="${orgnInfo.orgnName}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>批准设立文号</label>
                            <div class="kv-item-content">
                                <input id="approvalCreateFileNumber" name="approvalCreateFileNumber" type="text"
                                       placeholder="批准设立文号" value="${orgnInfo.approvalCreateFileNumber}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>批准单位</label>
                            <div class="kv-item-content">
                                <input id="approvalDepartment" name="approvalDepartment" type="text" placeholder="批准单位"
                                       value="${orgnInfo.approvalDepartment}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>地址</label>
                            <div class="kv-item-content">
                                <input id="address" name="address" type="text" placeholder="地址"
                                       value="${orgnInfo.address}"/>
                            </div>
                        </div>
                        <div class="kv-item ue-clear">
                            <label><span class="impInfo">*</span>邮编</label>
                            <div class="kv-item-content">
                                <input id="postcode" name="postcode" type="text" placeholder="邮编"
                                       value="${orgnInfo.postcode}"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="buttons">
                    <input class="button" type="submit" value="提交信息"/>
                </div>
            </form>
        </div>

    </div>
</div>
</body>

<script type="text/javascript">
    $('.button').click(function () {
        alert($('#orgnId').val())
        $.ajax({
            url: "<%=basePath%>doUpdateOrgnInfo",
            data: {
                orgnId: $('#orgnId').val(),
                orgnLevel: $('#orgnLevel').val(),
                approvalCreateTime: $('#approvalCreateTime').val(),
                adminRank: $('#adminRank').val(),
                orgnType: $('#orgnType').val(),
                areaName: $('#areaName').val(),
                orgnName: $('#orgnName').val(),
                approvalCreateFileNumber: $('#approvalCreateFileNumber').val(),
                approvalDepartment: $('#approvalDepartment').val(),
                address: $('#address').val(),
                postcode: $('#postcode').val()
            },
            type: "POST",
            dataType: "json",
            success: function (msg) {
                // data = jQuery.parseJSON(data);
                window.location.href = "<%=basePath%>toListOrgnInfo";
            },
            error: function (msg) {
                alert("服务器忙,请稍后重试");
            }
        });
    })
</script>
</html>
