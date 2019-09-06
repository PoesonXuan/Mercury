<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath }/css/article/detail.css"
          rel="stylesheet">
</head>
<body>
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

<div id="mainDetailDiv" >
    <div id="mainDetaiContent">
        <!--
        文章头 start
        -->
        <div class="panel panel-default">
            <div class="panel-body" style="background-color: black;">
                <center>
                    <h1 style="color:#519f4f;">Mysql添加path变量</h1>
                    <br>
                    <h5 >
                        <a class="articleA"  href="#" style="text-decoration: none;color: #519f4f;">作者：大漠</a>
                        <a class="articleA"  href="#" style="text-decoration: none;color: #519f4f;">|</a>
                        <a class="articleA"  href="#" style="text-decoration: none;color: #519f4f;">2019-09-05 12:50:54</a>
                    </h5>
                </center>

            </div>
        </div>
        <!--
        文章头 end
        -->

        <!--
        内容 start
        -->
        <div class="panel panel-default">
            <div class="panel-body" style="background-color: #efe6e6;">

                <textarea rows="10" cols="100">
                     <p>习近平指出，当前，我们正处在一个挑战层出不穷、风险日益增多的时代，单边主义、保护主义严重威胁世界和平稳定，任何国家都不能独善其身。中德作为两个负责任大国，比以往任何时候都需要加强战略沟通、协调和合作，携手应对人类面临的共同挑战。这不仅对中德两国，对世界都愈显重要。双方要坚持相互尊重、对话协商，尊重彼此发展道路，照顾各自核心利益，做平等对话、互利合作、交流互鉴的战略伙伴。</p>
                    <p>习近平强调，要把中德合作的蛋糕做得更大。你这次访华双方达成不少经贸合作成果，证明中方扩大开放说到做到。中国市场足够大，而且随着发展会越来越大，将给德国和世界各国带来更多新机遇。中德汽车产业合作就是两国互利共赢的很好例子。双方应保持开放前瞻意识，在自动驾驶、新能源汽车、智能制造、人工智能、数字化和5G等新兴领域加强合作，共同培育和开拓未来市场。中方正在加快开放金融和服务业，欢迎德方投资。你还将赴武汉访问。欢迎德国企业参与长江经济带建设。要厚植人文和民意基础，争取两国民众特别是年轻人广泛参与和支持中德关系发展。要共同展现责任担当，维护国际公平正义，捍卫自由贸易和多边主义，在气候变化、对非合作等方面加强合作。</p>
                    <p>默克尔表示，德中对话合作广泛深入，中国是德国最大贸易伙伴。两国合作正沿着更好的方向发展。德国很高兴能够分享中国扩大开放政策成果，愿继续增大对华投资，拓展合作领域，促进人文交流。单边主义、保护主义也给德国带来不利影响。各方应致力于通过对话协商妥善解决分歧和摩擦。德方愿本着多边主义、自由贸易精神，同中方加强在国际事务中的沟通协调。德方愿为欧中关系发展发挥建设性作用。</p>
                    <p>双方还就当前的重大国际问题深入交换了意见，达成了广泛共识。</p>
                    <p>王毅、何立峰等参加会见。</p>
                </textarea>



            </div>
        </div>
        <!--
        内容 end
        -->
        <!--
        用户操作区域 start
        -->
        <div class="panel panel-default">

            <div class="panel panel-default">

                <div class="panel-body">
                    <center>
                        <button type="button" class="btn btn-lg btn-info">好问要顶</button>
                        <button type="button" class="btn btn-lg btn-danger">关注我</button>
                        <button type="button" class="btn btn-lg btn-warning">收藏该文</button>
                    </center>
                </div>
            </div>

            <div class="talk">
                <div class="talkList">
                    <!--
                        评论区 start
                    -->
                    <table class="table" >
                        <caption>回帖区</caption>
                        <tr>
                            <td rowspan="3">头像</td>
                            <td>用户名嘟嘟</td>
                        </tr>
                        <tr>
                            <td>写的很随意呢？你觉得呢？</td>
                        </tr>
                        <tr>
                            <td>2018-03-26 18:02:00</td>
                        </tr>

                        <tr class="success">
                            <td colspan="2">用户名我是大鹏回复嘟嘟</td>
                        </tr>
                        <tr>
                            <td rowspan="3">头像</td>
                            <td>用户名我是大鹏</td>
                        </tr>
                        <tr>
                            <td>还行啊，别太苛刻</td>
                        </tr>
                        <tr>
                            <td>2018-03-26 18:04:00</td>
                        </tr>
                    </table>

                    <!--
                        评论区 end
                    -->
                </div>
                <div class="toTalk">
                    <!--
                    写评论 start
                    -->
                    <form role="form">
                        <div class="form-group">
                            <label for="name">写评论</label>
                            <input type="text" class="form-control" placeholder="写下您的评论....">
                        </div>
                    </form>
                    <!--
                     写评论 stop
                     -->
                </div>
            </div>

        </div>
        <!--
        用户操作区域 end
        -->
    </div>

</div>



<jsp:include page="${pageContext.request.contextPath}/footer"></jsp:include>




<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath }/js/jquery.min.js"><\/script>')</script>



</body>
</html>