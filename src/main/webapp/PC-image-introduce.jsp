<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>图片详情</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/AssociationProfile.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
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


		<div class="content-div column-div"
			style="min-height: 512px; justify-content: flex-start;">
			<div class="content-div-title row justify-start align-center">
				<div></div>
				<p>{{lable}}</p>
			</div>
			<!-- <div class="content-div-1">
				<img src="img/AssociationProfile.png" width="100%">
			</div> -->
			<div class="content-div-1" id="introduction">
				<p>大连半岛天空商旅服务有限公司 此处放文字简介，目前内容是代替文字。</p>
				<p>北京时间5月24日消息，虽然正处于斯诺克的休赛期，但是奥沙利文还是能给大家带来大新闻，昨天在接受媒体采访时，他表示自己下赛季很可能将不会参加英锦赛、大师赛和世锦赛这三项大赛。</p>
				<p>奥沙利文是对英国《电讯报》说出这番话的，他说：“我只想打少量比赛，以此找点乐子。也许一年打三四站就够了，打那种比较低调的比赛，没有媒体在场的比赛。所以我可能将会错过大师赛、世锦赛和英锦赛。”</p>
				<p>奥沙利文已经赢得了创纪录的19个三大赛冠军，不过他表示自己已经没有参加三大赛的欲望了，尤其是在媒体有那么苛刻要求的情况下，他说：“我不想打世锦赛，所有媒体都想让我打，但我不是因为这个才打比赛的。我已经拿过5次世锦赛冠军了，对我来说世锦赛已经不再意味着血、汗和眼泪（意即意义重大），这比赛对我来说啥也不是了。”</p>
				<p>今年的世锦赛奥沙利文令人吃惊的在首轮就输给了首次参赛的卡希尔，现在看这有可能成为他在世锦赛上的绝唱。不过过去的这个赛季奥沙利文拿了5个冠军，还重新登上世界第一宝座，被视为他生涯的最佳赛季之一。可与此同时，他与世界台联的关系依然很紧张，赛季中他曾扬言要另起炉灶办另一个巡回赛，还严厉批评过场馆的卫生状况。</p>
				<p>奥沙利文说：“这就像破碎的婚姻，他们不喜欢我，我也根本不喜欢他们。我们住在同一个屋檐下，尝试表现得友好并容忍对方。但如果他们越界，并让我的生活很不开心的话，那我就不干了。如果我不去打他们的比赛，他们就输了；如果我还想打比赛，我就输了。”</p>
				<p>目前还不清楚火老师什么时候重回赛场，不过普遍认为他将会在9月去参加上海大师赛，在那里他是卫冕冠军。</p>
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
			id : null,
			lable: '',
			login_name : '请登录',
		}
	});
	let url = window.location.search;
	let id = null;
	if (url.indexOf("?") !== -1) {
		let str = url.substr(1);
		let strs = str.split("&");
		for (let i = 0; i < strs.length; i++) {
			let arr = strs[i].split("=");
			if (arr[0] == 'id') {
				vm.id = arr[1];
			}
		}
	}
	if (vm.id) {
		request()
	}
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
	request();
	function request() {
		/* 	let html = editor.html() */
		$.ajax({
			type : "get",
			async : true,
			url : "${pageContext.request.contextPath}/index/detail/" + vm.id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					console.log(data)
					//editor.html('')
					vm.lable = data.result.imageLocationDetail
					$("#introduction").html(data.result.hrefUrl)
					//editor.insertHtml(data.result.introduction);
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
	}
</script>
</html>
