<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>top</title>
<link href="${pageContext.request.contextPath }/css/bootstrap/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="${pageContext.request.contextPath }/css/bootstrap/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/css/bootstrap/navbar-fixed-top.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="${pageContext.request.contextPath }/js/bootstrap/ie-emulation-modes-warning.js"></script>
</head>
<body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span id="toggle_navigation" class="sr-only lang">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a id="project_name" class="navbar-brand lang" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="nav_tag_left active"><a id="nav_home" class="lang" href="#">Home</a></li>
              <li class="nav_tag_left"><a id="nav_blog" class="lang" href="#blog">blog</a></li>
              <li class="nav_tag_left"><a id="nav_talk" class="lang" href="#talk">talk</a></li>
              <li class="nav_tag_left"><a id="nav_tech" class="lang" href="#tech">tech</a></li>
              <li class="nav_tag_left"><a id="nav_literature" class="lang" href="#literature">literature</a></li>
              <li class="nav_tag_left"><a id="nav_novel" class="lang" href="#novel">novel</a></li>
              <li class="nav_tag_left"><a id="nav_about" class="lang" href="#about">About</a></li>
            <li class="nav_tag_left"><a id="nav_contact" class="lang" href="#contact">Contact</a></li>
            <li class="nav_tag_left dropdown" >
              <a href="#" id="nav_dropdown" class="dropdown-toggle lang" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a id="select_action" class="lang" href="#">Action</a></li>
                <li><a id="select_another" class="lang" href="#">Another action</a></li>
                <li><a id="select_else" class="lang" href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li id="nav_header" class="dropdown-header lang">Nav header</li>
                <li><a id="select_link" class="lang"  href="#">Separated link</a></li>
                <li><a id="select_more_link"  class="lang"  href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
				 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span id="nav_current_user" class="lang" >当前用户</span>：小哥 <span class="caret"></span></a>
	              <ul class="dropdown-menu">
	              	<li role="separator" class="divider"></li>
	                <li><a id="select_user_page" class="lang" href="#">用户主页</a></li>
	                <li role="separator" class="divider"></li>
	                <li><a id="select_user_loginout" class="lang"  href="#">Separated link</a></li>
	              </ul>
			</li>
            <li class="dropdown">
            	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span id="id_login" class="lang">登录</span>/<span  id="id_register" class="lang">注册</span> <span class="caret"></span></a>
	              <ul class="dropdown-menu">
	              	<li role="separator" class="divider"></li>
	                <li><a id="select_login" class="lang" href="#">登录</a></li>
	                <li role="separator" class="divider"></li>
	                <li><a id="select_register" class="lang"  href="#">注册</a></li>
	              </ul>
	         </li>
            <li class="dropdown active">
				<a href="#" id="nav_language" class="dropdown-toggle lang" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">语言 <span class="caret"></span></a>
	              <ul class="dropdown-menu">
	              	<li role="separator" class="divider"></li>
	                <li><a id="nav_language_cn" class="lang" href="#" onclick="changeZh()">中文</a></li>
	              	<li role="separator" class="divider"></li>
	                <li><a id="nav_language_en" class="lang" href="#" onclick="changeEn()">英语</a></li>
	              </ul>
			</li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
    
    <script src="${pageContext.request.contextPath }/js/bootstrap/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath }/js/bootstrap/ie10-viewport-bug-workaround.js"></script>
    

    <script src="${pageContext.request.contextPath }/js/common/cookies.js"></script>
    <script src="${pageContext.request.contextPath }/js/common/jquery.i18n.properties.js"></script>


	<script type="text/javascript">

	$(function(){
		var ck = cookie.getCookie('lang');
		var l = 'zh';
		if(ck && ck != ''){
			if('zn' == ck)
				l = 'zh';
			else if('en' == ck)
				l = 'en';
			else
				l = 'zh';
		}

		//初始化页面内容
		$.i18n.properties({
	        name : 'system', //资源文件名称
	        path : '${pageContext.request.contextPath}/i18n/', //资源文件路径
	        mode : 'map', //用Map的方式使用资源文件中的值
	        language : l, //中文 对应properties文件名的"zh"两个字   也就是说path+name+language就是你资源文件的路径
	        callback : function() {//加载成功后设置显示内容
	        	changeValue();
	        }
	    });
		cookie.setCookie("lang", ck, 1);  //将页面选择的语言通过cookie记录下来，后台会用到
		//cookie.setCookie("lang", "zn", 1);  //将页面选择的语言通过cookie记录下来，后台会用到

		$(".nav_tag_left").each(function(i, nav) {

			$(nav).on('click', function(event){
				if(nav.target.className == event.target.className){
					if(event.target.className.indexOf('active') == -1){
						event.target.className = event.target.className + ' active';
					}
					return;
				}else{
					var cls = getClassName(event);
					$(".nav_tag_left").each(function(i, nav) {
						nav.target.className = getClassName(nav);
					});
				}
				//event.target.className = cls +' active';
			});

		});
	});


	var cookie={   //cookie工具类
			setCookie:function(c_name,value,expiredays){  //设值
				var exdate=new Date()
				exdate.setDate(exdate.getDate()+expiredays)
				document.cookie=c_name+ "=" +escape(value)+
				((expiredays==null) ? "" : ";expires="+exdate.toGMTString())
			},
			getCookie:function(c_name){   //取值
				if (document.cookie.length>0)
				  {
				  c_start=document.cookie.indexOf(c_name + "=")
				  if (c_start!=-1)
				    {
				    c_start=c_start + c_name.length+1
				    c_end=document.cookie.indexOf(";",c_start)
				    if (c_end==-1) c_end=document.cookie.length
				    return unescape(document.cookie.substring(c_start,c_end))
				    }
				  }
				return "";
			},
			checkCookie:function(){   //验证
				var username=getCookie('username')
				if (username!=null && username!="")
				  {alert('Welcome again '+username+'!')}
				else
				  {
				  username=prompt('Please enter your name:',"")
				  if (username!=null && username!="")
				    {
				    setCookie('username',username,365)
				    }
				  }
			}
		}

		function changeZh(){  //中文切换
			$.i18n.properties({
		        name : 'system', //资源文件名称
		        path : '${pageContext.request.contextPath}/i18n/', //资源文件路径
		        mode : 'map', //用Map的方式使用资源文件中的值
		        language : 'zh',
		        callback : function() {//加载成功后设置显示内容
		        	changeValue();
		        }
		    });
			cookie.setCookie("lang", "cn", 1);
		};
		function changeEn(){  //英文切换
			$.i18n.properties({
		        name : 'system', //资源文件名称
		        path : '${pageContext.request.contextPath}/i18n/', //资源文件路径
		        mode : 'map', //用Map的方式使用资源文件中的值
		        language :'en',
		        callback : function() {//加载成功后设置显示内容
		        	changeValue();
		        }
		    });
			cookie.setCookie("lang", "en", 1);
		};
		function changeValue(){  //公共的赋值事件,需要在标签中定义一个id名(需要和properties文件中的Key相同),
			                  //和一个class属性(名字随便起，主要是为了遍历所有需要切换文字的标签)
			$('.lang').each(function(){
				var tagName=$(this).prop("tagName");
				if(tagName=="INPUT"){ //不同的标签不同的赋值方法
				  $(this).val($.i18n.prop($(this).attr("id")))
				}else{
				  $(this).html($.i18n.prop($(this).attr("id")))
				}
			})
		};


		function getClassName(event){
			var classNames = '';
			var cls = event.target.className;
			var strs= new Array(); //定义一数组
			strs=cls.split(" "); //字符分割
			for (i=0;i<strs.length ;i++ )
			{
				//分割后的字符输出
				if(strs[i] != 'active' && strs[i] != ''){
					if(classNames != ''){
						classNames += ' '+ strs[i]
					}else{
						classNames += strs[i]
					}
				}
			}
			return classNames;
		}
	</script>
</body>
</html>