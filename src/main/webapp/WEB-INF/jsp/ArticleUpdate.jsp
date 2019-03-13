<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/21
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章类型修改</title>
    <script	src="${pageContext.request.contextPath }/jslib/jquery-2.1.1.min.js"></script>


    <script type="text/javascript" src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/css/bootstrap.css"/>
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/js/bootstrap.min.js"></script>


    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">


    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-fileinput/js/fileinput.js"></script>
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-fileinput/js/locales/zh.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-fileinput/css/fileinput.css">


    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-bootbox/bootbox.js"></script>


    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-table/bootstrap-table.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-table/bootstrap-table.js"></script>
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>


    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-treeview/bootstrap-treeview.min.css">
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap-treeview/bootstrap-treeview.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootStrap-addTabs/bootstrap.addtabs.css">
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>
</head>

<style>
    .row{
        margin-top:10px;
    }
</style>

<body>
<div class="container-fluid">
    <form id="myForm">
        <div class="row">
            <div class="col-xs-2">
                <label for="name">名称:</label>
            </div>
            <div class="col-xs-4">
                <input type="hidden"  name="id" id="id">
                <input type="text" class="form-control" name="name" id="name" placeholder="名称">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="classification">上级分类:</label>
            </div>
            <div class="col-xs-4">
                <select class="form-control input-sm" name="classification" id="classification">
                    <option value="根目录">根目录</option>
                    <option value="目录1">目录1</option>
                    <option value="目录2">目录2</option>
                    <option value="目录3">目录3</option>
                    <option value="目录4">目录4</option>
                    <option value="目录5">目录5</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="pagetitle">页面标题:</label>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="pagetitle" id="pagetitle" placeholder="页面标题">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="keyword">页面关键词:</label>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="keyword" id="keyword" placeholder="页面关键词">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="pageinfo">页面描述:</label>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="pageinfo" id="pageinfo" placeholder="页面描述">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="sorting">排序:</label>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="sorting" id="sorting" placeholder="排序">
            </div>
        </div>
    </form>
</div>
</body>
<script>
    $(function(){

    })
</script>
</html>
