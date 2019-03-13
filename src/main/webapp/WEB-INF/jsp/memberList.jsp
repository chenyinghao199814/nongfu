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

    <div class="container-fluid">
        <form id="myForm"  method="post" >
            <div class="row">
                <div class="col-xs-2">
                    <label for="hmnumber">手机号码</label>
                </div>
                <div class="col-xs-4">
                    <input type="text" class="form-control" name="hmnumber" placeholder="请输入手机号码">
                </div>
            </div>
                <div class="row">
                <div class="col-xs-2">
                    <label for="membpassword">密码</label>
                </div>
                <div class="col-xs-4">
                    <input type="text" class="form-control" name="membpassword" placeholder="请输入密码">
                </div>
            </div>

            <div class="row">
                <div class="col-xs-2">
                    <label for="">确认密码</label>
                </div>
                <div class="col-xs-4">
                    <input type="text" class="form-control" name="" placeholder="请确定密码">
                </div>
            </div>
                <div class="row">
                <div class="col-xs-2">
                    <label for="memeberName">名称</label>
                </div>
                <div class="col-xs-4">
                    <input type="text" class="form-control"  name="memeberName" placeholder="请输入名称">
                </div>
            </div>
            <button type="submit" class="btn btn-"  onclick="addlist()">确定</button><br/>
            <button type="reset" class="btn btn-">取消</button>
        </form>
    </div>

</body>

<script>
    //======提交表单===
    function addlist(){
        var fd = new FormData($("#myForm")[0]);
        $.ajax({
            url :"<%=request.getContextPath() %>/savemeb",
            type: "post",
            data: fd,
            processData: false,
            contentType:false,
            dataType: "json",
            success : function(data) {

                if(data==1){
                    alert(data)
                  location.href="toMember";
                }
                alert("代码有问题，请打开F12和debug进行调试！");
            },
            error : function(e){

            }
        });

    }




</script>
</html>
