<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/2/21
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .row{
        margin-top:10px;
    }
</style>
<body>
<div class="container-fluid">
    <form id="addForm" class="form-horizontal">
        <div class="row">
            <div class="col-xs-2">标题：</div>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="title">
            </div>
        </div>

        <div class="row">
            <div class="col-xs-2">链接地址：</div>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="link">
            </div>
        </div>   <br/>

        <div class="row">
            <div class="col-xs-2">类型：</div>
            <div class="col-xs-5">
            <select class="form-control" name="type">
                <option value="文本">文本</option>
                <option value="图片">图片</option>
            </select>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2">广告位：</div>
            <div class="col-xs-5">
            <select class="form-control" name="advertising">
                <option  value="Pc首页banner图"> Pc首页banner图</option>
                <option value="Pc广告首页图"> Pc广告首页图</option>
                <option value="Mobile首页banner图"> Mobile首页banner图</option>
                <option value="Mobile首页广告图"> Mobile首页广告图</option>
            </select>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2">内容：</div>
                <div class="col-xs-8">
                    <textarea class="form-control" rows="3" name="content"></textarea> <%--（rows:可以输入的行数）--%>
                </div>

        </div>
        <div class="row">
            <div class="col-xs-2">排序：</div>
            <div class="col-xs-4">
                <input type="text" class="form-control" name="sort">
            </div>
        </div>


        <div class="row">
            <div class="col-xs-2">图片：</div>
            <div class="col-xs-10">
                <input type="hidden" id="testimg" name="info" />
                <!-- projectfile -->
                <input type="file" multiple class="projectfile" accept="image/*" name="img" id="headImg">
                </label>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-2">是否启动：</div>
            <label class="radio-inline">
                <input type="radio"  value="启动" name="state">启动
            </label>
            <label class="radio-inline">
                <input type="radio"  value="不启动" name="state"> 不启动
            </label>
        </div>
    </form>
</div>
</body>
<script type="text/javascript">

    $(function(){
        initMyTable();
    })

    //头像
    $('#headImg').fileinput({
        language: 'zh', //设置语言
        uploadUrl: '/upload2', //上传的地址
        allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
        showUpload: true, //是否显示上传按钮
        showCaption: false,//是否显示标题
        browseClass: "btn btn-primary", //按钮样式
        //dropZoneEnabled: false,//是否显示拖拽区域
        //minImageWidth: 50, //图片的最小宽度
        //minImageHeight: 50,//图片的最小高度
        //maxImageWidth: 1000,//图片的最大宽度
        //maxImageHeight: 1000,//图片的最大高度
        //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
        //minFileCount: 0,
        maxFileCount: 2, //表示允许同时上传的最大文件个数
        enctype: 'multipart/form-data',
        validateInitialCount:true,
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
    }).on('fileuploaded', function(event, data, previewId, index) {
        var imgval = $('#testimg').val();
        if(imgval == null || imgval == "" || imgval == undefined){
            imgval = "http://<%= request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>/"+data.response.img;
        }else{
            imgval += ","+"http://<%= request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>/"+data.response.img;
        }
        $('#testimg').val(imgval);
    });





</script>
</html>
