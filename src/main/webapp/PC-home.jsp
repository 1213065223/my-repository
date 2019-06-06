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
</head>
<script type="text/javascript">
	
</script>
<body>
	<div>
		<div class="home-div-1 column-div">
			<div class="home-div-1-2 flex-between flex-wrap">
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
			<div class="home-div-1-3 column-div">
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
						<p>更多理事</p>
						<img src="img/home/home-5.png" />
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
					<p class="column-div">积分排名</p>
					<div class="row-div">
						<p>完整排行</p>
						<img src="img/home/home-5.png" />
					</div>
				</div>
				<div class="home-div-2-2-1">
					<div class="flex-around">
						<p>排名</p>
						<p>姓名</p>
						<p>积分</p>
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
				<p>赛情介绍</p>
				<div class="row-div">
					<p>更多赛情</p>
					<img src="img/home/home-5.png" />
				</div>
			</div>
			<div>
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
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>

		</div>

		<div class="home-div-4 column-div">
			<div class="lable-3 flex-between">
				<p>赛事新闻</p>
				<div class="row-div">
					<p>更多赛事</p>
					<img src="img/home/home-5.png" />
				</div>
			</div>
			<div class="flex-between flex-wrap" style="width: 100%;">
				<div class="home-div-4-1 column-div" id="news-A">
					<img src="img/home/home-2-1.png" />
					<p>台球世界锦标赛正赛17日在江西玉山拉开战幕</p>
					<p>新华社江西玉山3月17日体育专电（记者郑直
						梁金雄）中国·上饶·玉山2016CBSA“上菱电梯”杯中式台球世界锦标赛正赛17日在江西玉山拉开战幕</p>
					<p>2016/03/18 地址：江西玉山</p>
				</div>
				<div class="home-div-4-2 column-div" id="news-B">
					<div class="flex-between flex-wrap">
						<div class="column-div">
							<img src="img/home/home-2-2.png" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
						<div class="column-div">
							<img src="img/home/home-2-3.png" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
					</div>
					<div class="flex-between flex-wrap">
						<div class="column-div">
							<img src="img/home/home-2-4.png" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
						<div class="column-div">
							<img src="img/home/home-2-5.png" />
							<p class="home-div-4-2-tatle">斯诺克美女裁判这14年</p>
							<p class="home-div-4-2-location">2016/03/18 地址：江西玉山</p>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="home-div-5 column-div">
			<div>
				<p class="column-div">赞助商</p>
			</div>
			<div>
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
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
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
</body>
<script type="text/javascript">
	function href_url(value) {
		window.location.href = 'PC-'+value + '.jsp';
	}

	let Entity = null;
	Request();
	function Request() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/index/list",
			dataType : "json",
			async : false,
			success : function(res) {
				if (res.code === 200) {
					Entity = res.result
					let banner = ''
					Entity.banner.forEach(function(item, index) {
						banner += '<div class="swiper-slide">'
								+ '<img src="'+item.imageUrl+'" />' + '</div>'
					})
					$('#banner').html(banner)
					AddSwiper('banner');
					let council = ''
					Entity.council.forEach(function(item, index) {
						council += '<div class="swiper-slide">'
								+ '<img src="'+item.imageUrl+'" />' + '</div>'
					})
					$('#council').html(council);
					AddSwiper('council');
					let sponsor = ''
					Entity.sponsor.forEach(function(item, index) {
						sponsor += '<div class="swiper-slide column-div">'
								+ '<div class="swiper-4-div">'
								+ '<img src="img/home/home-swiper-3-1.png">'
								+ '</div>' + '</div>'
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
												+ '<button type="button">敬请期待</button>'
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
				slidesPerView : 4,
				slidesPerColumn : 2,
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
			new Swiper('.swiper-3', {
				slidesPerView : 4,
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
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match/news?size=" + 5
					+ "&page=" + 1,
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					let arr = data.result.list;
					let news_A = '<img src="'+arr[0].titleImage+'" />' + '<p>'
							+ arr[0].title + '</p>' + '<p>' + arr[0].profile
							+ '</p>' + '<p>'
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
						news_B += '<div class="flex-between flex-wrap">'+ArrforEach(item)+'</div>'
					});
					$("#news-B").html(news_B);
					function ArrforEach(arr) {
						let arrStr = '';
						arr.forEach(function(item) {
							arrStr += '<div class="column-div">'
									+ '<img src="'+item.titleImage+'"/>'
									+ '<p class="home-div-4-2-tatle">'
									+ item.title + '</p>'
									+ '<p class="home-div-4-2-location">'
									+ (item.createTime + item.place) + '</p>'
									+ '</div>'

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
