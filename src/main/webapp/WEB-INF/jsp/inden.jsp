<%--
  Created by IntelliJ IDEA.
  User: fanshuai
  Date: 2019/2/20
  Time: 14:57
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
<body>

<div id="toolbar">
    <form class="form-inline">
        <button class="btn btn-info btn-lg"><span class="glyphicon glyphicon-print">刷新</span></button>
    </form>
</div>
<!-- 定义表格 -->
<table class="table" id="myTable"></table>
</body>
<script>

    $(function(){
        initMyTable();
    })



    //====初始化表格
    function initMyTable(){
        $("#myTable").bootstrapTable({
            toolbar:"#toolbar",
            url:"<%=request.getContextPath() %>/querLists",
            columns:[
                {field:"id",title:"id"},
                {field:"numberbm",title:"编码"},
                {field:"money",title:"金额"},
                {field:"member",title:"会员",formatter:function(value,row,index){
                        return value==1?"会员":value==2?"非会员":"";
                    }},
                {field:"consignee",title:"收货人"},
                {field:"payments",title:"支付方式",formatter:function(value,row,index){
                        return value==1?"支付宝":value==2?"微信":"";
                     }},
                {field:"delivery",title:"配送方式",formatter:function(value,row,index){
                        return value==1?"快递":value==2?"空运":"";}},
                {field:"jine",title:"金额"},
                {field:"status",title:"状态",formatter:function(value,row,index){
                        return value==1?"途中":value==2?"到达":"";}},
                {field:"daterq",title:"创建日期"},
            ]


        });

    }






</script>
</html>
