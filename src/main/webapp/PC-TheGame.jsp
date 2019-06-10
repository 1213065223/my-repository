<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>本场比赛</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/TheGame.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
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
		<div class="login-div-1-3 column-div" style="margin-bottom: 20px;">
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


		<div class="content-div column-div">
			<div class="content-div-title row justify-start align-center">
				<div></div>
				<p>
					赛事中心><span>本场比赛</span>
				</p>
			</div>

			<div class="content-div-1 column-div">
				<div class="content-div-2 column-div">
					<p id="matchName">比赛通告比赛赛事名字填写位置</p>
					<p id="createTime">发布时间：2019-05-20</p>
					<button type="button" class="ivu-btn" onclick="add_click()"
						id="apply-key">立即报名</button>
				</div>
				<div
					style="width: 100%; height: 3px; background: rgba(226, 226, 226, 1); margin-bottom: 15px;"></div>

				<div id="details" style="margin-bottom: 10px; width: 100%;">
					<img src="img/TheGame.png" width="100%"
						style="margin-bottom: 10px;" />
				</div>
				<div class="content-div-3 column-start">
					<p>比赛通告</p>
					<p>
						组织机构：<span id="organization"></span>
					</p>
					<p>
						比赛项目内容：<span id="matchContent"></span>
					</p>
					<p>
						时间地点：<span id="matchPlace"></span>
					</p>
					<p>规则</p>
					<p>
						日程安排：<span id="schedule"></span>
					</p>
					<p>
						开放报名时间：<span id="enrollTime"></span>
					</p>
					<p>
						报名截止时间：<span id="enrollTimeEnd"></span>
					</p>
				</div>
			</div>
		</div>

		<div class="v-transfer-dom" id="Modal-Add" style="display: none;">
			<div class="ivu-modal-mask" style="z-index: 1002;"></div>
			<div class="ivu-modal-wrap" style="z-index: 1002;">
				<div class="ivu-modal" style="width: 520px;">
					<div class="ivu-modal-content">
						<a class="ivu-modal-close" onclick="Modal_cancel()"><i
							class="ivu-icon ivu-icon-ios-close"></i></a>
						<div class="ivu-modal-header">
							<div class="ivu-modal-header-inner">比赛报名</div>
						</div>
						<div class="ivu-modal-body">
							<div style="width: 100%;" class="column-center">
								<form class="form-model column-start" label-width="110"
									id="form-model">
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>赛事名称</span>
										</p>
										<div class="jeinpbox form-input-parent">
											<p>{{matchName}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>用户姓</span>
										</p>
										<div class="form-input-parent" style="width: 30%">
											<input type="text" class="ivu-input ivu-input-default"
												id="loginName" autocomplete="off" spellcheck="false"
												v-model="" />
										</div>
										<div style="width: 70%" class="row-div">
											<p class="flex-end form-p">
												<span class="form-span">*</span> <span>名</span>
											</p>
											<div class="form-input-parent" style="width: 50%">
												<input type="text" class="ivu-input ivu-input-default"
													id="loginName" autocomplete="off" spellcheck="false"
													v-model="" />
											</div>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>性别</span>
										</p>
										<div class="form-input-parent flex-around">
											<label for="radio-1" class="row-div"> <input
												type="radio" name="radio-name" id="radio-1" value="1"
												checked="checked" />
												<p>男</p>
											</label> <label for="radio-2" class="row-div"> <input
												type="radio" name="radio-name" id="radio-2" value="0" />
												<p>女</p>
											</label>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>生日</span>
										</p>
										<div class="jeinpbox form-input-parent">
											<input type="text"
												class="jeinput ivu-input ivu-input-default" id="birthday"
												autocomplete="off" readonly="readonly">
										</div>
									</div>

									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>联系电话</span>
										</p>
										<div class="form-input-parent">
											<input type="text" class="ivu-input ivu-input-default"
												id="phone" autocomplete="off" spellcheck="false" v-model="" />
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>邮箱</span>
										</p>
										<div class="form-input-parent">
											<input type="email" class="ivu-input ivu-input-default"
												id="nickname" autocomplete="off" spellcheck="false"
												v-model="" />
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="align-items: flex-start; margin-top: 10px;margin-bottom:10px;">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>上传头像</span>
										</p>
										<div class="form-input-parent">
											<label for="headImage" class="label-2"> <input
												type="file" id="headImage" style="display: none;"
												onchange="UploadImage(this.files[0],this)" />
											</label>
										</div>
									</div>

									<div class="form-model-div flex-start" style="min-height:30px;">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>报名费用</span>
										</p>
										<div class="form-input-parent">
											<p>￥200</p>
										</div>
									</div>
									<div class="form-model-div flex-start" style="min-height:30px;">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>银行汇款账号</span>
										</p>
										<div class="form-input-parent">
											<p>6225551823951796</p>
										</div>
									</div>
									<div class="form-model-div flex-start" style="min-height:30px;">

										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>银行名称</span>
										</p>
										<div class="form-input-parent">
											<p>招商银行</p>
										</div>
									</div>
									<div class="form-model-div flex-start" style="min-height:30px;">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>开户行</span>
										</p>
										<div class="form-input-parent">
											<p>大连招商银行中山支行</p>
										</div>
									</div>
									<div class="form-model-div flex-start" style="min-height:30px;">

										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>会社名称</span>
										</p>
										<div class="form-input-parent">
											<p></p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="align-items: flex-start;margin-top: 10px;margin-bottom:10px;">
										
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>上传打款凭证</span>
										</p>
										<div class="form-input-parent">
											<label for="certificateImage" class="label-2"> <input
												type="file" id="certificateImage" style="display: none;"
												onchange="UploadImage(this.files[0],this)" />
											</label>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="ivu-modal-footer">
							<button type="button" class="ivu-btn ivu-btn-text ivu-btn-large"
								onclick="Modal_cancel()">取消</button>
							<button type="button"
								class="ivu-btn ivu-btn-primary ivu-btn-large"
								onclick="Modal_ok()">确定</button>
						</div>
					</div>

				</div>
			</div>
		</div>



		<div class="modle-div" id="Modal-dl" style="display: none;">
			<div class="modle-body" style="width: 500px;">
				<div class="row-div modle-head" style="border-bottom: none;">
					<p>账户登录</p>
					<!-- <p class="p-cancel modle-cancel">x</p> -->
				</div>
				<div class="column-div modle-content">
					<div class="column-div modle-content-div">
						<input type="text" id="email" class="gd-input" placeholder="输入邮箱" />
					</div>
					<div class="column-div modle-content-div-2">
						<input type="password" id="password" class="gd-input"
							placeholder="输入密码" />
					</div>
					<div class="column-div modle-content-div-2">
						<button type="button" class="login-but" onclick="login()">登录</button>
					</div>
					<div class="flex-between modle-content-div-2">
						<p>
							没有账号？立即<a href="">注册</a>
						</p>
						<a href="" class="a-href">忘记密码</a>
					</div>
				</div>

				<div class="row-div modle-bottom" style="border-top: none;">
					<!-- <button type="button" class="cancel-but modle-cancel">取消</button>
						<button type="button" class="ok-but" onclick="Ok_click()">确定</button> -->
				</div>
			</div>
		</div>



		<div class="home-bottom-div column-div">
			<img src="img/home/home-6.png" class="position-fixed">
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
			Entity : {
				matchId : '',
				surname : '',
				userName : '',
				sex: '',
				birthday : '',
				phone : '',
				email : '',
				headImage : '',
				certificateImage : ''
			}
		}
	});
	function href_url_login() {
		if (vm.login_name === '请登陆') {
			window.location.href = "PC-login.jsp";
		}
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}

	if ("${user}") {
		vm.login_name = "${user.loginName}"
	} else {
		vm.login_name = "请登陆"
	}
	jeDate("#birthday", {
		format : "YYYY-MM-DD"
	});
	function Modal_show() {

	};
	function Modal_ok() {

	};
	function Modal_cancel() {
		$("#Modal-Add").toggle(300);
	};

	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	function add_click () {
		vm.login_name = "${user.loginName}"
		if ("${user}") {
			$("#Modal-Add").toggle(300);
		} else {
			$("#Modal-dl").toggle(300);
		}
	}
	request();
	function request() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match/current",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					console.log(data)
					let entity = data.result;
					let arr = entity.createTime.split(' ');
					$("#createTime").text('发布时间：' + arr[0]);
					$("#details").text(entity.details);
					$("#enrollTime").text(entity.enrollTime);
					$("#enrollTimeEnd").text(entity.enrollTimeEnd);
					$("#matchContent").text(entity.matchContent);
					$("#matchName").text(entity.matchName);
					$("#matchPlace").text(
							entity.matchTime + '   地点:' + entity.matchPlace);
					$("#organization").text(entity.organization);
					$("#schedule").text(entity.schedule);
					vm.Entity.matchName = entity.matchName;
					vm.Entity.matchId = entity.id;
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
					//window.location.href = "http://localhost:9090/billiard/System_home.jsp";
					let str = "${user.loginName}"
					console.log(str);
					$('#Modal-dl').hide();
					$('#Modal-fu').show();
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

	function submit() {
		let event = {
			"matchId" : $("#apply-key").val(),
			"surname" : $("#surname").val(),
			"userName" : $("#userName").val(),
			"sex" : $("input[name='radio-name']:checked").val(),
			"birthday" : $("#birthday").val(),
			"phone" : $("#phone").val(),
			"email" : $("#email").val(),
			"headImage" : $("#headImage").attr('image'),
			"certificateImage" : $("#certificateImage").attr('image')
		}
		console.log(event);
		return;
		$
				.ajax({
					type : "POST",
					async : true,
					url : "${pageContext.request.contextPath}/admin/match",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"matchId" : $("#matchId").val(),
						"surname" : $("#surname").val(),
						"userName" : $("#userName").val(),
						"sex" : $("#sex").val(),
						"birthday" : $("#birthday").val(),
						"phone" : $("#phone").val(),
						"email" : $("#email").val(),
						"headImage" : $("#headImage").val(),
						"certificateImage" : $("#certificateImage").val()
					}),
					success : function(data) {
						if (data.code === 200) {
							spop({
								template : '成功',
								group : 'submit-satus',
								style : 'success',
								autoclose : 5000
							});
							parent
									.$(window.parent.document)
									.find('.iframe')
									.attr('src',
											'http://localhost:9090/billiard/System_CompetitionList.jsp');
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
	function UploadImage(file, event) {
		let formdata = new FormData();
		formdata.append("file", file)
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/file/upload",
			data : formdata,
			contentType : false,
			processData : false,
			async : true,
			success : function(data) {
				if (data.code === 200) {
					$(event).attr('image', data.result)
					$(event).parent().css('background-image',
							'url(' + data.result + ')');
					$(event).parent().css('background-size', '100% 100%');
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
