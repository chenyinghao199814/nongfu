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
    <form id="dForm" class="form-horizontal">
        <div class="row">
            <div class="col-xs-2">名称：</div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="adName">
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2">分类：</div>
            <div class="col-xs-4">
                <select class="form-control input-sm" name="adTypeId">
                    <option value="蔬菜"> 蔬菜</option>
                    <option value="肉"> 肉</option>
                    <option value="水果"> 水果</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2">状态：</div>
            <div class="col-xs-4">
                <select class="form-control input-sm" name="adStatus">
                    <option value="是">是</option>
                    <option value="否">否</option>
                </select>
            </div>
        </div>
       <div class="row">
            <div class="col-xs-2">创建时间：</div>
            <div class="col-xs-4">
            <input type="text" class="form-control date" name="createDate">
        </div>
        </div>




    </form>
</div>
</body>
<script>

    //时间
    $('.date').datetimepicker({
        language: 'zh-CN',//显示中文
//		  format: 'yyyy-mm-dd hh:ii:ss',//显示格式
        format: 'yyyy-mm-dd',//显示格式
        minView: "month",//设置只显示到月份
        initialDate: new Date(),//初始化当前日期
        autoclose: true,//选中自动关闭
        todayBtn: true//显示今日按钮
    });
</script>
</html>
