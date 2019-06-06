<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>赛事日历</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/ScheduleIntroduce.css" />
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
					赛事中心><span>赛事日历</span>
				</p>
			</div>
			<div class="content-div-1 column-div">
				<table border="0" cellspacing="0" cellpadding="0" class="gd-table"
					id="table">
					<tr>
						<th>
							<div>时间</div>
						</th>
						<th>
							<div>赛事名称</div>
						</th>
						<th>
							<div>城市</div>
						</th>
						<th>
							<div>结果</div>
						</th>
					</tr>
					<tr>
						<td>
							<div>5月2日-5月5日</div>
						</td>
						<td>
							<div>第三十回..名称</div>
						</td>
						<td>
							<div>盘锦市</div>
						</td>
						<td>
							<div>
								<a href="EventDetails.html">结果查看</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>5月2日-5月5日</div>
						</td>
						<td>
							<div>第三十回..名称</div>
						</td>
						<td>
							<div>盘锦市</div>
						</td>
						<td>
							<div>
								<a href="EventDetails.html">结果查看</a>
							</div>
						</td>
					</tr>
				</table>
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
	$(".zxf_pagediv").createPage({
		pageNum : 10,
		current : 1,
		total : 300,
		backfun : function(e) {
			console.log(e.current)
		}
	});

	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	request();
	function request() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match?size=10&page=1",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					console.log(data)
					let arr = data.result.list;
					let innhtml = '<tr><th><div>时间</div></th>'
							+ '<th><div>赛事名称</div></th>'
							+ '<th><div>城市</div></th>'
							+ '<th><div>结果</div></th></tr>'
					arr.forEach(function(item, index) {
						innhtml += '<tr>' + '<td>' + '<div>5月2日-5月5日</div>'
								+ '</td>' + '<td>' + '<div>第三十回..名称</div>'
								+ '</td>' + '<td>' + '<div>盘锦市</div>' + '</td>'
								+ '<td>' + '<div>'
								+ '<a href="PC-EventDetails.jsp?id='+item.id+'">结果查看</a>'
								+ '</div>' + '</td>' + '</tr>'
					})

					$("#table>tbody").html(innhtml);
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
