<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../base.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>黑马图书管理系统</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- 页面meta /-->
    <script src="${ctx}/plugins/jQuery/jquery-2.2.3.min.js"></script>
</head>
<script>
    function deleteById() {
        var chk_value = [];//定义一个数组
        $('input[name="ids"]:checked').each(function () {//遍历每一个名字为ids的复选框，其中选中的执行函数
            chk_value.push($(this).val());//将选中的值添加到数组chk_value中
        });
        if (chk_value.length === 1) {
            var checkDel = window.confirm("确认删除吗？");
            if (checkDel) {
                <%--var bids = document.getElementsByName("ids");--%>
                <%--for (var i = 0; i < bids.length; i++) {--%>
                <%--if (bids[i].checked) {--%>
                <%--window.location.href = "${ctx}/books?method=deleteBook&id=" + bids[i].value;--%>
                <%--}--%>
                <%--}--%>
                var ids = "" + chk_value[0];
                if (chk_value.length > 1) {
                    for (var i = 1; i < chk_value.length; i++) {
                        ids = ids + "," + chk_value[i];
                    }
                }
                window.location.href = "${ctx}/books/deleteById?id=" + ids;
            }
        } else if (chk_value.length > 1) {
            window.confirm("只能选中一条数据！")
        } else {
            window.confirm("请选择要删除的数据！")
        }
    }
</script>
<body>
<div id="frameContent" class="content-wrapper" style="margin-left:0px;">
    <section class="content-header">
        <h1>
            企业管理
            <small>企业列表</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!-- .box-body -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">列表</h3>
            </div>

            <div class="box-body">

                <!-- 数据表格 -->
                <div class="table-box">

                    <!--工具栏-->
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default" title="新建"
                                        onclick='location.href="${ctx}/pages/book/add.jsp"'><i class="fa fa-file-o"></i>
                                    新建
                                </button>
                                <button type="button" class="btn btn-default" title="删除" onclick='deleteById()'><i
                                        class="fa fa-trash-o"></i> 删除
                                </button>
                                <button type="button" class="btn btn-default" title="刷新"
                                        onclick="window.location.reload();"><i class="fa fa-refresh"></i> 刷新
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="box-tools pull-right">
                        <div class="has-feedback">
                            <input type="text" class="form-control input-sm" placeholder="搜索">
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        </div>
                    </div>
                    <!--工具栏/-->

                    <!--数据列表-->
                    <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                        <thead>
                        <tr>
                            <th class="" style="padding-right:0px;">

                            </th>
                            <th class="sorting">图书名称</th>
                            <th class="sorting">图书价格</th>
                            <th class="sorting">数量</th>
                            <th class="sorting">分类</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${books}" var="item">
                            <tr>
                                <td><input name="ids" value="${item.id}" type="checkbox"></td>
                                <td>
                                        ${item.name}
                                </td>
                                <td>${item.price}</td>
                                <td>${item.pnum}</td>
                                <td>${item.category}</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs"
                                            onclick='location.href="${ctx}/books/findBookById?id=" + ${item.id}'>
                                        编辑
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
</body>

</html>