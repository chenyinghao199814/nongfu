<%--
  Created by IntelliJ IDEA.
  User: fanshuai
  Date: 2019/2/21
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <title>Title</title>
</head>
<style>
    .row{
        margin-top:10px;
    }
</style>
<body>
<div class="container-fluid">
    <form id="addForm" class="form-horizontal">
        <div class="row">
            <div class="col-xs-2">蔬菜名：</div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="name">
            </div>
        </div>
    </form>
</div>
</body>
</html>
