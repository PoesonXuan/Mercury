<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="${pageContext.request.contextPath }/css/index.css"
          rel="stylesheet">
</head>
<body>

<jsp:include page="${pageContext.request.contextPath}/top"></jsp:include>
<!-- this is  forward page !!! -->

<div id="mainDiv" >
    <div id="mainContent">
        <div class="col-xs-2" >
            <br/><br/>
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                <li class="active"><a href="#section-1">第一部分</a></li>
                <li><a href="#section-2">第二部分</a></li>
                <li><a href="#section-3">第三部分</a></li>
                <li><a href="#section-4">第四部分</a></li>
                <li><a href="#section-5">第五部分</a></li>
            </ul>
            <br/><br/>

        </div>

        <div class="col-xs-7" style="background-color: #1b6d85;height: 500px;" >


        </div>
        <div class="col-xs-3" style="background-color: #4cae4c;height: 500px;">

            <div id="calendar"></div>
        </div>

    </div>

</div>



<jsp:include page="${pageContext.request.contextPath}/footer"></jsp:include>




<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath }/js/jquery.min.js"><\/script>')</script>

<script type="application/javascript">
    $(function () {
        alert('1132');

        $('.calendar').calendar();
    });

</script>

</body>
</html>