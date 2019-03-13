<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章新增</title>
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
                <label for="name">标题:</label>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="name" placeholder="标题">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="classify">分类:</label>
            </div>
            <div class="col-xs-4">
                <select class="form-control input-sm" name="classify">
                    <option value="">请选择</option>
                    <option value="武侠">武侠</option>
                    <option value="奇幻">奇幻</option>
                    <option value="爱情">爱情</option>
                    <option value="科幻">科幻</option>
                    <option value="玄幻">玄幻</option>
                    <option value="童话">童话</option>
                    <option value="恐怖">恐怖</option>
                    <option value="动漫">动漫</option>
                    <option value="其他">其他</option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="author">作者:</label>
            </div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="author" placeholder="作者">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="time">创建日期</label>
            </div>
            <div class="col-xs-4">
                <input type="date" class="form-control"  name="time" placeholder="请输入日期">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="status">设置:</label>
            </div>
            <div class="col-xs-4">
                <input type="radio"  name="status" value="1">是
                <input type="radio"  name="status" value="2">否
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">
                <label for="info">内容:</label>
            </div>
            <div class="col-xs-4">
                <textarea class="form-control" rows="3" name="info" placeholder="内容"></textarea>
            </div>
        </div>
    </form>
</div>
</body>
<script>

    $(function(){
        //search();
        $('.date').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),//初始化当前日期
            autoclose: true,//选中自动关闭
            todayBtn: true//显示今日按钮
        });
    })
</script>
</html>
