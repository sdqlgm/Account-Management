<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>账户管理系统</title>

	<link href="plugins/fullPage/jquery.fullPage.css" rel="stylesheet"/>
	<link href="plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
	<link href="plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
	<link href="plugins/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>
	<link href="css/admin.css" rel="stylesheet"/>
	<style>
	
	/** skins **/
	#zheng-upms #header {background: #29A176;} 
 	#zheng-upms .content_tab{background:#29A176;} 
 	#zheng-upms .s-profile>a{background:url(images/zheng-upms.png) left top no-repeat;} 
	
/* 	#zheng-cms #header {background: #455EC5;} */
/* 	#zheng-cms .content_tab{background:#455EC5;} */
/* 	#zheng-cms .s-profile>a{background:url(images/zheng-cms.png) left top no-repeat;} */

	
/* 	#zheng-pay #header {background: #F06292;} */
/* 	#zheng-pay .content_tab{background:#F06292;} */
/* 	#zheng-pay .s-profile>a{background:url(images/zheng-pay.png) left top no-repeat;} */

	
/* 	#zheng-ucenter #header {background: #6539B4;} */
/* 	#zheng-ucenter .content_tab{background:#6539B4;} */
/* 	#zheng-ucenter .s-profile>a{background:url(images/zheng-ucenter.png) left top no-repeat;} */

	
/* 	#zheng-oss #header {background: #0B8DE5;} */
/* 	#zheng-oss .content_tab{background:#0B8DE5;} */
/* 	#zheng-oss .s-profile>a{background:url(images/zheng-oss.png) left top no-repeat;} */
	</style>
</head>
<body>
<header id="header">
	<ul id="menu">
		<li id="guide" class="line-trigger">
			<div class="line-wrap">
				<div class="line top"></div>
				<div class="line center"></div>
				<div class="line bottom"></div>
			</div>
		</li>
		<li id="logo" class="hidden-xs">
			<a href="#">
				<img src="images/logo.png"/>
			</a>
			<span id="system_title">账户管理系统</span>
		</li>
		<li class="pull-right">
			<ul class="hi-menu">
				<!-- 搜索 -->
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-search"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">
						<form id="search-form" class="form-inline">
							<div class="input-group">
								<input id="keywords" type="text" name="keywords" class="form-control" placeholder="搜索"/>
								<div class="input-group-btn">
									<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
								</div>
							</div>
						</form>
					</ul>
				</li>
<!-- 				 <li class="dropdown"> -->
<!-- 					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;"> -->
<!-- 						<i class="him-icon zmdi zmdi-dropbox"></i> -->
<!-- 					</a> -->
<!-- 					<ul class="dropdown-menu dm-icon pull-right"> -->
<!-- 						<li class="skin-switch hidden-xs"> -->
<!-- 							请选择系统切换 -->
<!-- 						</li> -->
<!-- 						<li class="divider hidden-xs"></li> -->
<!-- 						<li class="hidden-xs"> -->
<!-- 							<a class="waves-effect switch-systems" systemid="1" systemname="zheng-upms" systemtitle="账户管理系统" href="javascript:;"><i class="zmdi zmdi-shield-security"></i> 账户管理系统</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a class="waves-effect switch-systems" systemid="2" systemname="zheng-cms" systemtitle="内容管理系统" href="javascript:;"><i class="zmdi zmdi-wikipedia"></i> 内容管理系统</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a class="waves-effect switch-systems" systemid="3" systemname="zheng-pay" systemtitle="支付管理系统" href="javascript:;"><i class="zmdi zmdi-paypal-alt"></i> 支付管理系统</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a class="waves-effect switch-systems" systemid="4" systemname="zheng-ucenter" systemtitle="用户管理系统" href="javascript:;"><i class="zmdi zmdi-account"></i> 用户管理系统</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a class="waves-effect switch-systems" systemid="5" systemname="zheng-oss" systemtitle="存储管理系统" href="javascript:;"><i class="zmdi zmdi-cloud"></i> 存储管理系统</a> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 				</li>  -->
				<li class="dropdown">
					<a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
						<i class="him-icon zmdi zmdi-more-vert"></i>
					</a>
					<ul class="dropdown-menu dm-icon pull-right">
						<li class="hidden-xs">
							<a class="waves-effect" data-ma-action="fullscreen" href="javascript:fullPage();"><i class="zmdi zmdi-fullscreen"></i> 全屏模式</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-settings"></i> 系统设置</a>
						</li>
						<li>
							<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-run"></i> 退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
</header>
<section id="main">
	<!-- 左侧导航区 -->
	<aside id="sidebar">
		<!-- 个人资料区 -->
		<div class="s-profile">
			<a class="waves-effect waves-light" href="javascript:;">
				<div class="sp-pic">
					<img src="images/avatar.jpg"/>
				</div>
				<div class="sp-info">
					管理员，您好！
				</div>
			</a>
		</div>
		<!-- /个人资料区 -->
		<!-- 菜单区 -->
		<ul class="main-menu">
			<li>
			<a class="waves-effect" href="javascript:Tab.addTab('首页', 'home');"><i class="zmdi zmdi-home"></i> 首页</a>
			</li>
			<li class="sub-menu system_menus system_1 0">
			<a class="waves-effect" href="javascript:;"><i class="zmdi zmdi-accounts-list"></i> 系统账户管理</a>
			<ul>
				<li><a class="waves-effect" href="javascript:Tab.addTab('系统管理', 'crud.html');">账户管理</a></li>
				<li><a class="waves-effect" href="javascript:Tab.addTab('组织管理', 'crud');">用户管理</a></li>
			</ul>
			</li>
		</ul>
		<!-- /菜单区 -->
	</aside>
	<!-- /左侧导航区 -->
	<section id="content">
		<div class="content_tab">
			<div class="tab_left">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-left"></i></a>
			</div>
			<div class="tab_right">
				<a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-right"></i></a>
			</div>
			<ul id="tabs" class="tabs">
				<li id="tab_home" data-index="home" data-closeable="false" class="cur">
					<a class="waves-effect waves-light" href="javascript:;">首页</a>
				</li>
			</ul>
		</div>
		<div class="content_main">
			<div id="iframe_home" class="iframe cur">
				<p><h4>账户管理系统 </h4></p>
				<p><b>演示地址</b>：<a href="http://supermartin.cn:8081/" target="_blank">http://supermartin.cn:8081/</a></p>
				<p><b>代码托管</b>：<a href="https://git.oschina.net/SuperMartin/Account-Management" target="_blank">https://git.oschina.net/SuperMartin/Account-Management</a></p>
				<p><b>系统简介</b>：本系统是为北京禾唐科技公司面试之作，是一个简易的用户管理系统，可以支持用户的增删改查等操作。</p>
				<br/>
				<p><h4>技术栈介绍：</h4></p>
				<p><b>项目管理</b>：Maven </p>
				<p><b>代码管理</b>：Git 码云 </p>
				<br />
				<p><b>前端</b>：jquery+bootstrap</p>
				<p><b>下拉框</b>：select2</p>
				<p><b>时间段选择</b>：daterangepicker</p>
				<p><b>账号列表</b>：datatables</p>
				<p><b>用户状态</b>：radiogroup</p>
				<br />
				<p><b>后端</b>：Springboot；mysql；freemarker</p>
				<p><b>持久层</b>：Spring-Data-JPA</p>
				<br />
				<p><b>UI参考</b>：<a href="https://github.com/shuzheng/zheng" target="_blank">https://github.com/shuzheng/zheng</a></p>
				<br/>
				<p><h4>关于作者</h4></p>
				<p><b>姓　　名</b>：马小丁</p>
				<p><b>电子邮箱</b>：maxiaoding@live.cn</p>
			</div>
		</div>
	</section>
</section>
<footer id="footer"></footer>

<script src="plugins/jquery-3.1.1.min.js"></script>
<script src="plugins/bootstrap-3.3.0/js/bootstrap.min.js"></script>
<script src="plugins/waves-0.7.5/waves.min.js"></script>
<script src="plugins/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="plugins/BootstrapMenu.min.js"></script>
<script src="plugins/device.min.js"></script>
<script src="plugins/fullPage/jquery.fullPage.min.js"></script>
<script src="plugins/fullPage/jquery.jdirk.min.js"></script>
<script src="plugins/jquery.cookie.js"></script>

<script src="js/admin.js"></script>
</body>
</html>