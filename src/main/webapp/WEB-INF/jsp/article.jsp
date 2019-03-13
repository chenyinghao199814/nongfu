<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/21
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章分类</title>
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
<h4><b>文章分类管理</b></h4>
<div id="toolbar">
    <button onclick="openAdda()" type="button" class="btn btn-info glyphicon glyphicon-plus">新增</button>
    <button onclick="location=location" type="button" class="btn btn-success glyphicon glyphicon-refresh">刷新</button>
</div>
<table class="table" id="myTable"></table>
</body>
<script type="text/javascript">
    /**
     * 初始化表格
     */
    function initUserTable(){
        $("#myTable").bootstrapTable({
            toolbar:"#toolbar",
            url :"/queryArticle",
            columns:[
                {field:"id",title:"ID"},
                {field:"name",title:"名称"},
                {field:"sorting",title:"排序"},
                {field:'cz',title:'操作',formatter:function(value,row,index){
                    var sty="<a href='javascript:del("+row.id+")'>[删除]</a> ";
                    sty+="  <a href='javascript:openUpdate("+row.id+")'>[编辑]</a>";
                    return sty;
                }}
            ]
        });
    }


    /**
     * 页面加载
     */
    $(function(){
        initUserTable();
    })


    /**
     *打开修改弹框
     */
    function openUpdate(id){
	bootbox.dialog({
		title:'修改文章分类',
	    message: createAddContent("articleUpdate"),
	    closeButton: true,
	    buttons : {
	        "success" : {
	            "label" : "<i class='glyphicon glyphicon-ok'></i> 保存",
	            "className" : "btn-sm btn-success",
	            "callback" : function() {
	            	$.ajax({
	            		url:'upArticle',
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

	})   /**
         * 回显数据
         */
        $.ajax({
            url:"ArticleById",
            type:"post",
            data:{id:id},
            success:function(data){
                $("#id").val(data.id);
                $("#name").val(data.name);
                $("#classification").val(data.classification);
                $("#pagetitle").val(data.pagetitle);
                $("#keyword").val(data.keyword);
                $("#pageinfo").val(data.pageinfo);
                $("#sorting").val(data.sorting);
            }
        })
    };

    /**
     * 删除
     */

    function del(id){
         bootbox.alert({
             size: "small",
             title: "提示",
             message: "您确定删除这条信息吗？",
             callback: function() {
                 $.ajax({
                     url: "deleteArticle",
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


    /**
     * 打开新增弹框
     */
    var res;
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

    function openAdda(){
        bootbox.dialog({
            title:'添加文章分类',
            message: createAddContent("articleAdd"),
            closeButton: true,
            buttons : {
                "success" : {
                    "label" : "<i class='glyphicon glyphicon-ok'></i> 保存",
                    "className" : "btn-sm btn-success",
                    "callback" : function() {
                        $.ajax({
                            url:'saveArticle',
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



</script>
</html>
