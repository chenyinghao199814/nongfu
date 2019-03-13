<%--
  Created by IntelliJ IDEA.
  User: fanshuai
  Date: 2019/2/25
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="<%=request.getContextPath() %>/js/easyui1.5/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/easyui1.5/jquery.easyui.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/easyui1.5/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/easyui1.5/themes/color.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/easyui1.5/themes/icon.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/easyui1.5/themes/default/easyui.css">
    <script src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/kindeditor-min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/kindeditor-4.1.10/themes/qq/qq.css">




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
    <button type="button" onclick="openAddDialog()" class="btn btn-primary glyphicon glyphicon-plus">新增</button>

</div>

<table id="myTable"></table>


</body>
<script>

    //新增
    function createAddContent(url){
        $.ajax({
            url:url,
            async:false,
            success:function(data){
                res = data;
            }
        });
        return res;
    }

    //打开新建窗口
    function openAddDialog(){
        bootbox.dialog({
            size: "big",
            title:'添加用户',
            message:createAddContent('/toParameterAddShow'),
            closeButton:true,
            //className:'add-dialog',
            buttons:{
                'success':{
                    "label" : "<i class='icon-ok'></i> 保存",
                    "className" : "btn-sm btn-success",
                    "callback" : function() {
                        $.ajax({
                            url:'/saveParameter',
                            type:'post',
                            data:$("#adForm").serialize(),
                            dataType:'json',
                            success:function(data){
                                if (data==1) {
                                    window.location.reload();
                                }

                            },
                        })
                    }
                },
                'cancel':{
                    "label" : "<i class='icon-info'></i> 取消",
                    "className" : "btn-sm btn-danger",
                    "callback":function(){

                    }
                }
            }
        })
    }



    function delsUs(id){
        bootbox.alert({
            size: "small",
            title: "提示",
            message: "您确定删除这条信息吗？",
            callback: function() {

                $.ajax({
                    url: "/deletesUs",
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
                    error: function (e) {
                        alert("网络连接失败，请您稍后再试！");
                    }
                })
            }
        })
    }

    $(function() {
        initMyTable();
    })
    function initMyTable() {
        $('#myTable').bootstrapTable({
            //toolbar:'#toolbar',
            url:'/queryListParameter',
            //pagination:true, //是否展示分页
            //pageList:[5, 10, 20, 50],//分页组件
            // pageNumber:1,
            // pageSize:5,//默认每页条数
            //search:true,//是否显示搜索框
            //searchText:'试试',//初始化搜索文字
            /* showColumns:false,//是否显示 内容列下拉框
            showToggle:false,//是否显示 切换试图（table/card）按钮
            showPaginationSwitch:false,//是否显示 数据条数选择框
            detailView:false,//设置为 true 可以显示详细页面模式。
            showFooter:false,//是否显示列脚
            clickToSelect: true, //是否启用点击选中行
            striped:true, */
            showRefresh:true,//是否显示刷新按钮
            /* queryParams:function() {
                 return {
                     page:this.pageNumber,
                     rows:this.pageSize,
                     //name:$("#userName").val(),
                     //start:$("#start").val(),
                     //stop:$("#stop").val()
                 };
             },*/
            // sidePagination:'server',//分页方式：client客户端分页，server服务端分页（*
            columns : [ {
                checkbox : true
            }, {
                field : 'id',
                title : 'ID'
            }, {
                field : 'parameterId',
                title : '参数组'
            },
                {
                    field : 'type',
                    title : '绑定分类'
                },
                {
                    field : 'parameterName',
                    title : '参数名称'
                },
                {
                    field : 'sort',
                    title : '排序'
                },
                {
                    field : 'createTime',
                    title : '创建日期'
                },
                {field:'123',title:'操作',formatter:function(value,row,index){
                        return '[<a href="javascript:delsUs('+row.id+');">删除</a>]';
                    }}
            ]
        })
    }


</script>
</html>
