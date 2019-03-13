<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章管理</title>
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
<body style="overflow-y:hidden">
<h4><b>文章管理</b></h4>
<div id="toolbar">
    <form class="form-inline">
        <button onclick="openAdd()" type="button" class="btn btn-info glyphicon glyphicon-plus">新增</button>
        <button onclick="location=location" type="button" class="btn btn-success glyphicon glyphicon-refresh">刷新</button>
    </form>
</div>
<table class="table" id="myTable"></table>
</body>
<script>
    $(function(){
        search();
        $('.date').datetimepicker({
            language: 'zh-CN',//显示中文
            format: 'yyyy-mm-dd',//显示格式
            minView: "month",//设置只显示到月份
            initialDate: new Date(),//初始化当前日期
            autoclose: true,//选中自动关闭
            todayBtn: true//显示今日按钮
        });
    })

    /**
     * 初始化
     */
    function  search(){
        $("#myTable").bootstrapTable({
            toolbar:"#toolbar",
            url : "<%=request.getContextPath()%>/queryMana",
            pagination:true, //是否展示分页
            columns:[
                {field:'id',title:'ID'},
                {field:'name',title:'标题'},
                {field:'classify',title:'分类'},
                {field:'time',title:'创建日期'},
                {field:'status',title:'是否发布',formatter:function(value,row,index){
                        if(value==1){
                            return "是"
                        }
                        if(value==2){
                            return "否"
                        }
                    }},
                {field:'cz',title:'操作',formatter:function(value,row,index){
                        var sty="<a href='javascript:dele("+row.id+")'>[删除]</a> ";
                        return sty;
                    }}
            ],
        })
    }

    /**
     * 打开新增弹框
     */
    var res;
    function createAddContenta(url){
        $.ajax({
            url:url,
            async:false,
            success:function(data){
                res = data;
            }
        });
        return res;
    }

    function openAdd(){
        bootbox.dialog({
            title:'添加文章',
            message: createAddContenta("manaAdd"),
            closeButton: true,
            buttons : {
                "success" : {
                    "label" : "<i class='glyphicon glyphicon-ok'></i> 保存",
                    "className" : "btn-sm btn-success",
                    "callback" : function() {
                        $.ajax({
                            url:'saveMana',
                            type:'post',
                            data:$("#myForm").serialize(),
                            //dataType:'json',
                            success:function(data){
                                window.location.reload();
                            }
                        });
                    }
                },
                "cancel" : {
                    "label" : "<i class='glyphicon glyphicon-remove'></i> 取消",
                    "className" : "btn-sm btn-danger",
                    "callback" : function() {

                    }
                }
            }

        });
    }

    /**
     * 删除
     */
    function dele(id){
        bootbox.alert({
            size: "small",
            title: "提示",
            message: "您确定删除这条信息吗？",
            callback: function() {
                $.ajax({
                    url: "deleteMana",
                    async: true,
                    type: "POST",
                    data: {"id": id},
                    dataType: "json",
                    contentType: "application/x-www-form-urlencoded; charset=utf-8",
                    success: function (data) {
                        if (data == 1) {
                            alert("删除成功！");
                            window.location.reload();
                        } else {
                            alert("删除失败！");
                        }
                    },
                    error: function () {

                    }
                })
            }
        })
    }


</script>
</html>
