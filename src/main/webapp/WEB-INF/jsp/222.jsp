<%--
  Created by IntelliJ IDEA.
  User: fanshuai
  Date: 2019/2/26
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script	src="${pageContext.request.contextPath }/jslib/jquery-2.1.1.min.js"></script>
    <!-- 引入easyui样式文件 -->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/jquery-easyui-1.5/themes/default/easyui.css">
    <!-- 引入easyui图标样式文件 -->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/jquery-easyui-1.5/themes/icon.css">
    <!-- 引入jquery js文件 -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5/jquery.min.js"></script>
    <!-- 引入easyui的js文件 -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5/jquery.easyui.min.js"></script>
    <!-- 引文easyui支持中文js -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>

    <!-- 登陆框架 -->
    <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="all" />

    <link rel="stylesheet" href="<%=request.getContextPath() %>/alter/example.scss">
    <!-- This is what you need -->
    <script src="<%=request.getContextPath() %>/alter/sweet-alert.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/alter/sweet-alert.css">

    <script type="text/javascript" src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/js/bootstrap.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/css/bootstrap.css"/>
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootstrap3/js/bootstrap.min.js"></script>


    <link rel="stylesheet" type="text/css" href="ss/css/style.css" />
    <link rel="stylesheet" type="text/css" href="ss/css/body.css"/>



   <%--


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
    <script src="${pageContext.request.contextPath }/jslib/bootstrap/bootStrap-addTabs/bootstrap.addtabs.min.js"></script>--%>
    <title>登录</title>
</head>
<body>
<div class="container">
    <section id="content">
        <form action="#" method="post">
            <h1>会员登录</h1>
            <div>
                <input type="text" placeholder="邮箱" required="" id="loginnumber" name="userName"/>
            </div>
            <div>
                <input type="password" placeholder="密码" required="" id="pwd" name="userPwd"/>
            </div>
            <div class="">
                <span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>
            </div>

            <div>
                <!-- <input type="submit" value="Log in" /> -->
                <input type="button" value="登陆" onclick="loginUser()" class="btn  btn-warning btn-lg btn-block"
                       id="js-btn-login">
                <!-- <a href="#">Register</a> -->
            </div>

        </form>

    </section>
</div>

</body>
<script>
    function loginUser(){
        var loginnumber = $("#loginnumber").val();
        var pwd = $("#pwd").val();
        $.ajax({
            url:"/loginUser",
            data:{"userName":loginnumber,"userPwd":pwd},
            success:function(data){
                swal(data, "", "error")
                if(data == "登陆成功！"){
                    swal(data, "", "success")
                    window.parent.location.href="<%=request.getContextPath()%>/toTree";
                    setTimeout(function(){alert(1236)}, 3000);
                }
            },
            error:function(){
                $.messager.alert("提示驾到","登录失败","error");
            }
        })
    }

</script>
</html>
