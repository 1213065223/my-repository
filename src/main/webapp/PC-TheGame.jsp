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
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
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
					<p>比赛通告比赛赛事名字填写位置</p>
					<p>发布时间：2019-05-20</p>
					<button type="button" class="ivu-btn" onclick="add_click()">立即报名</button>
				</div>
				<div
					style="width: 100%; height: 3px; background: rgba(226, 226, 226, 1); margin-bottom: 15px;"></div>
				<img src="img/TheGame.png" width="100%" style="margin-bottom: 10px;" />
				<div class="content-div-3 column-start">
					<p>比赛通告</p>
					<p>组织机构：大连台球协会</p>
					<p>比赛项目内容：</p>
					<p>时间地点：</p>
					<p>规则</p>
					<p>日程安排：</p>
					<p>开放报名时间：</p>
					<p>报名截止时间：</p>
				</div>
			</div>
		</div>


		<div class="modle-div" id="Modal-fu" style="display: none;">
			<div class="modle-body" style="width: 700px;">
				<div class="row-div modle-head">
					<p>比赛报名</p>
					<p class="p-cancel modle-cancel">x</p>
				</div>
				<div class="column-div modle-content">
					<div class="row-div modle-content-div">
						<p>赛事名称：</p>
						<div>
							<input type="text" class="gd-input" />
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>用户姓：</p>
						<div style="width: 20%;">
							<input type="text" class="gd-input" />
						</div>
						<div style="width: 40%; margin-bottom: 0px;"
							class="row-div modle-content-div">
							<p style="width: 20px;">名</p>
							<div>
								<input type="text" class="gd-input" />
							</div>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>性别：</p>
						<div class="flex-around">
							<label for="radio-1" class="row-div"> <input type="radio"
								name="radio-name" id="radio-1" value="1" checked="checked" />
								<p>男</p>
							</label> <label for="radio-2" class="row-div"> <input
								type="radio" name="radio-name" id="radio-2" value="2" />
								<p>女</p>
							</label>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>生日：</p>
						<div>
							<input type="text" class="gd-input" />
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>联系电话：</p>
						<div>
							<input type="text" class="gd-input" />
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>邮箱：</p>
						<div>
							<input type="text" class="gd-input" />
						</div>
					</div>
					<div class="row-div modle-content-div"
						style="align-items: flex-start;">
						<p>上传头像：</p>
						<div>
							<label for="file-1" class="label-2"> <input type="file"
								id="file-1" style="display: none;" />
							</label>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>报名费用：</p>
						<div>
							<p>￥200</p>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>银行汇款账号：</p>
						<div>
							<p>6225551823951796</p>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>银行名称：</p>
						<div>
							<p>招商银行</p>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>开户行：</p>
						<div>
							<p>大连招商银行中山支行</p>
						</div>
					</div>
					<div class="row-div modle-content-div">
						<p>会社名称：</p>
						<div>
							<p></p>
						</div>
					</div>
					<div class="row-div modle-content-div"
						style="align-items: flex-start;">
						<p>上传打款凭证：</p>
						<div>
							<label for="file-2" class="label-2"> <input type="file"
								id="file-2" style="display: none;" />
							</label>
						</div>
					</div>
				</div>
				<div class="row-div modle-bottom">
					<button type="button" class="cancel-but modle-cancel">取消</button>
					<button type="button" class="ok-but" onclick="Ok_click()">确定</button>
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
						<input type="text" id="email" class="gd-input"
							placeholder="输入邮箱" />
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
		$('.modle-cancel').click(function() {
			document.body.style.overflowX = 'auto';
			document.body.style.overflowY = 'auto';
			$('#Modal-fu').hide();
			$('#Modal-dl').hide();
		});

		
		function add_click() {
			document.body.style.overflowX = 'hidden';
			document.body.style.overflowY = 'hidden';
			if ("${user.loginName}") {
				$('#Modal-fu').show();
			} else {
				$('#Modal-dl').show();
			}
		}

		function href_url(value) {
			window.location.href = 'PC-'+value + '.jsp';
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
