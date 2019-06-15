<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>赛事新闻</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css"
	href="css/CompetitionNewsDetails.css" />
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


		<div class="content-div column-div" style="min-height:512px;justify-content: flex-start;">
			<div class="content-div-title row justify-start align-center">
				<div></div>
				<p>
					試合><span>ニュース</span>
				</p>
			</div>
			<div class="content-div-1 column-div">
				<div class="content-div-imgp column-div">
					<div class="content-div-p column-div">
						<p id="title">第四届竞技大师赛</p>
						<p id="createTime">2016/03/18 地址：江西玉山</p>
					</div>
					<img src="img/home/CompetitionNewsdetails.png" id="titleImage"
						style="height: 310px;" />
					<div class="content-div-but" id="content">
						<p>发布本届比赛，每场比赛日程，显示比赛名称标题，查看比赛地点（城市）</p>
						<p>斯诺克2018-19赛季将从5月的Q_School就开始，本赛季新增加一站排名赛，名为“巡回锦标赛”，上海大师赛从排名赛变为邀请赛，排名赛数量保持在20站。新赛季的总奖金将突破1500万英镑，而仅仅在2年前，赛季总奖金才首次突破1000万英镑。这其中世锦赛总奖金将从今年的196.8万英镑增加至225万英镑，冠军奖金将为50万英镑。新浪体育将为您全程报道新赛季斯诺克赛事，以及其他台球赛事。</p>
					</div>
				</div>
			</div>
			<div
				style="width: 60%; height: 3px; background: rgba(226, 226, 226, 1); margin-bottom: 15px;"></div>
			<div class="content-div-1 flex-between">
				<div class="row-div">
					<button type="button" class="ivu-btn" id="on_up"
						onclick="record(this)">前の記事</button>
					<p style="margin-left: 10px;" id="on_up-p">0件</p>
				</div>
				<div class="row-div">
					<p style="margin-right: 10px;" id="on_down-p">0件</p>
					<button type="button" class="ivu-btn" id="on_down"
						onclick="record(this)">次の記事</button>
				</div>
			</div>
		</div>


		<div class="home-bottom-div column-div">
			<div class="flex-around">
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

	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	let url = window.location.search;
	let id = null;
	if (url.indexOf("?") !== -1) {
		let str = url.substr(1);
		let strs = str.split("&");
		for (let i = 0; i < strs.length; i++) {
			let arr = strs[i].split("=");
			id = arr[1]
		}
	}
	if (id) {
		request();
	}
	function record(entity) {
		if ($(entity).attr('value')) {
			window.location.href = 'PC-' + 'CompetitionNewsDetails.jsp?id='
					+ $(entity).attr('value');
		}
	};
	function request() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match/news/detail?nid="
					+ id,
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					console.log(data)
					let entity = data.result.current;
					$("#content").html(entity.content);
					$("#title").html(entity.title);
					$("#titleImage").attr('src', entity.titleImage);
					$("#createTime").html(
							entity.createTime + ' 場所：' + entity.place);
					if (data.result.next) {
						$("#on_down").attr('value', data.result.next.id);
						$("#on_down-p").text(data.result.next.title);
					}
					if (data.result.previous) {
						$("#on_up").attr('value', data.result.previous.id);
						$("#on_up-p").text(data.result.previous.title);
					}

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
