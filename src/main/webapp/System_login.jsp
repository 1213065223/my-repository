<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="css/System_public.css" />
		<link rel="stylesheet" type="text/css" href="css/login.css" />
		<link rel="stylesheet" type="text/css" href="css/spop.css" />
		<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
	</head>
	<body>
		<div>
			<div class="login-div-1 column-div">
				<div class="login-div-1-2 flex-between flex-wrap">
					<p class="div-hover">台球协会官方网站</p>
					<div class="row-div flex-wrap">
						<div class="row-div">
							<p class="div-hover">赛事报名</p>
							<div class="CuttingLine-white"></div>
							<div class="row-div div-hover">
								<img src="img/home/home-vip.png" />
								<p>请登录</p>
							</div>
						</div>
						<img src="img/home/home-2.png" />
					</div>
				</div>
			</div>
			<div class="login-div-1-3 column-div">
				<div class="row row-around align-center">
					<p>首页</p>
					<div class="CuttingLine-black"></div>
					<div class="btn-group">
						<button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true"
						 aria-expanded="false">
							协会介绍 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						</ul>
					</div>
					<div class="CuttingLine-black"></div>
					<div class="btn-group">
						<button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true"
						 aria-expanded="false">
							赛事中心 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						</ul>
					</div>
					<div class="CuttingLine-black"></div>
					<div class="btn-group">
						<button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true"
						 aria-expanded="false">
							赛手排名 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						</ul>
					</div>
					<div class="CuttingLine-black"></div>
					<p>中8介绍</p>
					<div class="CuttingLine-black"></div>
					<p>会员中心</p>
				</div>
			</div>
			<div class="login-div-2 column-div">
				<div class="login-div-2-1" class="column-div">
					<h3 style="text-align: center;margin-bottom: 10px;">账户登录</h3>
					<div class="column-div">
						<input type="email" placeholder="输入邮箱" id="email"/>
					</div>
					<div class="column-div">
						<input type="password" placeholder="输入密码" id="password"/>
					</div>
					<div class="column-div">
						<button type="button" class="ivu-btn" onclick="login()">登录</button>
					</div>
					<div class="flex-between">
						<p>没有账号？立即<a href="">注册</a></p>
						<p>忘记密码</p>
					</div>
				</div>
			</div>
			<div class="home-bottom-div flex-around">
				<img src="img/home/home-2-2.png" />
				<ul class="column justify-start align-start">
					<li>中国领先的赛事服务平台</li>
					<li>3740个赛事活动</li>
					<li>363693条赛事成绩</li>
					<li>3314个组织者</li>
					<li class="row-div"><img src="img/home/home-number.png" />0411-xxxx-xxxx</li>
				</ul>
				<ul class="column justify-start align-start">
					<li>首页</li>
				</ul>
				<ul class="column justify-start align-start">
					<li>协会介绍</li>
					<li>协会简介</li>
					<li>组织架构</li>
					<li>协会公告</li>
				</ul>
				<ul class="column justify-start align-start">
					<li>赛事中心</li>
					<li>本场比赛</li>
					<li>赛程介绍</li>
					<li>比赛回顾</li>
					<li>赛事新闻</li>
				</ul>
				<ul class="column justify-start align-start">
					<li>赛手排名</li>
					<li>战绩排名</li>
					<li>积分排名</li>
				</ul>
				<ul class="column justify-start align-start">
					<li>会员中心</li>
				</ul>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		$('.login-div-2').css('height', window.innerHeight- 355+'px');
		window.onresize = function() {
			let Height = window.innerHeight - 355
			$('.login-div-2').css('height', Height+'px');
		}
		function login () {
			if (!$('#password').val() || !$('#email').val()) {
				spop({
					template : '请输入账号和密码',
					group : 'submit-satus',
					style : 'warning',
					autoclose : 5000
				});
				return;
			}
			$.ajax({
				type : "post",
				async : false,
				url : "${pageContext.request.contextPath}/admin/login",
				contentType : "application/json; charset=utf-8",
				dataType : "json",
				data : JSON.stringify({
					"loginName" : $('#email').val(),
					"password" : $('#password').val()
				}),
				success : function(data) {
					if (data.code === 200) {
						console.log("${admin_user}");
						window.location.href = "http://localhost:9090/billiard/System_home.jsp";
					} else {
						spop({
							template : data.message,
							group : 'submit-satus',
							style : 'warning',
							autoclose : 5000
						});
					}
				},
				error : function(jqXHR) {
					console.log("Error: " + jqXHR.status);
					spop({
						template : '禁用或启用接口访问失败,请与系统管理员联系',
						group : 'submit-satus',
						style : 'error',
						autoclose : 5000
					});
				}
			});
		}
	</script>
</html>
