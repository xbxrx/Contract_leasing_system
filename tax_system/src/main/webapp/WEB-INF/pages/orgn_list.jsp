<%--
  Created by IntelliJ IDEA.
  User: peng
  Date: 2021/7/20
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/WdatePicker.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/skin_/table.css" />
<%--    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/jquery.grid.css" />--%>
    <link href="<%=basePath%>css/mystyle.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/global.js"></script>


    <title>Title</title>

    <script>
        function toAdd(){
            window.location.href="<%=basePath%>orgnadd";
        }
        function toApproval(orgnId) {
            alert(orgnId)
        }
        function toModifyName(orgnId) {
            alert("toModifyName")
        }
        function toCancel(orgnId) {
            alert("toCancel")
        }
        function toUpdate(orgnId) {

            window.location.href="<%=basePath%>toUpdateOrgnInfo?orgnId="+orgnId;
        }
    </script>
</head>
<body>
<div style="padding:10px;">
    <div >
        <ul style="border:1px solid #ccc;background-color:#f9f9f9;">
            <li style="display:inline-block;_zoom:1;*display:inline;margin:10px;">
                <input type="text" style="height:28px;width:160px;border:1px solid #999;"/>
            </li>
            <li style="display:inline-block;_zoom:1;*display:inline;margin:10px;">
                <input type="text" style="height:28px;width:160px;border:1px solid #999;"/>
            </li>
            <li style="display:inline-block;_zoom:1;*display:inline;margin:10px;">
                <input id="search" type="button" style="height:28px;width:100px;" value="搜索" onclick="javascript:search();"/>
                <input id="reset" type="button" style="height:28px;width:100px;" value="重置" onclick="javascript:reset();"/>
                <input id="toAdd" type="button" style="height:28px;width:100px;" value="机构设立" onclick="javascript:toAdd();"/>
            </li>
        </ul>
    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th style="width:7%;text-align:center;">机构编码</th>
            <th style="width:7%;text-align:center;">机构级别</th>
            <th style="width:10%;text-align:center;">批准设立时间</th>
            <th style="width:7%;text-align:center;">行政级别</th>
            <th style="width:7%;text-align:center;">机构类别</th>
            <th style="width:7%;text-align:center;">行政区名</th>
            <th style="width:10%;text-align:center;">机构名称</th>
            <th style="width:10%;text-align:center;">批准设立文号</th>
            <th style="width:10%;text-align:center;">批准单位</th>
            <th style="width:30%;text-align:center;">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:choose>
        <c:when test="${null != orgnInfoList}">
            <c:forEach items="${orgnInfoList}" var="item">
                <tr>
                    <td style="width:7%;text-align:center;">
                            ${item.orgnId}
                    </td>
                    <td style="width:7%;text-align:center;">
                            ${item.orgnLevel}
                    </td>
                    <td style="width:10%;text-align:center;">
                            ${item.approvalCreateTime}
                    </td>
                    <td style="width:7%;text-align:center;">
                            ${item.adminRank}
                    </td>
                    <td style="width:7%;text-align:center;">
                            ${item.orgnType}
                    </td>
                    <td style="width:7%;text-align:center;">
                            ${item.areaName}
                    </td>
                    <td style="width:10%;text-align:center;">
                            ${item.orgnName}
                    </td>
                    <td style="width:10%;text-align:center;">
                            ${item.approvalCreateFileNumber}
                    </td>
                    <td style="width:10%;text-align:center;">
                            ${item.approvalDepartment}
                    </td>
                    <td style="width:30%;text-align:center;">
                        <a href="add" class="tablelink">添加机构</a>
                        <a href="update?orgnId=${item.orgnId}" class="tablelink">改名改级</a>
                        <a href="delete?orgnId=${item.orgnId}" class="tablelink">机构删除</a>
                        <a href="javascript:toUpdate('${item.orgnId}');" class="tablelink">信息维护</a>
                    </td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
        <tr class="last">
            <td colspan="3" style="text-align:center;"></td>
        <tr>
            </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
