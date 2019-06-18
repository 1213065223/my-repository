<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>修改信息</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/MemberCenter.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/PC-home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
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
					style="justify-content: flex-start;">
					<div class="flex-between user-1">
						<p>会員情報</p>
						<p class="typeface p-hover" onclick="href_url('MemberCenter')">返回</p>
					</div>
					<div class="flex-between user-2">
						<img src="img/head-user.png" class="headPortrait"
							id="headPortrait" />
						<div class="column-div uploading-hei">
							<label for="filehei">
								<p class="ivu-btn" style="background: #2974B6FF; color: white;">プロフィール画像</p>
								<input type="file" id="filehei" style="display: none;"
								onchange="UploadImage(this.files[0])" />
							</label>
							<p>プロフィール画像の推奨サイズは100x100ピクセル、最大ファイルサイズは300kb、
								サポートしているファイル形式はJPG、PNGです。</p>
						</div>
					</div>
					<div class="column-div user-update">
						<div class="row-div">
							<p style="width:170px; text-align: right;">メールアドレス：</p>
							<p style="width: 100%;">{{loginName}}</p>
						</div>
						<div class="row-div form-model-div">
							<p style="width:170px; text-align: right;">電話番号：</p>
							<div class="form-input-parent">
								<input type="text" class="gd-input" v-model="phone" id="phone" />
							</div>
						</div>
						<div class="form-model-div flex-start">
							<p style="width:170px; text-align: right;">お名前：</p>
							<div class="form-input-parent"
								style="width: 50%; margin-right: 10px;">
								<input type="text" class="gd-input" v-model="surname"
									id="surname" />
							</div>
							<div class="form-input-parent" style="width: 50%">
								<input type="text" class="gd-input" v-model="nickname"
									id="nickname" />
							</div>

						</div>
						<div class="row-div ">
							<p style="width:170px; text-align: right;">性別：</p>
							<div class="flex-around " style="width: 100%;">
								<label for="radio-1" class="row-div"> <input
									type="radio" name="radio-name" id="radio-1" value="1"
									checked="checked" />
									<p class="sex">男</p>
								</label> <label for="radio-2" class="row-div"> <input
									type="radio" name="radio-name" id="radio-2" value="0" />
									<p class="sex">女</p>
								</label>
							</div>
						</div>
						<div class="row-div form-model-div">
							<p style="width:170px; text-align: right;">生年月日：</p>
							<div class="form-input-parent jeinpbox">
								<input type="text" readonly class="jeinput gd-input"
									id="birthday" autocomplete="off" v-model="birthday">
							</div>
						</div>
						<div class="row-div">
							<p></p>
							<div class="column-start" style="width: 50%;">
								<button type="button" class="ivu-btn ivu-btn-1"
									onclick="but_click()">登録</button>
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
	jeDate("#birthday", {
		format : "YYYY年MM月DD号",
		donefun : function(obj) {
			// RegExpEntity.timeQuantum.Event.onceEvent();
			vm.birthday = obj.val;
		}
	});
	$("#menuBar > dl > dd:nth-child(1)").css('background', '#2974B6').css(
			'color', 'white');
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
			nickname : "", // 名
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
	let RegExpEntity = {
		birthday : {
			RegExptype : 'string',
			message : '请选择生日',
			trigger : 'blur',
			id : 'birthday'
		},
		surname : {
			RegExptype : 'string',
			message : '请输姓',
			trigger : 'blur',
			id : 'surname'
		},
		nickname : {
			RegExptype : 'string',
			message : '请输名',
			trigger : 'blur',
			id : 'nickname'
		},
		phone : {
			RegExptype : 'phone',
			message : '请输入电话号码',
			trigger : 'blur',
			id : 'phone'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function but_click() {
		// UpdateRequest()
		let boo = true;
		let entity = {
			birthday : vm.birthday,
			nickname : vm.nickname,
			surname : vm.surname,
			phone : vm.phone
		}
		for ( let i in entity) {
			if (!entity[i]) {
				boo = false;
				RegExpEntity[i].Event.label_error(document.getElementById(i));
			}
		}
		RegExpEntity.phone.Event.RegExp(vm.phone, document
				.getElementById('phone'))
		if (!RegExpEntity.phone.Event.result) {
			boo = false;
		}
		if (boo) {
			UpdateRequest();
		}
	}
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
					$("input[name=radio-name]").removeAttr("checked");
					if (data.result.sex === 1) {
						$('#radio-1').attr("checked", "checked")
					} else {
						$('#radio-2').attr("checked", "checked")
					}
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

	function UpdateRequest() {
		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/user/update",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"surname" : vm.surname,
				"nickname" : vm.nickname,
				"phone" : vm.phone,
				"birthday" : vm.birthday,
				"sex" : $("input[name=radio-name]:checked").val(),
				"headImage" : vm.headImage
			}),
			success : function(data) {
				if (data.code === 200) {
					spop({
						template : '修改成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					request();
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
	function UploadImage(file) {
		let entity = null;
		let formdata = new FormData();
		formdata.append("file", file)
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/file/upload",
			data : formdata,
			contentType : false,
			processData : false,
			async : false,
			success : function(data) {
				if (data.code === 200) {
					vm.headImage = data.result
					$("#headPortrait").attr('src', data.result)
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
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
		return entity;
	}
</script>
</html>
