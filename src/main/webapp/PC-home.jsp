<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>台球协会</title>
<link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/home.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/PC-home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div id="mvvm">
		<div class="home-div-1 column-div">
			<div class="home-div-1-2 flex-between">
				<p class="div-hover">全国ビリヤード協会</p>
				<div class="row-div flex-wrap">
					<div class="row-div">
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
			<div class="home-div-1-3 column-div">
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
			<div class="home-div-1-4">
				<div class="swiper-container swiper-1">
					<div class="swiper-wrapper" id="banner">
						<div class="swiper-slide">
							<img src="img/home/home-swiper.png" />
						</div>
					</div>
					<div class="swiper-pagination swiper-1-pagination"></div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
		</div>

		<div class="home-div-2 flex-between">
			<div class="home-div-2-1">
				<div class="lable flex-between">
					<p class="column-div">理事</p>
					<div class="row-div">
						<!-- <p>もっと見る</p>
						<img src="img/home/home-5.png" /> -->
					</div>
				</div>
				<div>
					<div class="swiper-container swiper-2">
						<div class="swiper-wrapper" id="council">
							<div class="swiper-slide">
								<img src="img/home/home-swiper-2.png">
							</div>
							<div class="swiper-slide">
								<img src="img/home/home-swiper-2.png">
							</div>
							<div class="swiper-slide">
								<img src="img/home/home-swiper-2.png">
							</div>
						</div>
						<div class="swiper-pagination swiper-2-pagination flex-end"></div>
						<div class="swiper-2-bottom flex-start">
							<p>理事の名前は記入する</p>
						</div>
					</div>
				</div>
			</div>
			<div class="home-div-2-2">
				<div class="lable flex-between">
					<p class="column-div">ポイントランキング</p>
					<div class="row-div p-hover" onclick="href_url('ranking')">
						<p>総合ランキング</p>
						<img src="img/home/home-5.png" />
					</div>
				</div>
				<div class="home-div-2-2-1">
					<div class="flex-around">
						<p>ランキング</p>
						<p>選手名</p>
						<p>ポイント</p>
					</div>
					<ul class="column-div" id="match">
						<li class="flex-around">
							<p>1</p>
							<p>王小二</p>
							<p>200</p>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="home-div-3">
			<div class="lable-2 flex-between">
				<p>試合</p>
				<div class="row-div p-hover" onclick="href_url('ScheduleReview')">
					<p>もっと見る</p>
					<img src="img/home/home-5.png" />
				</div>
			</div>
			<div class="div-swiper-3">
				<div class="swiper-container swiper-3">
					<div class="swiper-wrapper" id="review">
						<div class="swiper-slide column-div" style="width: 225px;">
							<div class="swiper-3-div column justify-start align-center">
								<div class="column-div">
									<p>05-06 19:30</p>
									<button type="button">敬请期待</button>
								</div>
								<div class="flex-around">
									<p>澳莎利文</p>
									<p>VS</p>
									<p>别的队</p>
								</div>
								<p>职业斯诺克巡回赛</p>
								<p>地点：大连市高新园区</p>
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-3-div column justify-start align-center">
								<div class="column-div">
									<p>05-06 19:30</p>
									<button type="button">敬请期待</button>
								</div>
								<div class="flex-around">
									<p>澳莎利文</p>
									<p>VS</p>
									<p>别的队</p>
								</div>
								<p>职业斯诺克巡回赛</p>
								<p>地点：大连市高新园区</p>
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-3-div column justify-start align-center">
								<div class="column-div">
									<p>05-06 19:30</p>
									<button type="button">敬请期待</button>
								</div>
								<div class="flex-around">
									<p>澳莎利文</p>
									<p>VS</p>
									<p>别的队</p>
								</div>
								<p>职业斯诺克巡回赛</p>
								<p>地点：大连市高新园区</p>
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-3-div column justify-start align-center">
								<div class="column-div">
									<p>05-06 19:30</p>
									<button type="button">敬请期待</button>
								</div>
								<div class="flex-around">
									<p>澳莎利文</p>
									<p>VS</p>
									<p>别的队</p>
								</div>
								<p>职业斯诺克巡回赛</p>
								<p>地点：大连市高新园区</p>
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-3-div column justify-start align-center">
								<div class="column-div">
									<p>05-06 19:30</p>
									<button type="button">敬请期待</button>
								</div>
								<div class="flex-around">
									<p>澳莎利文</p>
									<p>VS</p>
									<p>别的队</p>
								</div>
								<p>职业斯诺克巡回赛</p>
								<p>地点：大连市高新园区</p>
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-3-div column justify-start align-center">
								<div class="column-div">
									<p>05-06 19:30</p>
									<button type="button">敬请期待</button>
								</div>
								<div class="flex-around">
									<p>澳莎利文</p>
									<p>VS</p>
									<p>别的队</p>
								</div>
								<p>职业斯诺克巡回赛</p>
								<p>地点：大连市高新园区</p>
							</div>
						</div>
					</div>

				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			</div>

		</div>

		<div class="home-div-4 column-div">
			<div class="lable-3 flex-between">
				<p>ニュース</p>
				<div class="row-div p-hover" onclick="href_url('CompetitionNews')">
					<p>もっと見る</p>
					<img src="img/home/home-5.png" />
				</div>
			</div>
			<div class="home-div-4-divmedia" style="width: 100%;">
				<div class="home-div-4-1 column-div" id="news-A">
					<img src="img/home/home-2-1.png" />
					<p>台球世界锦标赛正赛17日在江西玉山拉开战幕</p>
					<p>新华社江西玉山3月17日体育专电（记者郑直
						梁金雄）中国·上饶·玉山2016CBSA“上菱电梯”杯中式台球世界锦标赛正赛17日在江西玉山拉开战幕</p>
					<p>2016/03/18 地址：江西玉山</p>
				</div>
				<div class="home-div-4-2 column-div" id="news-B">
					<div class="flex-between ">
						<div class="column-div">
							<img src="img/home/home-2-2.png"
								style="width: 221px; height: 147px" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
						<div class="column-div">
							<img src="img/home/home-2-3.png"
								style="width: 221px; height: 147px" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
					</div>
					<div class="flex-between ">
						<div class="column-div">
							<img src="img/home/home-2-4.png"
								style="width: 221px; height: 147px" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
						<div class="column-div">
							<img src="img/home/home-2-5.png"
								style="width: 221px; height: 147px" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="home-div-5 column-div">
			<div>
				<p class="column-div">スポンサー</p>
			</div>
			<div class="div-swiper-4">
				<div class="swiper-container swiper-4">
					<div class="swiper-wrapper" id="sponsor">
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-1.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-1.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-2.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div ">
								<img src="img/home/home-swiper-3-2.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-3.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-4.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-4.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-5.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-5.png">
							</div>
						</div>
						<div class="swiper-slide column-div">
							<div class="swiper-4-div">
								<img src="img/home/home-swiper-3-1.png">
							</div>
						</div>
					</div>
					<div class="swiper-pagination"></div>

				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
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
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			login_name : '请登录',
			swiper3 : null,
			banner : [],
			council : [],
			sponsor : []
		}
	});
	window.addEventListener('resize', function() {
		let Width = window.innerWidth;
		//console.log(Width)
		if (Width === 1200) {//.slidesPerView
			/* vm.swiper3.slidesPerView
			console.log(vm.swiper3.slidesPerView = 2) */
		}
	});
	function image_url(index, state) {
		let str = state === 1 ? 'banner' : state === 2 ? 'council' : 'sponsor';
		let entity = vm[str][index];
		if (entity.jumpType == 0) {
			window.open(entity.hrefUrl);
			// window.location.href = entity.hrefUrl
		} else {
			window.open("PC-image-introduce.jsp?id="+entity.id)
			
			// console.log(entity.hrefUrl, entity.jumpType)
		}

	}
	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
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
	let Entity = null;
	Request();
	function Request() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/index/list",
					dataType : "json",
					async : false,
					success : function(res) {
						if (res.code === 200) {
							console.log(res, 'Request')
							Entity = res.result
							let banner = ''
							vm.banner = Entity.banner;
							Entity.banner.forEach(function(item, index) {

								banner += '<div class="swiper-slide">'
										+ '<img src="' + item.imageUrl
										+ '" onclick="image_url(' + index
										+ ',1)"/>' + '</div>';
							})
							$('#banner').html(banner)
							AddSwiper('banner');
							let council = ''
							vm.council = Entity.council;
							Entity.council.forEach(function(item, index) {
								council += '<div class="swiper-slide">'
										+ '<img src="' + item.imageUrl
										+ '" onclick="image_url(' + index
										+ ',2)"/>' + '</div>'
							})
							$('#council').html(council);
							AddSwiper('council');
							vm.sponsor = Entity.sponsor;
							let sponsor = ''
							Entity.sponsor
									.forEach(function(item, index) {
										sponsor += '<div class="swiper-slide column-div">'
												+ '<div class="swiper-4-div">'
												+ '<img src="'
												+ item.imageUrl
												+ '" style="width:175px;height:62px;" onclick="image_url('
												+ index
												+ ',3)">'
												+ '</div></div>'
									})
							$('#sponsor').html(sponsor);
							AddSwiper('sponsor');

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
	matchRequest();
	function matchRequest() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match/rank/integral",
			dataType : "json",
			async : false,
			success : function(res) {
				if (res.code === 200) {
					console.log(res, '排名')
					let match = ''
					res.result.forEach(function(item, index) {
						match += '<li class="flex-around">' + '<p>'
								+ (index + 1) + '</p>' + '<p>' + item.nickname
								+ '</p>' + '<p>' + item.s + '</p>' + '</li>'
					})
					$('#match').html(match);

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
	function href_SRD(val) {
		window.location.href = "PC-ScheduleReviewDetails.jsp?id=" + val;
	}
	reviewhRequest();
	function reviewhRequest() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/match/review?page=1&size=20",
					dataType : "json",
					async : false,
					success : function(res) {
						if (res.code === 200) {
							console.log(res, '回顾')
							let review = ''
							let arr = res.result.list
							arr
									.forEach(function(item, index) {
										review += '<div class="swiper-slide column-div" style="width: 225px;">'
												+ '<div class="swiper-3-div column justify-start align-center">'
												+ '<div class="column-div">'
												+ '<p>'
												+ item.courseTime
												+ '</p>'
												+ '<button type="button" onclick="href_SRD('
												+ item.id
												+ ')">試合申し込み</button>'
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
												+ '<p>'
												+ item.title
												+ '</p>'
												+ '<p>地点：'
												+ item.coursePlace
												+ '</p>'
												+ '</div>' + '</div>'
									})
							$('#review').html(review);
							AddSwiper('review');

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
	function AddSwiper(name) {
		if (name === 'banner') {
			new Swiper('.swiper-1', {
				spaceBetween : 30,
				centeredSlides : true,
				autoplay : {
					delay : 5000,
					disableOnInteraction : false,
				},
				pagination : {
					el : '.swiper-1-pagination',
					clickable : true,
				},
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
				},
			});
		} else if (name === 'council') {
			new Swiper('.swiper-2', {
				spaceBetween : 30,
				centeredSlides : true,
				autoplay : {
					delay : 5000,
					disableOnInteraction : false,
				},
				pagination : {
					el : '.swiper-2-pagination',
					clickable : true,
				}
			});
		} else if (name === 'sponsor') {
			new Swiper('.swiper-4', {
				slidesPerView : 5,
				slidesPerColumn : 2,
				slidesPerColumnFill : 'row',
				spaceBetween : 30,
				pagination : {
					el : '.swiper-4-pagination',
					clickable : true,
				},
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
				},
			});
		} else if (name === 'review') {
			vm.swiper3 = new Swiper('.swiper-3', {
				slidesPerView : 'auto',
				spaceBetween : 20,
				freeMode : true,
				pagination : {
					el : '.swiper-3-pagination',
					clickable : true,
				},
				navigation : {
					nextEl : '.swiper-button-next',
					prevEl : '.swiper-button-prev',
				},
			});
		}
	}

	function pageFunction(arr, pageSize) {
		let oldArr = arr;
		let newArr = [];
		let tmpArr = [];
		const countByPage = pageSize;
		oldArr.forEach(function(item, index) {
			tmpArr.push(item);
			if (index % countByPage === countByPage - 1
					|| index === oldArr.length - 1) {
				newArr.push(tmpArr);
				tmpArr = [];
			}
		});
		return newArr
	}
	newsrequest()
	function newsrequest() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/match/news?size="
							+ 5 + "&page=" + 1,
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							console.log(data, '新闻')
							let arr = data.result.list;
							let news_A = '<img src="'+arr[0].titleImage+'" />'
									+ '<p>'
									+ arr[0].title
									+ '</p>'
									+ '<p>'
									+ arr[0].profile
									+ '</p>'
									+ '<p>'
									+ (arr[0].createTime + '    ' + arr[0].place)
									+ '</p>';
							$("#news-A").html(news_A);
							let news_B = ''
							let list = [];
							arr.forEach(function(item, index) {
								if (index > 0)
									list.push(item)
							});
							let arrList = pageFunction(list, 2);
							arrList.forEach(function(item) {
								news_B += '<div class="flex-around">'
										+ ArrforEach(item) + '</div>'
							});
							$("#news-B").html(news_B);
							function ArrforEach(arr) {
								let arrStr = '';
								arr
										.forEach(function(item) {
											arrStr += '<div class="column-div">'
													+ '<img src="'+item.titleImage+'" style="width:221px;height:147px"/>'
													+ '<p class="home-div-4-2-tatle">'
													+ item.title
													+ '</p>'
													+ '<p class="home-div-4-2-location">'
													+ (item.createTime + item.place)
													+ '</p>' + '</div>'

										})
								return arrStr;
							}
							;
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
