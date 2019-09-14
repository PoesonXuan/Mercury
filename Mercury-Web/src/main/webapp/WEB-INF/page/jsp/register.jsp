<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath }/css/login/login.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath }/css/base.css"
          rel="stylesheet">
</head>
<body >



<jsp:include page="${pageContext.request.contextPath}/top"></jsp:include>
<!-- this is  forward page !!! -->

<br>

<div id="loginMain">
    <div id="loginContentMain">
        <div id="loginForm">


            <form id="registerFormID" action="${pageContext.request.contextPath}/authen/register">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <label  class="col-sm-12 control-label">注册>>></label>
                    </div>
                    <div class="panel-body" ></div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <div class="form-group">
                            <label id="write_title" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="register.userName" placeholder="用户名...">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <div class="form-group">
                            <label id="write_title" class="col-sm-3 control-label">密码</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="register.password" placeholder="密码...">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <div class="form-group">
                            <label id="write_title" class="col-sm-3 control-label">确认密码</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="register.rePassword" placeholder="确认密码...">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <div class="form-group">
                            <label id="write_title" class="col-sm-3 control-label">手机号码</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="register.telePhone" placeholder="密码...">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <div class="form-group">
                            <label id="write_title" class="col-sm-3 control-label">邮箱</label>
                            <div class="col-sm-9">
                                <input type="post" class="form-control" name="register.post" placeholder="密码...">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <button type="button" class="btn btn-sm btn-info" onclick="registerSubmit()">注册</button>
                        <button type="reset" class="btn btn-sm btn-danger">重置</button>
                    </div>
                </div>
            </form>

        </div>

    </div>
</div>



<jsp:include page="${pageContext.request.contextPath}/footer"></jsp:include>





</body>



<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath }/js/jquery.min.js'/>" );

</script>




<script type="text/javascript">

    function registerSubmit(){
        var data = $("#registerFormID").serialize();debugger;

        var targetUrl = '${pageContext.request.contextPath}/authen/register';


        $.ajax({
            type:'post',
            url: '${pageContext.request.contextPath}/authen/mailValidate',
            async: false,
            cache: false,
            data:data,  //重点必须为一个变量如：data
            dataType:'json',
            success:function(data){debugger;
                alert('success');
            },
            error:function(){debugger;
                alert("请求失败")
            }
        });

        $.ajax({
            type:'post',
            url:targetUrl,
            async: true,
            cache: false,
            data:data,  //重点必须为一个变量如：data
            dataType:'json',
            success:function(data){debugger;
                alert('success');
            },
            error:function(){debugger;
                alert("请求失败")
            }
        });
    }

    $(function () {


    });



</script>
</html>