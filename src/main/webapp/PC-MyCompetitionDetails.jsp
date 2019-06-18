<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>赛事详情</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
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
<body id="mvvm">
	<div>
		<div class="login-div-1 column-div">
			<div class="login-div-1-2">
				<p class="div-hover" onclick="href_url('home')">全国ビリヤード協会</p>
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
					会員センター><span>私の試合>詳細を見る</span>
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
					style="justify-content: flex-start; height: 600px;">
					<div class="flex-between user-1">
						<p>{{matchName}}</p>
						<p class="typeface p-hover" onclick="href_url('MyCompetition')">返回</p>
					</div>
					<div class="column-div MyCompetition-table">
						<img src="img/TheGame.png" width="100%" height="200px"
							style="margin-bottom: 15px;">
						<table class="table-MyCompetition" border="0">
							<tr>
								<td>
									<div class="row-div table-td-div">申込時間：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{createTime}}</div>
								</td>
								<td>
									<div class="row-div table-td-div">開催場所：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{matchPlace}}</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row-div table-td-div">入金時間：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{paymentTime}}</div>
								</td>
								<td>
									<div class="row-div table-td-div">順位：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{ranking}}</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row-div table-td-div">試合開催日時：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{matchTime}}</div>
								</td>
								<td>
									<div class="row-div table-td-div">ポイント：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{integral}}</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="row-div table-td-div">参加費：</div>
								</td>
								<td>
									<div class="flex-between table-td-div">{{enrollCost}}</div>
								</td>
								<td>
									<div class="row-div table-td-div">試合状況：</div>
								</td>
								<td style="width: 200px;">
									<div id="isEnd" class="flex-between table-td-div">
										<!-- <p>未支付</p>
										<div style="margin-left: 10px;">
											<label for="filehei">
												<p class="ivu-btn"
													style="background: #2974B6FF; color: white;">上传凭证</p> <input 
												type="file" id="filehei" style="display: none;"
												onchange="UploadImage(this.files[0])" />UploadImage(this.files[0])
											</label>
										</div> -->
									</div>
								</td>
							</tr>
						</table>
					</div>
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
						<div class="ivu-modal-header" style="border: none;">
							<div class="ivu-modal-header-inner" style="text-align: center;">試合申し込み</div>
						</div>
						<div class="ivu-modal-body">
							<div style="width: 100%;" class="column-center">
								<form class="form-model column-start" label-width="200"
									id="form-model">
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>大会名：</span>
										</p>
										<div class="form-input-parent">
											<p>{{matchName}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>会員の氏名：</span>
										</p>
										<div class="form-input-parent">
											<p>{{name}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>性 别：</span>
										</p>
										<div class="form-input-parent">
											<p>{{sex}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>生年月日：</span>
										</p>
										<div class="form-input-parent">
											<p>{{birthday}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>電話番号：</span>
										</p>
										<div class="form-input-parent">
											<p>{{phone}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>メールアドレス：</span>
										</p>
										<div class="form-input-parent">
											<p>{{email}}</p>
										</div>
									</div>
									<div
										style="width: 98%; height: 30px; border-bottom: 1px solid #E5E5E5FF; margin-bottom: 30px;"></div>
									<div class="form-model-div flex-start"
										style="align-items: flex-start; margin-top: 10px; margin-bottom: 10px;">
										<p class="flex-end form-p">
											<span>プロフィール画像：</span>
										</p>
										<div class="form-input-parent">
											<label for="headImage" class="label-2 p-hover"> <input
												type="file" id="headImage" style="display: none;"
												onchange="UploadImage(this.files[0],this,1)" id="headImage" />
											</label>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>参加費：</span>
										</p>
										<div class="form-input-parent">
											<p>{{enrollCost}}</p>
											<!-- ￥200 -->
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>口座番号：</span>
										</p>
										<div class="form-input-parent">
											<p>{{account}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>銀行名：</span>
										</p>
										<div class="form-input-parent">
											<p>{{bankName}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>支店名：</span>
										</p>
										<div class="form-input-parent">
											<p>{{bank}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span>会社名：</span>
										</p>
										<div class="form-input-parent">
											<p>{{society}}</p>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="ivu-modal-footer" style="text-align: center;">
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
	</div>
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			email : '',
			name : '',
			login_name : '请登录',
			id : null,
			evidence : null,
			sex : '',
			phone : '',
			birthday : '',
			createTime : '',
			matchName : '', // 赛事名称
			enrollCost : '', // 费用
			matchTime : '', // 比晒时间
			matchPlace : '', // 地点
			isEnd : '', // 订单状态
			integral : '',//积分
			ranking : '', // 名次
			paymentTime : '',//付款时间
			account : '',
			bankName : '',
			bank : '',
			society : ''
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
	let url = window.location.search;
	if (url.indexOf("?") !== -1) {
		let str = url.substr(1);
		let strs = str.split("&");
		for (let i = 0; i < strs.length; i++) {
			let arr = strs[i].split("=");
			id = arr[1];
			vm.id = id;
		}
	}
	if (vm.id) {
		request();
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}
	function Modal_show() {
		$("#Modal-Add").toggle(300);

		$(document.body).css({
			"overflow-x" : "hidden",
			"overflow-y" : "hidden"
		});
	}
	function Modal_ok() {
		console.log('ok')
		if (!vm.evidence) {
			spop({
				template : '请上传支付凭证',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			return;
		}
		certificate()

	};

	function Modal_cancel() {
		$("#Modal-Add").toggle(300);
		$(document.body).css({
			"overflow-x" : "auto",
			"overflow-y" : "auto"
		});
	};
	function request() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/user/match/info/"
							+ vm.id,
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							console.log(data)
							// <!-- 1未付  2待审核  3备战中 4审核失败 5已取消 -1已结束 -->
							let ov = ''
							if (data.result.match.isEnd) {
								ov = '終了済み'
							} else {
								if (data.result.enroll.enrollType === 1) {
									//ov = '未付款';//  未入金    試合準備中    終了済み    取消済み
									ov = '<p style="color: #ff9900;">未入金</p>'
											+ '<div style="margin-left: 10px;">'
											+ '<p class="ivu-btn"'
											+ 'style="background: #2974B6FF; color: white;" onclick="Modal_show()">お支払い</p>'
											+ '</div>';
								} else if (data.result.enroll.enrollType === 2) {
									ov = '待审核'
								} else if (data.result.enroll.enrollType === 3) {
									ov = '試合準備中'
								} else if (data.result.enroll.enrollType === 4) {
									//ov = '审核失败';
									ov = '<p>审核失败</p>'
											+ '<div style="margin-left: 10px;">'
											+ '<label for="filehei">'
											+ '<p class="ivu-btn"'
											+'style="background: #2974B6FF; color: white;">上传凭证</p> <input '
											+ 'type="file" id="filehei" style="display: none;"'
											+ 'onchange="UploadImage(this.files[0])" />'
											+ '</label>' + '</div>';
								} else if (data.result.enroll.enrollType === 5) {
									ov = '取消済み'
								}
							}
							$("#isEnd").html(ov);
							vm.createTime = data.result.enroll.createTime;
							vm.matchName = data.result.match.matchName; // 赛事名称
							vm.enrollCost = '￥' + data.result.match.enrollCost; // 费用
							vm.matchTime = data.result.match.matchTime; // 比晒时间
							vm.matchPlace = data.result.match.matchPlace; // 地点
							vm.isEnd = ov; // 订单状态
							vm.integral = data.result.integral ? data.result.integral.integral
									: '--';//积分
							vm.ranking = data.result.integral ? data.result.integral.ranking
									: '--'; // 名次
							vm.paymentTime = data.result.enroll.paymentTime ? data.result.enroll.paymentTime
									: '--'; //付款时间
							vm.matchID = data.result.match.id;
							vm.userId = data.result.enroll.userId;
							vm.name = data.result.enroll.surname
									+ data.result.enroll.userName;
							vm.sex = data.result.enroll.sex == 1 ? '男' : '女'
							vm.phone = data.result.enroll.phone
							vm.birthday = data.result.enroll.birthday;
							vm.email = data.result.enroll.email
							vm.account = data.result.config.account
							vm.bankName = data.result.config.bankName
							vm.bank = data.result.config.bank
							vm.society = data.result.config.society
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
	//user/enroll/certificate
	function certificate() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/user/enroll/certificate",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"matchId" : vm.matchID,
				"certificateImage" : vm.evidence,
				"userId" : vm.userId
			}),
			success : function(data) {
				if (data.code === 200) {
					spop({
						template : '支付凭证上传成功,等待管理员审核',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					request();
					$("#Modal-Add").toggle(300);
					$(document.body).css({
						"overflow-x" : "auto",
						"overflow-y" : "auto"
					});
				} else if (data.code === 100005) {
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
	function UploadImage(file) {
		let entity = null;
		let formdata = new FormData();
		formdata.append("file", file)
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/file/upload",
			data : formdata,
			contentType : false,
			processData : false,
			async : false,
			success : function(data) {
				if (data.code === 200) {
					vm.evidence = data.result
					$(".label-2").css('background', 'url('+data.result+')');
					$(".label-2").css('background-size', '100% 100%');
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
		return entity;
	}
	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	$('.my-tab-h>p').click(function() {
		$('.my-tab-h>p:nth-child(2)').css('display', 'none')
		$(this).next().css('display', 'block');
	})

	$("#menuBar > dl > dd:nth-child(2)").css('background', '#2974B6').css(
			'color', 'white');
</script>
</html>
