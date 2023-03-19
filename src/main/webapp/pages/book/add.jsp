<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理系统</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- 页面meta /-->
</head>
<body>
<div id="frameContent">
    <!-- 内容头部 -->
    <section class="content-header" class="content-wrapper" style="margin-left:0px;">
        <h1>
            图书管理
            <small>图书表单</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="all-order-manage-list.html">图书管理</a></li>
            <li class="active">图书表单</li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!--添加内容信息-->
        <div class="panel panel-default">
            <div class="panel-heading">图书信息</div>
            <form id="addForm" action="${ctx}/books/addBook" method="post">
                <div class="row data-type" style="margin: 0px">
                    <div class="col-md-2 title">图书名称</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="图书名称" name="name" >
                    </div>

                    <div class="col-md-2 title">图书价格</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="图书价格" name="price" >
                    </div>

                    <div class="col-md-2 title">图书数量</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="图书数量" name="pnum">
                    </div>

                    <div class="col-md-2 title">图书分类</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="图书分类" name="category">
                    </div>

                </div>
            </form>
        </div>
        <!--添加内容信息/-->

        <!--工具栏-->
        <div class="box-tools text-center">
            <button type="submit"  onclick='document.getElementById("addForm").submit()'  class="btn bg-maroon">保存</button>
            <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
        </div>
        <!--工具栏/-->

    </section>
    <!-- 正文区域 /-->

</div>
<!-- 内容区域 /-->
</body>
<script src="${ctx}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<link rel="stylesheet" href="${ctx}/css/style.css">
<script>
    $('#expirationDate').datepicker({
        autoclose: true,
        format: 'yyyy-mm-dd'
    });
</script>

</html>