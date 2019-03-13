<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/2/21
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
<%--条查--%>
<div id="toolbar">
    <form class="form-inline">
        <div class="form-group">
            <label for="userName">用户名</label>
            <input type="text" class="form-control" id="userName" placeholder="请输入用户名">
        </div>

        <button onclick="searchUser()" type="button" class="btn btn-primary glyphicon glyphicon-search">搜索</button>
        <button onclick="delsUser()" type="button" class="btn btn-primary glyphicon glyphicon-minus">删除</button>
    </form>

    <div class="container">

        <button type="button" onclick="openAddDialog()" class="btn btn-primary glyphicon glyphicon-plus">新增</button>
    </div>
</div>


<%--表格--%>
<table class="table" id="myTable"></table>
</body>
    <script>

        $(function() {
            initMyTable();
        })

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
                message:createAddContent('${pageContext.request.contextPath }/toAdd'),
                closeButton:true,
                //className:'add-dialog',
                buttons:{
                    'success':{
                        "label" : "<i class='icon-ok'></i> 保存",
                        "className" : "btn-sm btn-success",
                        "callback" : function() {
                            $.ajax({
                                url:'/saveAd',
                                type:'post',
                                data:$("#addForm").serialize(),
                                dataType:'json',
                                success:function(data){
                                    if (data=1) {
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

        //查询
        function initMyTable() {
            $('#myTable').bootstrapTable({
                toolbar : '#toolbar',
                url : '<%=request.getContextPath()%>/queryAd',
                pagination : true, //是否展示分页
                pageList : [5, 10, 20, 50],//分页组件
                pageNumber : 1,
                pageSize : 5,//默认每页条数
                //search:true,//是否显示搜索框
                //searchText:'试试',//初始化搜索文字
                showColumns : false,//是否显示 内容列下拉框
                showToggle : false,//是否显示 切换试图（table/card）按钮
                showPaginationSwitch : false,//是否显示 数据条数选择框
                showRefresh : false,//是否显示刷新按钮
                detailView : false,//设置为 true 可以显示详细页面模式。
                showFooter : false,//是否显示列脚
                clickToSelect : true, //是否启用点击选中行
                sidePagination : 'server',//分页方式：client客户端分页，server服务端分页（*
                striped : true,
                queryParams : function() {

                    return {
                        page : this.pageNumber,
                        rows : this.pageSize,
                        name: $("#userName").val()
                    }
                },
                columns : [
                    {checkbox : true},
                    {field : 'id',title : 'id'},
                    {field : 'title', title : '标题'},
                    {field : 'advertising', title : '广告位'},
                    {field : 'type', title : '类型'},
                    {field : 'sort', title : '排序'},
                    {field : 'state', title : '状态'}
                    ]
            });
        }

    </script>

</html>
