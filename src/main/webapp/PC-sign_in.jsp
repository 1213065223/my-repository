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
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
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



		<div class="login-div-2 column-div" style="height: 700px">
			<div class="login-div-2-1" class="column-div" style="width: 600px">
				<h3
					style="text-align: center; margin-bottom: 20px; margin-top: 20px;">新規会員登録</h3>
				<!-- <div class="column-div login-div-2--div-1">
					<div class="flex-start">
						<p style="width: 150px">メールアドレス：</p>
						<input type="email" placeholder="输入邮箱"
							class="ivu-input ivu-input-default" id="loginName"
							autocomplete="off" spellcheck="false" v-model="loginName" />
					</div>
					<P>メールアドレスが会員IDとなります</P>
				</div> -->
				<div class="form-model-div flex-start" style="">
					<p class="flex-end form-p" style="width: 130px">
						<!-- <span class="form-span">*</span>  -->
						<span>メールアドレス：</span>
					</p>
					<div class="form-input-parent" style="width: 60%">
						<input type="text" placeholder="メールアドレスを入力してください"
							class="ivu-input ivu-input-default" id="loginName"
							autocomplete="off" spellcheck="false" v-model="loginName" /> <span
							class="form-message"><span>*</span><span
							style="color: #333333FF;">メールアドレスが会員IDとなります</span></span>
					</div>
				</div>
				<div class="form-model-div flex-start" style="margin-bottom: 15px;">
					<p class="flex-end form-p" style="width: 130px">
						<!-- <span class="form-span">*</span>  -->
						<span>会員の氏名：</span>
					</p>
					<div class="flex-between" style="width: 60%">
						<div class="form-input-parent" style="width: 45%">
							<input type="text" placeholder="例）ヤマダ" maxlength="5"
								class="ivu-input ivu-input-default" id="surname"
								autocomplete="off" spellcheck="false" v-model="surname" /> <span
								class="form-message"><span>*</span><span
								style="color: #333333FF;">カタカナ（セイ）</span></span>
						</div>
						<div class="form-input-parent" style="width: 45%">
							<input type="text" placeholder="例）ヤマダ" maxlength="5"
								class="ivu-input ivu-input-default" id="nickname"
								autocomplete="off" spellcheck="false" v-model="nickname" /> <span
								class="form-message"><span>*</span><span
								style="color: #333333FF;">カタカナ（メイ）</span></span>
						</div>
					</div>
				</div>
				<!-- <div class="flex-between surnameAndnickname">
					<div style="width: 45%">
						<input type="text" placeholder="姓" autocomplete="off"
							spellcheck="false" v-model="surname" id="surname" />

					</div>
					<div style="width: 45%">
						<input type="text" placeholder="名" autocomplete="off"
							spellcheck="false" v-model="nickname" id="nickname" />
					</div>
				</div> -->
				<div class="form-model-div flex-start">
					<p class="flex-end form-p" style="width: 130px">
						<!-- <span class="form-span">*</span>  -->
						<span>性别：</span>
					</p>
					<div class="form-input-parent flex-around" style="width: 60%">
						<label for="radio-1" class="row-div"> <input type="radio"
							name="radio-name" id="radio-1" value="1" checked="checked" />
							<p style="margin-left: 10px">男</p>
						</label> <label for="radio-2" class="row-div"> <input type="radio"
							name="radio-name" id="radio-2" value="0" />
							<p style="margin-left: 10px">女</p>
						</label>
					</div>
				</div>
				<div class="form-model-div flex-start">
					<p class="flex-end form-p" style="width: 130px">
						<!-- <span class="form-span">*</span>  -->
						<span>生年月日：</span>
					</p>
					<div class="form-input-parent" style="width: 60%">
						<input type="text" readonly class="ivu-input ivu-input-default"
							id="birthday" autocomplete="off" spellcheck="false"
							v-model="birthday" />
					</div>
				</div>
				<div class="form-model-div flex-start" style="margin-bottom: 30px;">
					<p class="flex-end form-p" style="width: 130px">
						<!-- <span class="form-span">*</span>  -->
						<span>電話番号：</span>
					</p>
					<div class="form-input-parent" style="width: 60%">
						<input type="text" class="ivu-input ivu-input-default" id="phone"
							autocomplete="off" spellcheck="false" v-model="phone" /> <span
							class="form-message"><span>*</span><span
							style="color: #333333FF;">携帯電話・ご職場など、緊急時に連絡が取れる電話番号をご入力ください</span></span>
					</div>
				</div>

				<!-- <div class="form-model-div flex-start">
					<p class="flex-end form-p" style="width: 130px">
						<span class="form-span">*</span> <span>電話番号：</span>
					</p>
					<div class="form-input-parent ivu-btn-res" style="width: 60%">
						<p>次に進むことで、株式会社IN会員規約およびプライバシー ポリシーを読み、その内容に同意したものとみなされます。</p>
					</div>
				</div> -->
				<label id="p-form-input-parent">
					<div class="form-model-div flex-start"
						style="height: auto; margin-top: 20px; align-items: flex-start;">
						<p class="flex-end form-p" style="width: 130px">
							<input type="checkbox" name="vehicle" value="Car" id="checkbox" />
						</p>
						<div class="form-input-parent" style="width: 60%">
							<p id="p-form-input-parent">次に進むことで、株式会社IN会員規約およびプライバシー
								ポリシーを読み、その内容に同意したものとみなされます。</p>
						</div>
					</div>
				</label>
				<div class="form-model-div flex-start" style="min-height: auto;">
					<p class="flex-end form-p" style="width: 130px"></p>
					<div class="form-input-parent row-div" style="width: 60%">
						<p>株式会社IN会員規約およびプライバシーポリシー</p>
					</div>
				</div>
				<div class="flex-start login-div-2--div-1 form-model-div"
					style="width: 100%">
					<p class="flex-end form-p" style="width: 130px"></p>
					<button type="button" class="ivu-btn" onclick="Modal_ok()"
						style="width: 56%">送信</button>
				</div>
				<div class="form-model-div flex-start">
					<p class="flex-end form-p" style="width: 130px"></p>
					<div class="form-input-parent flex-between" style="width: 60%">
						<p>
							会員の方は<a href="PC-login.jsp">こちら</a>からログインして下さい。
						</p>
						<p class="p-hover" onclick="href_url('login')">ログイン</p>
					</div>
				</div>
				<!-- <div class="flex-between login-div-2--div-1">

					<p>
						已有账号？立即<a href="PC-login.jsp">登录</a>
					</p>
					<p></p>
				</div> -->
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
										<p>注册成功,请前往邮箱进行验证,设置密码</p>
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
			loginName : "",
			surname : "",
			nickname : "",
			phone : "",
			sex : null,
			birthday : ""

		}
	});
	jeDate("#birthday", {
		format : "YYYY-MM-DD",
		donefun : function(obj) {
			RegExpEntity_reg.birthday.Event.onceEvent();
			vm.birthday = obj.val;
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
	let RegExpEntity = {
		phone : {
			RegExptype : 'phone',
			message : '请输入手机号',
			trigger : 'blur',
			id : 'phone'
		},
		loginName : {
			RegExptype : 'email',
			message : '请输入邮箱',
			trigger : 'blur',
			id : 'loginName'
		},
		surname : {
			RegExptype : 'string',
			message : '请输入姓氏',
			trigger : 'blur',
			id : 'surname'
		},
		nickname : {
			RegExptype : 'string',
			message : '请输名字',
			trigger : 'blur',
			id : 'nickname'
		},
		birthday : {
			RegExptype : 'string',
			message : '请输选择生日',
			trigger : 'blur',
			id : 'birthday'
		}
	}
	let RegExpEntity_reg = {
		birthday : {
			RegExptype : 'string',
			message : '请输选择生日',
			trigger : 'blur',
			id : 'birthday'
		}
	}
	for ( let i in RegExpEntity_reg) {
		RegExpEntity_reg[i].Event = new formRegExp(RegExpEntity[i],
				'form-model');
	}
	function Modal_ok() {
		// $("#checkbox").attr("checked")
		console.log($("#checkbox").prop("checked"))
		vm.sex = $('input[name="radio-name"]:checked').val()
		let event = {
			"loginName" : vm.loginName,
			"surname" : vm.surname,
			"nickname" : vm.nickname,
			"phone" : vm.phone,
			"sex" : vm.sex,
			"birthday" : vm.birthday,
		}
		let boo = true;
		for ( let i in event) {
			if (!event[i]) {
				spop({
					template : RegExpEntity[i].message,
					group : 'submit-satus',
					style : 'warning',
					autoclose : 5000
				});
				boo = false;
			}
		}
		let reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
		let emailRegExp = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		if (!reg.test(vm.phone)) {
			spop({
				template : '请输入正确的手机号码!',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			boo = false;
		}
		if (!emailRegExp.test(vm.loginName)) {
			spop({
				template : '请输入正确的邮箱!',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			boo = false;
		}

		if (!$("#checkbox").prop("checked")) {
			spop({
				template : '次に進むことで、株式会社IN会員規約およびプライバシー ポリシーを読み、その内容に同意したものとみなされます。',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			boo = false;
		}
		if (boo) {
			login(event)
		}
	};
	function transfer_ok() {
		$("#transfer-dom").hide();
		vm.loginName = '';
		vm.surname = '';
		vm.nickname = '';
		vm.phone = '';
		vm.birthday = '';
	}
	function login(event) {
		$.ajax({
			type : "post",
			async : false,
			url : "${pageContext.request.contextPath}/regist",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(event),
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
