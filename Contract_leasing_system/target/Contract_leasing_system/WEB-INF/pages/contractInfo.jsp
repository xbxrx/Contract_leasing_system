<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xrx
  Date: 2021/7/31
  Time: 9:14
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
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css" />
    <link rel="stylesheet" href="<%=basePath%>css/admin.css" />
</head>

<body>
<div class="admin-content-body">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">合同管理</strong><small></small></div>
    </div>

    <hr>

    <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
            <div class="am-btn-toolbar">
                <div class="am-btn-group am-btn-group-xs">
                    <button type="button" class="am-btn am-btn-default">
                        <span class="am-icon-plus">
                            <a href="<%=basePath%>toAddContract">新增</a>
                        </span>
                    </button>
                </div>
            </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">

        </div>
        <form action="toSearchContract">
        <div class="am-u-sm-12 am-u-md-3">
            <div class="am-input-group am-input-group-sm">
                <input type="text" class="am-form-field" placeholder="请输入合同编号" name="contractId">
                <span class="am-input-group-btn">
                    <button class="am-btn am-btn-default" type="submit">查询</button>
                </span>
            </div>
        </div>

        </form>
    </div>
    <div class="am-g">
        <div class="am-u-sm-12">
            <form class="am-form">
                <table class="am-table am-table-striped am-table-hover table-main">
                    <thead>
                    <tr>
                        <th class="table-check"><input type="checkbox"></th>
                        <th class="table-id">编号</th>
                        <th class="table-title">合同名称</th>
                        <th class="table-partyA">甲方</th>
                        <th class="table-partyB">乙方</th>
                        <th class="table-startTime">起始日期</th>
                        <th class="table-deadline am-hide-sm-only">结束日期</th>
                        <th class="table-rent am-hide-sm-only">租金金额</th>
                        <th class="table-set">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>
                        <c:when test="${null != contractList}">
                        <c:forEach items="${contractList}" var="item">
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>${item.contractId}</td>
                                <td>
                                    <a href="#">${item.contractName}</a>
                                </td>
                                <td>${item.partyA}</td>
                                <td>${item.partyB}</td>
                                <!--                        <td class="am-hide-sm-only">管理员</td>-->
                                <td class="am-hide-sm-only">${item.startTime}</td>
                                <td class="am-hide-sm-only">${item.deadline}</td>
                                <td class="am-hide-sm-only">${item.rent}</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button  class="am-btn am-btn-default am-btn-xs am-text-secondary">
                                                <span class="am-icon-pencil-square-o" ><a href="<%=basePath%>toUpdateContract?contractId=${item.contractId}">编辑</a></span>
                                            </button>
                                            <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                <span class="am-icon-trash-o">
                                                    <a href="<%=basePath%>toDeleteContract?contractId=${item.contractId}">删除</a>
                                                </span>
                                            </button>
                                        </div>
                                    </div>
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
                <div class="am-cf">
                    共 15 条记录
                    <div class="am-fr">
                        <ul class="am-pagination">
                            <li class="am-disabled">
                                <a href="#">«</a>
                            </li>
                            <li class="am-active">
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">»</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <hr>
            </form>
        </div>
    </div>
</div>
</body>
</html>
