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
</head>
<body>
	<div id="mvvm">
		<div class="login-div-1 column-div">
			<div class="login-div-1-2 flex-between flex-wrap">
				<p class="div-hover">台球协会官方网站</p>
				<div class="row-div flex-wrap">
					<div class="row-div">
						<p class="div-hover">赛事报名</p>
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
				<p class="p-hover" onclick="href_url('home')">首页</p>
				<div class="CuttingLine-black"></div>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						协会介绍 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="column-div" onclick="href_url('AssociationProfile')">协会介绍</li>
						<li class="column-div" onclick="href_url('AssociationNotice')">协会公告</li>
					</ul>
				</div>
				<div class="CuttingLine-black"></div>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						赛事中心 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="column-div" onclick="href_url('TheGame')">本场比赛</li>
						<li class="column-div" onclick="href_url('ScheduleIntroduce')">赛程介绍</li>
						<li class="column-div" onclick="href_url('ScheduleReview')">比赛回顾</li>
						<li class="column-div" onclick="href_url('CompetitionNews')">赛事新闻</li>
					</ul>
				</div>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('ranking')">赛手排名</p>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('introduce')">中8介绍</p>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('MemberCenter')">会员中心</p>
			</div>
		</div>
		<div class="login-div-2 column-div" style="height: 531px">
			<div class="login-div-2-1" class="column-div">
				<h3 style="text-align: center; margin-bottom: 10px;margin-top: 20px;">注册账户</h3>
				<div class="column-div login-div-2--div-1">
					<input type="email" placeholder="输入邮箱" id="loginName"
						autocomplete="off" spellcheck="false" v-model="loginName" />

				</div>

				<div class="flex-between surnameAndnickname">
					<div style="width: 45%">
						<input type="text" placeholder="姓" autocomplete="off"
							spellcheck="false" v-model="surname" id="surname" />

					</div>
					<div style="width: 45%">
						<input type="text" placeholder="名" autocomplete="off"
							spellcheck="false" v-model="nickname" id="nickname" />
					</div>
				</div>
				<div class="flex-between login-div-2--div-1">
					<p>性别</p>
					<div class="flex-around" style="width: 80%">
						<label for="radio-1" class="row-div"> <input type="radio"
							name="radio-name" id="radio-1" value="1" checked="checked" />
							<p style="margin-left: 10px">男</p>
						</label> <label for="radio-2" class="row-div"> <input type="radio"
							name="radio-name" id="radio-2" value="0" />
							<p style="margin-left: 10px">女</p>
						</label>
					</div>
				</div>
				<div class="column-div jeinpbox login-div-2--div-1">
					<input type="text" placeholder="生日" id="birthday"
						autocomplete="off" spellcheck="false" v-model="birthday"
						class="jeinput" />
				</div>
				<div class="column-div login-div-2--div-1 ">
					<input type="text" placeholder="电话" autocomplete="off"
						spellcheck="false" v-model="phone" id="phone" />
				</div>
				<div class="column-div login-div-2--div-1">
					<button type="button" class="ivu-btn" onclick="Modal_ok()">邮箱验证</button>
				</div>
				<div class="flex-between login-div-2--div-1">
					<p>
						已有账号？立即<a href="PC-login.jsp">登录</a>
					</p>
					<p></p>
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
			<div class="flex-around" style="flex-wrap: wrap;">
				<img src="img/home/home-2-2.png" style="width: 150px;" />
				<div class="flex-around home-bottom-div-3" style="flex-wrap: wrap;">
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
		</div>

		<div class="home-bottom-div-2 column-div">Copyright © 2015-2018
			WanPlus. All rights reserved. | 台球协会</div>
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
			RegExpEntity.birthday.Event.onceEvent();
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
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function Modal_ok() {
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
				let str = document.getElementById(i);
				let spam = str.parentNode.getElementsByTagName("span");
				RegExpEntity[i].Event.label_error(str)
				boo = false;
			}
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
					//console.log("${admin_user}");
					//console.log("${user}");
					// window.location.href = "PC-home.jsp";
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
