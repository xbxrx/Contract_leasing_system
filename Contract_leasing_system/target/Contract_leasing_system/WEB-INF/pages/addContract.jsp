<%--
  Created by IntelliJ IDEA.
  User: xrx
  Date: 2021/7/31
  Time: 9:05
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
    <link rel="stylesheet" href="<%=basePath%>css/amazeui.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/admin.css">
    <link rel="stylesheet" href="css/app.css">
    <style>
        .admin-main{
            padding-top: 0px;
        }
    </style>
</head>
<body>
<div class="am-cf admin-main">
    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-g">
                <form action="toAddResult" class="am-form am-form-horizontal" method="post"
                      style="padding-top:30px;" data-am-validator>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">
                            合同名称 </label>
                        <div class="am-u-sm-9">
                            <input type="text" id="doc-vld-ctn-1" required placeholder="请输入合同名称"
                                   name="contractName"> <small>输入合同名称</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">
                            甲方信息 </label>
                        <div class="am-u-sm-9">
                            <input type="text" id="doc-vld-ctn-2" required placeholder="请输入甲方信息"
                                   name="partyA"  data-equal-to="#doc-vld-ctn-2"  required> <small>输入甲方信息。</small>
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">
                            乙方信息 </label>
                        <div class="am-u-sm-9">
                            <input type="text" id="doc-vld-ctn-3" required placeholder="请输入乙方信息"
                                   name="partyB"  data-equal-to="#doc-vld-ctn-3"  required> <small>输入乙方信息。</small>
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">
                            起始时间 </label>
                        <div class="am-u-sm-9">
                            <input type="text" id="doc-vld-ctn-4" required placeholder="请输入起始时间"
                                   name="startTime"  data-equal-to="#doc-vld-ctn-4"  required> <small>输入起始时间。</small>
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">
                            结束时间 </label>
                        <div class="am-u-sm-9">
                            <input type="text" id="doc-vld-ctn-5" required placeholder="请输入结束时间"
                                   name="deadline"  data-equal-to="#doc-vld-ctn-5"  required> <small>输入结束时间。</small>
                        </div>
                    </div>

                    <div class="am-form-group">
                        <label class="am-u-sm-3 am-form-label">
                            租金金额 </label>
                        <div class="am-u-sm-9">
                            <input type="text " id="doc-vld-ctn-6" required placeholder="请输入租金金额"
                                   name="rent"  data-equal-to="#doc-vld-ctn-6"  required><br> <small>输入租金金额。</small>
                        </div>
                    </div>

                    <div class="am-form-group" >
                        <div class="am-u-sm-9 am-u-sm-push-3">
                            <input type="submit" class="am-btn am-btn-success" value="上传" />
                            <button  class="am-btn am-btn-success"><a href="<%=basePath%>toCancel">返回</a></button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"
        src="assets/js/libs/jquery-1.10.2.min.js">
</script>
<script type="text/javascript" src="<%=basePath%>myplugs/js/plugs.js">
</script>
</body>
</html>
