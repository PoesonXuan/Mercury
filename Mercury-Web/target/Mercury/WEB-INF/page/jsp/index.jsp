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
    <link href="${pageContext.request.contextPath }/css/base.css"
          rel="stylesheet">
</head>
<body >
<!--
悬浮框
-->
<div style="width: 4em;height: 8em;background-color: #7dd4de;border-radius: 10em;position: fixed;right: 5em;bottom: 10em;">
    <div style="width: 4em;height: 4em;border-bottom-color: #7dd4de;color: #7dd4de;">
        <div class="panel panel-default">
            <div class="panel-body" style="background-color: black;">
                <center>
                    <a class="articleA"  href="#" style="text-decoration: none;color: #519f4f;">置顶</a>
                </center>

            </div>
        </div>
    </div>
    <div style="width: 4em;height: 4em;border-top-color: #7dd4de;color: #7dd4de; ">
        <div class="panel panel-default">
            <div class="panel-body" style="background-color: black;">
                <center>
                    <a class="articleA"  href="${pageContext.request.contextPath}/article/write" style="text-decoration: none;color: #519f4f;">发文</a>
                </center>

            </div>
        </div>
    </div>
</div>
<!--
悬浮框
-->


<jsp:include page="${pageContext.request.contextPath}/top"></jsp:include>
<!-- this is  forward page !!! -->

<div id="mainDiv" >
    <div id="mainContent">
        <!--
            左侧栏  start
        -->
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
        <!--
                    左侧栏  end
         -->
        <!--
            中部侧栏  start
        -->

        <div class="col-xs-7" style="height: auto;" >
            <div class="panel panel-success">
                <div class="col-lg-10 panel-heading">推荐</div><div class="col-lg-2  pull-right panel-heading"><span>更多...</span></div>
                <div class="panel-body">
                    <br>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a class="articleA" href="${pageContext.request.contextPath }/article/detail" style="text-decoration: none;color: #4d4e60;">A股疯狂套现40亿</a>
                            <span class="badge badge-primary">原创</span>
                            <span class="badge badge-secondary">次要</span>
                            <span class="badge badge-success">推广</span>
                            <span class="badge badge-danger">置顶</span>
                            <span class="badge badge-warning">警告</span>
                            <span class="badge badge-info">信息</span>
                            <span class="badge badge-light">浅色</span>
                            <span class="badge badge-dark">深色</span>
                        </div>
                        <div class="panel-body">
                            太牛了！曾经的四川上市公司首富，在A股疯狂套现40亿后，公司财报净利润突然下降91.89％，2019上半年净利润更是由盈利变为亏损，直接下滑523％。美女总裁待在美国不回来，早已美国籍。公司高管集体离职，公司业务一切都不管，放着公司退市，连个写公告的人都没有了。其中被坑的股民多达3万多个。这就是中国A股。
                        </div>
                        <div class="panel-footer">
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">作者：大漠</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">|</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">2019-09-05 12:50:54</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">|</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">阅读(220)</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">|</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">喜欢(100)</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">|</a>
                            <a class="articleA"  href="#" style="text-decoration: none;color: #4d4e60;">评论(0)</a>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span>A股疯狂套现40亿</span>
                            <span class="badge badge-primary">原创</span>
                            <span class="badge badge-secondary">次要</span>
                            <span class="badge badge-success">推广</span>
                            <span class="badge badge-danger">置顶</span>
                            <span class="badge badge-warning">警告</span>
                            <span class="badge badge-info">信息</span>
                            <span class="badge badge-light">浅色</span>
                            <span class="badge badge-dark">深色</span>
                        </div>
                        <div class="panel-body">
                            太牛了！曾经的四川上市公司首富，在A股疯狂套现40亿后，公司财报净利润突然下降91.89％，2019上半年净利润更是由盈利变为亏损，直接下滑523％。美女总裁待在美国不回来，早已美国籍。公司高管集体离职，公司业务一切都不管，放着公司退市，连个写公告的人都没有了。其中被坑的股民多达3万多个。这就是中国A股。
                        </div>
                        <div class="panel-footer">作者：大漠</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span>A股疯狂套现40亿</span>
                            <span class="badge badge-primary">原创</span>
                            <span class="badge badge-secondary">次要</span>
                            <span class="badge badge-success">推广</span>
                            <span class="badge badge-danger">置顶</span>
                            <span class="badge badge-warning">警告</span>
                            <span class="badge badge-info">信息</span>
                            <span class="badge badge-light">浅色</span>
                            <span class="badge badge-dark">深色</span>
                        </div>
                        <div class="panel-body">
                            太牛了！曾经的四川上市公司首富，在A股疯狂套现40亿后，公司财报净利润突然下降91.89％，2019上半年净利润更是由盈利变为亏损，直接下滑523％。美女总裁待在美国不回来，早已美国籍。公司高管集体离职，公司业务一切都不管，放着公司退市，连个写公告的人都没有了。其中被坑的股民多达3万多个。这就是中国A股。
                        </div>
                        <div class="panel-footer">作者：大漠</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span>A股疯狂套现40亿</span>
                            <span class="badge badge-primary">原创</span>
                            <span class="badge badge-secondary">次要</span>
                            <span class="badge badge-success">推广</span>
                            <span class="badge badge-danger">置顶</span>
                            <span class="badge badge-warning">警告</span>
                            <span class="badge badge-info">信息</span>
                            <span class="badge badge-light">浅色</span>
                            <span class="badge badge-dark">深色</span>
                        </div>
                        <div class="panel-body">
                            太牛了！曾经的四川上市公司首富，在A股疯狂套现40亿后，公司财报净利润突然下降91.89％，2019上半年净利润更是由盈利变为亏损，直接下滑523％。美女总裁待在美国不回来，早已美国籍。公司高管集体离职，公司业务一切都不管，放着公司退市，连个写公告的人都没有了。其中被坑的股民多达3万多个。这就是中国A股。
                        </div>
                        <div class="panel-footer">作者：大漠</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span>A股疯狂套现40亿</span>
                            <span class="badge badge-primary">原创</span>
                            <span class="badge badge-secondary">次要</span>
                            <span class="badge badge-success">推广</span>
                            <span class="badge badge-danger">置顶</span>
                            <span class="badge badge-warning">警告</span>
                            <span class="badge badge-info">信息</span>
                            <span class="badge badge-light">浅色</span>
                            <span class="badge badge-dark">深色</span>
                        </div>
                        <div class="panel-body">
                            太牛了！曾经的四川上市公司首富，在A股疯狂套现40亿后，公司财报净利润突然下降91.89％，2019上半年净利润更是由盈利变为亏损，直接下滑523％。美女总裁待在美国不回来，早已美国籍。公司高管集体离职，公司业务一切都不管，放着公司退市，连个写公告的人都没有了。其中被坑的股民多达3万多个。这就是中国A股。
                        </div>
                        <div class="panel-footer">作者：大漠</div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span>A股疯狂套现40亿</span>
                            <span class="badge badge-primary">原创</span>
                            <span class="badge badge-secondary">次要</span>
                            <span class="badge badge-success">推广</span>
                            <span class="badge badge-danger">置顶</span>
                            <span class="badge badge-warning">警告</span>
                            <span class="badge badge-info">信息</span>
                            <span class="badge badge-light">浅色</span>
                            <span class="badge badge-dark">深色</span>
                        </div>
                        <div class="panel-body">
                            太牛了！曾经的四川上市公司首富，在A股疯狂套现40亿后，公司财报净利润突然下降91.89％，2019上半年净利润更是由盈利变为亏损，直接下滑523％。美女总裁待在美国不回来，早已美国籍。公司高管集体离职，公司业务一切都不管，放着公司退市，连个写公告的人都没有了。其中被坑的股民多达3万多个。这就是中国A股。
                        </div>
                        <div class="panel-footer">作者：大漠</div>
                    </div>


                </div>
                <%--<div class="panel-footer">作者：大漠</div>--%>
            </div>

        </div>

        <!--
            中部侧栏  end
        -->
        <!--
            右侧栏  start
        -->
        <div class="col-xs-3" style="height: auto;">


            <div class="panel panel-primary">
                <div class="panel-heading">站内公告</div>
                <div class="panel-body">在基础面板一节中了解到，panel样式并没有对主题进行样式设置，而主题样式是通过panel-default来设置。在Bootstrap框架中面板组件除了默认的主题样式之外，还包括以下几种主题样式，构成了一个彩色面板</div>
                <%--<div class="panel-footer">作者：大漠</div>--%>
            </div>

            <div class="panel panel-primary">
                <!-- search form (Optional) -->
                <form action="#" method="get" class="sidebar-form">
                 <div class="input-group">
                  <input type="text" name="q" class="form-control" placeholder="Search...">
                  <span class="input-group-btn">
                       <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search">搜索</i>
                       </button>
                  </span>
                  </div>
                </form>
            </div>



        </div>

        <!--
            右侧栏  stop
        -->
    </div>

</div>



<jsp:include page="${pageContext.request.contextPath}/footer"></jsp:include>




<script type="text/javascript">
    window.jQuery || document.write('<script src="${pageContext.request.contextPath }/js/jquery.min.js"/>');
</script>

<script type="text/javascript">
    $(function () {
       setBackground();

    });

    function setBackground(img_src){
       /* alert('setBackground()');
        if(img_src && img_src != ''){
            alert('not null');
        }else{

            alert('  null');
            img_src = '${pageContext.request.contextPath}/img/bodybg.jpg';
            $("body").css("background-image","url("+img_src+") no-repeat");
            $("body").css("background-size","100%");
        }*/
    }



</script>

</body>
</html>