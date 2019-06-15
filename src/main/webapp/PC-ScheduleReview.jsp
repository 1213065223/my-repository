<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>赛程回顾</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/ScheduleReview.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/PC-home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
</head>
<body id="mvvm">
	<div>
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
					試合><span>試合回顧</span>
				</p>
			</div>
			<div class="content-div-1" style=""
				id="result">
				<div class="content-div-imgp">
					<div class="backimg column-div">
						<p>04-18 20:30</p>
						<button type="button" class="ivu-btn"
							onclick="href_url('ScheduleReviewDetails')">赛事回顾</button>
					</div>
					<div class="flex-around">
						<p>澳莎利文</p>
						<p>VS</p>
						<p>别的队</p>
					</div>
					<div class="column-div">第四届竞技大师赛</div>
					<p class="column-div">地点：大连市高新园区</p>
					<div style="height: 10px;"></div>
				</div>
				<div class="content-div-imgp">
					<div class="backimg column-div">
						<p>04-18 20:30</p>
						<button type="button" class="ivu-btn"
							onclick="href_url('ScheduleReviewDetails')">赛事回顾</button>
					</div>
					<div class="flex-around">
						<p>澳莎利文</p>
						<p>VS</p>
						<p>别的队</p>
					</div>
					<div class="column-div">第四届竞技大师赛</div>
					<p class="column-div">地点：大连市高新园区</p>
					<div style="height: 10px;"></div>
				</div>
				<div class="content-div-imgp">
					<div class="backimg column-div">
						<p>04-18 20:30</p>
						<button type="button" class="ivu-btn"
							onclick="href_url('ScheduleReviewDetails')">赛事回顾</button>
					</div>
					<div class="flex-around">
						<p>澳莎利文</p>
						<p>VS</p>
						<p>别的队</p>
					</div>
					<div class="column-div">第四届竞技大师赛</div>
					<p class="column-div">地点：大连市高新园区</p>
					<div style="height: 10px;"></div>
				</div>
				<div class="content-div-imgp">
					<div class="backimg column-div">
						<p>04-18 20:30</p>
						<button type="button" class="ivu-btn"
							onclick="href_url('ScheduleReviewDetails')">赛事回顾</button>
					</div>
					<div class="flex-around">
						<p>澳莎利文</p>
						<p>VS</p>
						<p>别的队</p>
					</div>
					<div class="column-div">第四届竞技大师赛</div>
					<p class="column-div">地点：大连市高新园区</p>
					<div style="height: 10px;"></div>
				</div>
				<div class="content-div-imgp">
					<div class="backimg column-div">
						<p>04-18 20:30</p>
						<button type="button" class="ivu-btn"
							onclick="href_url('ScheduleReviewDetails')">赛事回顾</button>
					</div>
					<div class="flex-around">
						<p>澳莎利文</p>
						<p>VS</p>
						<p>别的队</p>
					</div>
					<div class="column-div">第四届竞技大师赛</div>
					<p class="column-div">地点：大连市高新园区</p>
					<div style="height: 10px;"></div>
				</div>

			</div>
			<div class="zxf_pagediv"></div>
		</div>


		<div class="home-bottom-div column-div">
			<div class="flex-around" >
				<img src="img/home/home-2-2.png" style="width: 150px;" />
				<div class="flex-around home-bottom-div-3" style="flex-wrap: wrap;">
					<ul class="column justify-start align-start">
						<li>一般社団法人</li>
						<li>全国ビリヤード協会</li>
						<li>JAPAN BILLIARD</li>
						<li>ASSOCIATION</li>
						<li class="row-div"><img src="img/home/home-number.png" />0411-xxxx-xxxx</li>
					</ul>
					<ul class="column justify-start align-start">
						<li>ホーム</li>
					</ul>
					<ul class="column justify-start align-start">
						<li>協会について</li>
						<li>協会概要</li>
						<li>公告</li>

					</ul>
					<ul class="column justify-start align-start">
						<li>試合</li>
						<li>試合予定</li>
						<li>試合日程</li>
						<li>試合回顧</li>
						<li>ニュース</li>
					</ul>
					<ul class="column justify-start align-start">
						<li>ランキング</li>
						<li>得点ランキング</li>
						<li>ポイントランキング</li>
					</ul>
					<ul class="column justify-start align-start">
						<li>会員センター</li>
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
	let entity = {
		page : 1,
		size : 10
	}
	$(".zxf_pagediv").createPage({
		backfun : function(e) {
			entity.page = e.current;
			request();
		}
	});

	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	function lookBack(entity) {
		window.location.href = 'PC-' + $(entity).attr('src');
	}
	request();
	function request() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/match/review?size="
							+ entity.size + "&page=" + entity.page,
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							console.log(data)
							let arr = data.result.list;
							let innhtml = ''
							arr
									.forEach(function(item, index) {
										let url = 'ScheduleReviewDetails.jsp?id='
												+ item.id
										innhtml += '<div class="content-div-imgp">'
												+ '<div class="backimg column-div">'
												+ '<p>'
												+ item.courseTime
												+ '</p>'
												+ '<button type="button" class="ivu-btn" onclick="lookBack(this)" src="'
												+ url
												+ '">試合回顧</button>'
												+ '</div>'
												+ '<div class="flex-around">'
												+ '<p>'
												+ item.teamOneName
												+ '</p>'
												+ '<p>VS</p>'
												+ '<p>'
												+ item.teamTwoName
												+ '</p>'
												+ '</div>'
												+ '<div class="column-div">'
												+ item.title
												+ '</div>'
												+ '<p class="column-div">場所：'
												+ item.coursePlace
												+ '</p>'
												+ '<div style="height: 10px;"></div>'
												+ '</div>'
									})
							$("#result").html(innhtml);
							$(".zxf_pagediv").createPage({
								pageNum : data.result.pages,
								current : data.result.pageNum,
								total : data.result.total
							});
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
