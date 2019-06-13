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
</head>
<body id="mvvm">
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
					会员中心><span>修改信息</span>
				</p>
			</div>

			<div class="content-div-1 flex-between"
				style="align-items: flex-start;">
				<div class="menuBar" id="menuBar">
					<dl class="column-div">
						<dd src='MemberCenter'>
							<span>我的信息</span>
						</dd>
						<dd src='MyCompetition'>
							<span>我的赛事</span>
						</dd>
						<dd src='MyIntegral'>
							<span>我的积分</span>
						</dd>
					</dl>
				</div>
				<div class="menuBar-content column-div"
					style="justify-content: flex-start;">
					<div class="flex-between user-1">
						<p>账户信息</p>
						<p class="typeface p-hover" onclick="href_url('MemberCenter')">返回</p>
					</div>
					<div class="flex-between user-2">
						<img src="img/head-user.png" />
						<div class="column-div uploading-hei">
							<label for="filehei">
								<p class="ivu-btn" style="background: #2974B6FF; color: white;">上传头像</p>
								<input type="file" id="filehei" style="display: none;" />
							</label>
							<p>建议长宽1:1，不小于100px，JPG、PNG、GIF格式，小于300K。</p>
						</div>
					</div>
					<div class="column-div user-update">
						<div class="row-div">
							<p>邮箱：</p>
							<p style="width: 100%;">{{loginName}}</p>
						</div>
						<div class="row-div">
							<p>电话：</p>
							<input type="email" class="gd-input" v-model="phone"/>
						</div>
						<div class="row-div">
							<p>姓名：</p>
							<input type="email" class="gd-input" v-model="name"/>
						</div>
						<div class="row-div">
							<p>性别：</p>
							<div class="flex-around" style="width: 100%;">
								<label for="radio-1" class="row-div"> <input
									type="radio" name="radio-name" id="radio-1" value="1"
									checked="checked" />
									<p class="sex">男</p>
								</label> <label for="radio-2" class="row-div"> <input
									type="radio" name="radio-name" id="radio-2" value="2" />
									<p class="sex">女</p>
								</label>
							</div>
						</div>
						<div class="row-div">
							<p>生日：</p>
							<div class="jeinpbox" style="width: 100%;">
								<input type="text" readonly class="jeinput gd-input" id="matchTime"
									autocomplete="off" v-model="birthday">
							</div>
						</div>
						<div class="row-div">
							<p></p>
							<div class="column-start" style="width: 100%;">
								<button type="button" class="ivu-btn ivu-btn-1">提交</button>
							</div>
						</div>
					</div>
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
	jeDate("#matchTime", {
		format : "YYYY年MM月DD号",
		donefun : function(obj) {
			// RegExpEntity.timeQuantum.Event.onceEvent();
			vm.birthday = obj.val;
		}
	});
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			name: "", // 姓名
			birthday : "", // 生日
			headImage : "", // 头像
			id : "", // id
			loginName : "", // 邮箱
			surname : "", //姓氏
			nickname : "", // 名
			phone : "", // 手机号
			integral: 0,//积分
			sex : 1 // 性别
			
		}
	});
	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
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
						$('#radio-1').attr("checked","checked")
					} else {
						$('#radio-2').attr("checked","checked")
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
</script>
</html>
