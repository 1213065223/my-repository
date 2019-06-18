<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>忘记密码</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
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
				<h3 style="text-align: center;margin-top: 20px;">パスワード忘れ（パスワード再設定）</h3>
				<p
					style="width: 100%; text-align: center; margin-bottom: 20px; color: #666666FF;">登録メールアドレスと氏名を入力してください</p>
				<div class="column-div login-div-2--div-1">
					<p style="width: 100%; text-align: left;">
						<span style="color: #FF5454FF">*</span>メールアドレスが会員IDとなります
					</p>
					<input type="text" placeholder="输入邮件地址" id="email" />
					<p style="width: 100%; text-align: left;">
						<span style="color: #FF5454FF"></span>ご登録の氏名
					</p>
				</div>
				<div class="flex-between login-div-2--div-1">
					<!-- <p style="width: 100%; text-align: left;"><span style="color:#FF5454FF">*</span>メールアドレスが会員IDとなります</p> -->

					<div style="width: 45%;">
						<p style="width: 100%; text-align: left;">
							<span style="color: #FF5454FF">*</span>カタカナ（セイ）
						</p>
						<input class="login-div-2-1-input" type="text" placeholder="例）ヤマダ"
							id="surname" />
					</div>
					<div style="width: 45%;">
						<p style="width: 100%; text-align: left;">
							<span style="color: #FF5454FF">*</span>カタカナ（メイ）
						</p>
						<input class="login-div-2-1-input" type="text" placeholder="例）タロウ"
							id="name" />
					</div>

				</div>
				<div class="column-div login-div-2--div-1">
					<button type="button" class="ivu-btn" onclick="login()">送信</button>
				</div>
				<div class="flex-between login-div-2--div-1">
					<p class="p-hover" onclick="href_url('sign_in')">新規会員登録はこちら ></p>

					<p class="p-hover" onclick="href_url('login')">ログイン</p>
				</div>
			</div>
		</div>

		<!-- 提示框 -->
		<div class="v-transfer-dom" id="transfer-dom" style="display: none;">
			<div class="ivu-modal-mask" style="z-index: 1003;"></div>
			<div class="ivu-modal-wrap" style="z-index: 1003;">
				<div class="ivu-modal" style="width: 416px;">
					<div class="ivu-modal-content">
						<div class="ivu-modal-body">
							<div class="ivu-modal-confirm">
								<div class="ivu-modal-confirm-head">
									<div
										class="ivu-modal-confirm-head-icon ivu-modal-confirm-head-icon-warning">
										<i class="ivu-icon ivu-icon-ios-alert"></i>
									</div>
									<div class="ivu-modal-confirm-head-title">警告</div>
								</div>
								<div class="ivu-modal-confirm-body">
									<div>
										<p>请前往邮箱进行验证,设置密码</p>
									</div>
								</div>
								<div class="ivu-modal-confirm-footer">
									<!-- <button type="button" class="ivu-btn ivu-btn-small"
										style="margin-right: 5px;" onclick="transfer_cancel()">取消</button> -->
									<button type="button"
										class="ivu-btn ivu-btn-primary ivu-btn-large"
										onclick="transfer_ok()">确定</button>
								</div>
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
	function transfer_ok() {
		$("#transfer-dom").hide();
		$("#email").val('');
		$('#surname').val('');
		$('#name').val('');
	}
	function login() {
		let boo = true;
		let emailRegExp = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		if (!emailRegExp.test($("#email").val())) {
			spop({
				template : '请输入正确的邮箱',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			boo = false;
		}
		if (!$('#surname').val() || !$('#name').val()) {
			spop({
				template : '请输入姓氏   名字',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			return;
		}
		if (!boo)
			return;
		$.ajax({
			type : "post",
			async : false,
			url : "${pageContext.request.contextPath}/user/forget/password",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"email" : $("#email").val(),
				"surname" : $('#surname').val(),
				"nickname" : $('#name').val()
			}),
			success : function(data) {
				if (data.code === 200) {
					$("#transfer-dom").show();
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
