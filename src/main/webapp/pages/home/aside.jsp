<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../base.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${ctx}/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">菜单</li>

         <li class="treeview">
        <a href="#">
            <i class="fa fa-cube"></i> <span>平台系统管理</span>
            <span class="pull-right-container">
                   <i class="fa fa-angle-left pull-right"></i>
               </span>
        </a>
        <ul class="treeview-menu">

            <li id="sys-book">
                <a href="${ctx}/books/findAllBook" onclick="setSidebarActive(this)" target="iframe">
                    <i class="fa fa-circle-o"></i>图书管理
                </a>
            </li>
        </ul>
    </li>


</ul>
</section>
<!-- /.sidebar -->
</aside>
