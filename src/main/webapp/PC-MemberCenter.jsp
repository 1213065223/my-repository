<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>会员中心</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/MemberCenter.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/PC-home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
</head>
<body id="mvvm">
	<div>
		<div class="login-div-1 column-div">
			<div class="login-div-1-2">
				<p class="div-hover" onclick="href_url('home')">全国ビリヤード協会</p>
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
		<div class="login-div-1-3 column-div" style="margin-bottom: 20px;">
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


		<div class="content-div column-div">
			<div class="content-div-title row justify-start align-center">
				<div></div>
				<p>
					会員センター><span>得点ランキング</span>
				</p>
			</div>

			<div class="content-div-1 flex-between"
				style="align-items: flex-start;">
				<div class="menuBar" id="menuBar">
					<dl class="column-div">
						<dd src='MemberCenter'>
							<span>会員情報</span>
						</dd>
						<dd src='MyCompetition'>
							<span>私の試合</span>
						</dd>
						<dd src='MyIntegral'>
							<span>私のポイント</span>
						</dd>
					</dl>
				</div>
				<div class="menuBar-content column-div"
					style="justify-content: flex-start; height: 412px;">
					<div class="flex-between user-1">
						<p>会員情報</p>
						<p class="typeface p-hover"
							onclick="href_url('MemberCenter-Update')">登録情報を変更する</p>
					</div>
					<div class="flex-between user-2">
						<img src="img/head-user.png" id="headPortrait"
							class="headPortrait" />
						<div class="column-start">
							<div class="row-div">
								<p>
									お名前<span>{{name}}</span>
								</p>
								<img src="img/man.png" id="sex">
							</div>
							<div class="row-div">
								<p>
									電話番号：<span>{{phone}}</span>
								</p>
							</div>
							<div class="row-div">
								<p>
									メールアドレス：<span>{{loginName}}</span>
								</p>
							</div>
							<div class="row-div">
								<p>
									生年月日：<span>{{birthday}}</span>
								</p>
							</div>
							<div
								style="width: 100%; height: 3px; background: rgba(226, 226, 226, 1); margin-bottom: 15px;"></div>
							<div class="row-div">
								<p>
									私のポイント：<span style="color: red;">{{integral}}</span>
								</p>
								<p class="typeface p-hover" onclick="href_url('MyIntegral')">詳細を見る</p>
							</div>
						</div>
					</div>
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
			login_name : '请登录',
			name : "", // 姓名
			birthday : "", // 生日
			headImage : "", // 头像
			id : "", // id
			loginName : "", // 邮箱
			surname : "", //姓氏
			nickname : "天师", // 名
			phone : "", // 手机号
			integral : 0,//积分
			sex : 1
		// 性别

		}
	});
	if ("${user}") {
		vm.login_name = "${user.loginName}"
	} else {
		vm.login_name = "请登录"
	}
	function href_url_login() {
		if (vm.login_name === '请登录') {
			window.location.href = "PC-login.jsp";
		}
	}
	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	$("#menuBar > dl > dd:nth-child(1)").css('background', '#2974B6').css(
			'color', 'white');
	request()

	function request() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/user/info",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					vm.name = data.result.surname + data.result.nickname;
					vm.birthday = data.result.birthday;
					vm.headImage = data.result.headImage;
					vm.id = data.result.id;
					vm.loginName = data.result.loginName;
					vm.surname = data.result.surname;
					vm.nickname = data.result.nickname;
					vm.phone = data.result.phone;
					vm.integral = data.result.integral;
					vm.sex = data.result.sex;
					if (data.result.headImage) {
						$("#headPortrait").attr('src', data.result.headImage)
					}
					data.result.sex === 1 ? $("#sex")
							.attr('src', 'img/man.png') : $("#sex").attr('src',
							'img/she.png');
				} else if (data.code === 0) {
					window.location.href = "PC-login.jsp";
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
					template : '查询接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	}
</script>
</html>
