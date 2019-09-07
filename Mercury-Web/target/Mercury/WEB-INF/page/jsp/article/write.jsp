<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath }/css/article/write.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/base.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/UEditor/umeditor.css"
          rel="stylesheet">
</head>
<body >



<jsp:include page="${pageContext.request.contextPath}/top"></jsp:include>
<!-- this is  forward page !!! -->
<br>
<br>
<br>
<div id="mainWriteDiv" >
    <div id="mainWriteContent">
        <div class="panel panel-default">
            <div class="panel-body" >
               <form action="#" method="post">
                   <!--
                   标题 start
                   -->
                   <div class="panel panel-default">
                       <div class="panel-body" >
                           <div class="form-group">
                               <label id="write_title" class="col-sm-1 control-label">标题</label>
                               <div class="col-sm-4">
                                   <input type="text" class="form-control" name="userName" placeholder="请输入标题">
                               </div>
                           </div>

                       </div>
                   </div>
                   <!--
                   标题 end
                   -->
                   <!--
                   类别 start
                   -->

                   <div class="panel panel-default">
                       <div class="panel-body" >
                           <div class="form-group">
                               <label id="write_type" class="col-sm-1 control-label">类别</label>
                               <div class="col-sm-4">
                                   <select class="form-control selectpicker" title="请选择类别">
                                       <option value="2" class="special">power user</option>
                                       <option value="3" class="special" selected>user</option>
                                       <option value="4" class="special">guest</option>
                                   </select>
                               </div>
                           </div>

                       </div>
                   </div>

                   <!--
                   类别 end
                   -->
                   <!--
                   标签 start
                   -->
                   <div class="panel panel-default">
                       <div class="panel-body" >
                           <label id="write_tags" class="col-sm-1 control-label">标签</label>
                           <div id="content" style="width:90%;float:right;height: 70%">
                               <div class="row">
                                   <div class="col-xs-5">
                                       <label class="control-label col-sm-4" onclick="addTag()" >创建新标签</label>
                                       <label class="control-label col-sm-1" >|</label>
                                       <label class="control-label col-sm-3" >未拥有</label>
                                       <select name="from" id="multiselect" class="js-multiselect form-control" size="8" multiple="multiple">
                                           <option>one</option>
                                           <option>two</option>
                                           <option>three</option>
                                           <option>four</option>
                                           <option>five</option>
                                           <option>six</option>
                                           <option>seven</option>
                                       </select>
                                   </div>

                                   <div class="col-xs-2">
                                       <div class="row">
                                           <br/>
                                           <button type="button" id="js_right_All_1" class="btn btn-block" onclick="selectChange(1)">《《《</button>
                                           <button type="button" id="js_right_Selected_1" class="btn btn-block" onclick="selectChange(2)">《《</button>
                                           <button type="button" id="js_left_Selected_1" class="btn btn-block" onclick="selectChange(3)">》》</button>
                                           <button type="button" id="js_left_All_1" class="btn btn-block" onclick="selectChange(4)">》》》</button>
                                       </div>
                                   </div>

                                   <div class="col-xs-5">
                                       <label class="control-label col-sm-3" for="js_multiselect_to_1">已拥有</label>
                                       <select name="to" id="js_multiselect_to_1" class="form-control" size="8" multiple="multiple">

                                       </select>
                                   </div>
                               </div>
                           </div>

                       </div>
                   </div>
                   <!--
                   标签 end
                   -->

                   <!--
                   正文 start
                   -->

                   <div class="panel panel-default">
                       <div id="write_content" class="panel-heading">正文</div>
                       <div class="panel-body" >
                           <div id="editor">
                               <h1>Hello world!</h1>
                               <h1>Please write here!</h1>
                           </div>
                       </div>
                   </div>
                   <!--
                   正文 end
                   -->
                   <!--
                   按钮组合 start
                   -->
                   <div class="panel panel-default">
                       <div class="panel-body" >
                           <button id="write_btns_add_image" type="button" class="btn btn-sm btn-info" onclick="getCKData()">添加图片</button>
                           <button id="write_btns_add_publish" type="button" class="btn btn-sm btn-success">发布</button>
                           <button id="write_btns_add_home" type="button" class="btn btn-sm btn-danger">返回主页</button>
                       </div>
                   </div>
                   <!--
                   按钮组合 end
                   -->



               </form>

            </div>
        </div>
    </div>

</div>



<jsp:include page="${pageContext.request.contextPath}/footer"></jsp:include>





</body>



<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath }/js/jquery.min.js'/>" );

</script>



<script src="${pageContext.request.contextPath }/ck/ckeditor.js"></script>
<script src="${pageContext.request.contextPath }/ck/samples/js/sample.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/ck/samples/css/samples.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/ck/samples/toolbarconfigurator/lib/codemirror/neo.css">

<!--开头这里的样式为默认的风格，可以根据自己的喜好更换风格-->
<!--我的高亮效果是zenburn-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/ck/highlight/styles/idea.css">
<script src="${pageContext.request.contextPath }/ck/highlight/highlight.pack.js"></script>


<script type="text/javascript">

    initSample();

    hljs.initHighlightingOnLoad();

    $(function () {


    });

    function getCKData(){
        debugger;
        var content = CKEDITOR.instances.editor.getData();//获取值
        var htmlData=CKEDITOR.instances.editor.getData();
        var appEndData="追加的内容";
        var theData=htmlData+appEndData;
        CKEDITOR.instances.editor.setData(theData);
    }


    function selectChange(sign) {
        if(sign){
            if(sign == 1){ // 《《《
                $("#multiselect").append( $("#js_multiselect_to_1").find("*").clone(true));
                $("#js_multiselect_to_1").empty();
            }else  if(sign == 2){ // 《《
                $("#multiselect").append( $("#js_multiselect_to_1").find("option:selected").clone(true));
                $("#js_multiselect_to_1").find("option:selected").remove();
            }else  if(sign == 3){ // 》》
                $("#js_multiselect_to_1").append( $("#multiselect").find("option:selected").clone(true));
                $("#multiselect").find("option:selected").remove();
            }else  if(sign == 4){ // 》》》
                $("#js_multiselect_to_1").append( $("#multiselect").find("*").clone(true));
                $("#multiselect").empty();
            }
        }

    }

    function addTag() {
        alert("This is tag!!!");
    }

</script>
</html>