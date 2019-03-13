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
            <a href="${pageContext.request.contextPath }/toMemberList"><button onclick="openAdd()" type="button" class="btn btn-info glyphicon glyphicon-plus">添加</button></a>
            <button onclick="delUser()" type="button" class="btn btn-warning glyphicon glyphicon-minus">删除</button>
            <button class="btn btn-info btn-lg"><span class="glyphicon glyphicon-print">刷新</span></button>
        </form>
    </div>
<!-- 定义表格 -->
<table class="table" id="myTable"></table>111
</body>
<script>

    $(function(){
        initMyTable();
    })



    //====初始化表格
    function initMyTable(){
        $("#myTable").bootstrapTable({
            toolbar:"#toolbar",
            url:"<%=request.getContextPath() %>/querList",
            columns:[
                {field:"check",checkbox:true},
                {field:"id",title:"id"},
                {field:"hmnumber",title:"手机号"},
                {field:"memeberName",title:"名称"},
                {field:"memberDate",title:"创建日期"},
                {field:'cz',title:'操作',formatter:function(value,row,index){
                        return '<a href="javascript:openUpdate('+row.id+')">[编辑]</a>'
                    }},

            ]


        });

    }

    function openUpdate(){
        location.href="<%=request.getContextPath()%>/toupdateMember"
    }


    //====批量删除
    function delUser(){
        var arr = $('#myTable').bootstrapTable('getSelections');
        if (arr.length <= 0) {
            bootbox.alert({
                size: "small",
                title: "提示",
                message: "请选择需要删除的数据",
                callback: function(){
                }
            });
            return;
        }
        bootbox.confirm({
            size: "small",
            message: "你确定要删除吗?",
            buttons: {
                confirm: {
                    label: '确定',
                    className: 'btn-success'
                },
                cancel: {
                    label: '取消',
                    className: 'btn-danger'
                }
            },
            callback: function(result){
                if (result) {
                    var ids = "";
                    for (var i = 0; i < arr.length; i++) {
                        ids += ids == "" ? arr[i].id : ","+arr[i].id;
                    }
                   // alert(ids);
                    $.ajax({
                        url : '<%=request.getContextPath()%>/daleteList',
                        type :'post',
                        data :{id:ids},
                        success:function(){
                           // searUser();//刷新表格
                           // initMyTable();
                           window.location.reload();
                        }
                    })
                }
            }
        })

    }


</script>
</html>
