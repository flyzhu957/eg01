<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div id="frameContent" class="content-wrapper" style="margin-left:0px;">
    <!-- 内容头部 -->
    <section class="content-header">
        <h1>
            图书管理
            <small>编辑图书信息</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="all-admin-index.html"><i class="fa fa-dashboard"></i> 首页</a></li>
            <li><a href="all-order-manage-list.html">图书管理</a></li>
            <li class="active">编辑图书信息</li>
        </ol>
    </section>
    <!-- 内容头部 /-->

    <!-- 正文区域 -->
    <section class="content">

        <!--订单信息-->
        <div class="panel panel-default">
            <div class="panel-heading">图书信息</div>
            <form id="editForm" action="${ctx}/books/updateBook" method="post">
                <input type="hidden" name="id" value="${book.id}">
                <div class="row data-type" style="margin: 0px">
                    <div class="col-md-2 title">图书名称</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="图书名称" name="name" value="${book.name}">
                    </div>

                    <div class="col-md-2 title">图书价格</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="价格" name="price" value="${book.price}">
                    </div>
                    <div class="col-md-2 title">图书数量</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="分类" name="pnum" value="${book.pnum}">
                    </div>
                    <div class="col-md-2 title">图书分类</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="分类" name="category" value="${book.category}">
                    </div>
                </div>
            </form>
        </div>
        <!--订单信息/-->

        <!--工具栏-->
        <div class="box-tools text-center">
            <button type="submit"  onclick='document.getElementById("editForm").submit()'  class="btn bg-maroon">保存</button>
            <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
        </div>
        <!--工具栏/-->

    </section>
    <!-- 正文区域 /-->

</div>
<!-- 内容区域 /-->
</body>

</html>