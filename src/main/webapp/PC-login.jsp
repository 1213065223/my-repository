<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/PC-home.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div id="mvvm">
		<div class="login-div-1 column-div">
			<div class="login-div-1-2">
				<p class="div-hover">全国ビリヤード協会</p>
				<div class="row-div">
					<div class="login-div-1-div-even">
						<p class="div-hover" onclick="href_url('TheGame')">試合申し込み</p>
						<div class="CuttingLine-white"></div>
						<div class="row-div div-hover">
							<img src="img/home/home-vip.png" />
							<p onclick="href_url_login()">{{login_name}}</p>
						</div>
					</div>
					<img src="img/home/home-2.png" />
				</div>
			</div>
		</div>
		<div class="login-div-1-3 column-div">
			<div class="row row-around align-center">
				<p class="p-hover" onclick="href_url('home')">ホーム</p>
				<div class="CuttingLine-black"></div>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						協会について<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="column-div" onclick="href_url('AssociationProfile')">協会概要</li>
						<li class="column-div" onclick="href_url('AssociationNotice')">公告</li>
					</ul>
				</div>
				<div class="CuttingLine-black"></div>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						試合<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="column-div" onclick="href_url('TheGame')">試合予定</li>
						<li class="column-div" onclick="href_url('ScheduleIntroduce')">試合日程</li>
						<li class="column-div" onclick="href_url('ScheduleReview')">試合回顧</li>
						<li class="column-div" onclick="href_url('CompetitionNews')">ニュース</li>
					</ul>
				</div>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('ranking')">ランキング</p>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('introduce')">チャイニーズ8ボール</p>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('MemberCenter')">会員センター</p>
			</div>
		</div>





		<div class="login-div-2 column-div" style="height: 532px">
			<div class="login-div-2-1" class="column-div">
				<h3 style="text-align: center; margin-bottom: 20px;">ログイン</h3>
				<div class="column-div login-div-2--div-1">
					<p style="width: 100%; text-align: left;">メ－ルアドレス入力：</p>
					<input type="email" placeholder="メールアドレスが会員IDとなります" id="email" />
				</div>
				<div class="column-div login-div-2--div-1">
					<p style="width: 100%; text-align: left;">パスワ－ド：</p>
					<input type="password" placeholder="6文字～32文字の半角英数字" id="password" />
				</div>
				<div class="column-div login-div-2--div-1">
					<button type="button" class="ivu-btn" onclick="login()">ログイン</button>
				</div>
				<div class="flex-between login-div-2--div-1">
					<p class="p-hover" onclick="href_url('ForgetPassword')">パスワ－ドをお忘れの方</p>
					<p>
						<a href="PC-sign_in.jsp">新規会員登録はこちら ></a>
					</p>

				</div>
			</div>
		</div>


		<div class="home-bottom-div column-div">
			<div class="flex-around">
				<img src="img/home/home-2-2.png" style="width: 150px;" />
				<div class="flex-around home-bottom-div-3" style="flex-wrap: wrap;">
					<ul class="column justify-start align-start">
						<li>一般社団法人</li>
						<li class="p-hover">全国ビリヤード協会</li>
						<li>JAPAN BILLIARD</li>
						<li>ASSOCIATION</li>
						<li class="row-div"><img src="img/home/home-number.png" />0411-xxxx-xxxx</li>
					</ul>
					<ul class="column justify-start align-start">
						<li class="p-hover" onclick="href_url('home')">ホーム</li>
					</ul>
					<ul class="column justify-start align-start">
						<li class="p-hover">協会について</li>
						<li class="p-hover" onclick="href_url('AssociationProfile')">協会概要</li>
						<li class="p-hover" onclick="href_url('AssociationNotice')">公告</li>

					</ul>
					<ul class="column justify-start align-start">
						<li class="p-hover">試合</li>
						<li class="p-hover" onclick="href_url('TheGame')">試合予定</li>
						<li class="p-hover" onclick="href_url('ScheduleIntroduce')">試合日程</li>
						<li class="p-hover" onclick="href_url('ScheduleReview')">試合回顧</li>
						<li class="p-hover" onclick="href_url('CompetitionNews')">ニュース</li>
					</ul>
					<ul class="column justify-start align-start">
						<li class="p-hover">ランキング</li>
						<li class="p-hover" onclick="href_url('ranking')">得点ランキング</li>
						<!-- <li class="p-hover" onclick="href_url('ranking')">ポイントランキング</li> -->
					</ul>
					<ul class="column justify-start align-start">
						<li class="p-hover" onclick="href_url('MemberCenter')">会員センター</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="home-bottom-div-2 column-div">Copyright © 2015-2018
			WanPlus. All rights reserved. | 全国ビリヤード協会</div>
	</div>
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			login_name : '请登陆',
		}
	});
	function href_url_login() {
		if (vm.login_name === '请登陆') {
			window.location.href = "PC-login.jsp";
		}
	}
	if ("${user}") {
		vm.login_name = "${user.loginName}"
	} else {
		vm.login_name = "请登陆"
	}
	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	function login() {
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
			url : "${pageContext.request.contextPath}/login",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"loginName" : $('#email').val(),
				"password" : $('#password').val()
			}),
			success : function(data) {
				if (data.code === 200) {
					//console.log("${admin_user}");
					//console.log("${user}");
					window.location.href = "PC-home.jsp";
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
