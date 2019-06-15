<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>我的赛事</title>
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
<body>
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
					会員センター><span>私の試合</span>
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
					style="justify-content: flex-start; min-height: 412px;">
					<div class="column-div my-tab"
						style="justify-content: space-between;">
						<div class="flex-start">
							<div class="my-tab-h">
								<p class="p-hover" state="">全て</p>
								<p></p>
							</div>   
							<div class="my-tab-h">
								<p class="p-hover" state="1">未入金</p>
								<p></p>
							</div>
							<div class="my-tab-h">
								<p class="p-hover" state="3">試合準備中</p>
								<p></p>
							</div>
							<div class="my-tab-h">
								<p class="p-hover" state="-1">終了済み</p>
								<p></p>
							</div>
							<div class="my-tab-h">
								<p class="p-hover" state="5">取消済み</p>
								<p></p>
							</div>
						</div>
						<div></div>
					</div>
					<div class="MyCompetition-list column-div" id="order-div">
						<div class="MyCompetition-list-div flex-between">
							<img src="img/TheGame.png" />
							<div class="MyCompetition-list-div-div">
								<div class="MyCompetition-list-div-p">
									<p>比赛通告比赛赛事名字填写位置</p>
									<p>赛事时间：2019-06-01</p>
									<button type="button" class="ivu-btn info-btn">試合準備中</button>
								</div>
								<p class="typeface p-hover">获得积分 20积分</p>
								<p class="typeface p-hover"
									onclick="href_url('MyCompetitionDetails')">>>詳細を見る</p>
							</div>
						</div>
						<div class="MyCompetition-list-div flex-between">
							<img src="img/TheGame.png" />
							<div class="MyCompetition-list-div-div">
								<div class="MyCompetition-list-div-p">
									<p>比赛通告比赛赛事名字填写位置</p>
									<p>赛事时间：2019-06-01</p>
									<button type="button" class="ivu-btn info-btn">試合準備中</button>
								</div>
								<p class="typeface p-hover">获得积分 20积分</p>
								<p class="typeface p-hover"
									onclick="href_url('MyCompetitionDetails')">>>詳細を見る</p>
							</div>
						</div>
						<div class="MyCompetition-list-div flex-between">
							<img src="img/TheGame.png" />
							<div class="MyCompetition-list-div-div">
								<div class="MyCompetition-list-div-p">
									<p>比赛通告比赛赛事名字填写位置</p>
									<p>赛事时间：2019-06-01</p>
									<button type="button" class="ivu-btn info-btn">試合準備中</button>
								</div>
								<p class="typeface p-hover">获得积分 20积分</p>
								<p class="typeface p-hover"
									onclick="href_url('MyCompetitionDetails')">>>詳細を見る</p>
							</div>
						</div>
					</div>
				</div>
			</div>
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
			state : '',
			table: [],
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
	request()

	function request() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/user/enroll?size=100000&page=1&type="
							+ vm.state,
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							console.log(data)
							let html = ''
							vm.table = data.result.list;
							data.result.list
									.forEach(function(item, index) {
										let but = ''
										if (item.is_end) {
											but = '<button type="button" class="ivu-btn ivu-btn-over">終了済み</button>'
										} else {
											// <!-- 1未付  2待审核  3备战中 4审核失败 5已取消 -1已结束 -->
											//  未入金    試合準備中    終了済み    取消済み
											if (item.enroll_type === 1) {
												but = '<button type="button" class="ivu-btn ivu-btn-warning">未入金</button>'
											} else if (item.enroll_type === 2) {
												but = '<button type="button" class="ivu-btn ivu-btn-warning">待审核</button>'
											} else if (item.enroll_type === 3) {
												but = '<button type="button" class="ivu-btn ivu-btn-primary">試合準備</button>'
											} else if (item.enroll_type === 4) {
												but = '<button type="button" class="ivu-btn ivu-btn-error">审核失败</button>'
											} else if (item.enroll_type === 5) {
												but = '<button type="button" class="ivu-btn ivu-btn-error">取消済み</button>'
											}
										}
										let inte = item.inte ? '<p class="typeface p-hover">ポイント'
												+ item.inte + '积分</p>'
												: '';

										html += '<div class="MyCompetition-list-div flex-between">'
												+ '<img src="'+item.match_image+'"/>'
												+ '<div class="MyCompetition-list-div-div">'
												+ '<div class="MyCompetition-list-div-p">'
												+ '<p>'
												+ item.match_name
												+ '</p>'
												+ '<p>赛事时间：'
												+ item.match_time
												+ '</p>'
												+ but
												+ '</div>'
												+ inte
												+ '<p class="typeface p-hover"'
												+ 'onclick="details('+index+')">>>詳細を見る</p>'
												+ '</div></div>'
									});
							$("#order-div").html(html);
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
	function details (index) {
		window.location.href = 'PC-MyCompetitionDetails.jsp?id=' + vm.table[index].match_id;
	}
	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	$("#menuBar > dl > dd:nth-child(2)").css('background', '#2974B6').css(
			'color', 'white');
	$('.my-tab-h>p').click(function() {
		$('.my-tab-h>p:nth-child(2)').css('display', 'none');
		// <!-- 1未付  2待审核  3备战中 4审核失败 5已取消 -1已结束 -->
		vm.state = $(this).attr('state');
		$(this).next().css('display', 'block');
		request()
	})
</script>
</html>
