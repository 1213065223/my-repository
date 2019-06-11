<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>后台管理</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div>
		<div class="menuBar" id="menuBar">
			<dl class="column-div">
				<dt active-name="System_admin">
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>管理员管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd src='System_add_admin'>
					<span>管理员列表</span>
				</dd>
				<dt active-name='AdvertisingSet'>
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>广告管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd src='System_AdvertisingSet'>
					<span>广告设置</span>
				</dd>
				<dt>
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>协会管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd src='System_AssociationProfile'>
					<span>协会简介</span>
				</dd>
				<dd src='System_associationAffiche'>
					<span>协会公告</span>
				</dd>
				<dd src='System_Add_associationAffiche'>
					<span>添加协会公告</span>
				</dd>
				<dt>
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>赛事管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd src='System_CompetitionList'>
					<span>赛事列表</span>
				</dd>
				<dd src='System_applyManage'>
					<span>报名管理</span>
				</dd>
				<dd src='System_CompetitionNews'>
					<span>赛事新闻</span>
				</dd>
				<dd src='System_EventReview'>
					<span>赛事回顾</span>
				</dd>
				<dt active-name="With-integral">
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>排名管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd src='System_standings'>
					<span>战绩排名管理</span>
				</dd>
				<dd src='System_integral'>
					<span>积分排名管理</span>
				</dd>
				<dt active-name="VIP-List">
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>会员管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd src='System_VIP-List'> 
					<span>会员列表</span>
				</dd>
				<dt active-name="SiteSettings">
					<i class="ivu-icon ivu-icon-ios-contact-outline"></i> <span>系统管理</span>
					<i class="ivu-icon ivu-icon-ios-arrow-up"></i>
				</dt>
				<dd  src='System_SiteSettings'>
					<span>网站设置</span>
				</dd>
			</dl>
		</div>
	</div>


</body>
<script type="text/javascript">
	$(function() {
		let active_name = $.cookie('active-name');
		let active_src = $.cookie('active-src');
	 // style="color: white; background: #2b85e4;"
		$("#menuBar > dl > dd").hide();
		if (active_name && active_src) {
			let dl = $("#menuBar> dl > dt[active-name=" + active_name + "]");
			dl.nextUntil("#menuBar > dl >dt").show();
			dl.children('i:last-child').attr('class',
					'ivu-icon ivu-icon-ios-arrow-up');
			$('dd[src=' + active_src + ']').css('color', 'white').css(
					'background', '#2b85e4');
		}
		$("#menuBar> dl > dt").click(
				function() {
					if ($(this).nextUntil("#menuBar > dl >dt").eq(0).css(
							'display') === 'none') {
						$(this).children('i:last-child').attr('class',
								'ivu-icon ivu-icon-ios-arrow-down')
						$(this).nextUntil("#menuBar > dl >dt").slideDown(300);
					} else {
						$(this).children('i:last-child').attr('class',
								'ivu-icon ivu-icon-ios-arrow-up')
						$(this).nextUntil("#menuBar > dl >dt").slideUp(300);
					}
				});

		$("#menuBar > dl > dd").click(function() {
			//		$("#menuBar > dl > dd").css('background', '#363E4F').css('color', 'hsla(0, 0%, 100%, .7)');
			//		$("#menuBar > dl > dd").css('');
			//		$(this).css('background', '#2b85e4').css('color', 'white');dd-choice
			//		$(this).attr('class','dd-choice');
			if ($(this).attr('src')) {
				//$('iframe').eq(0).attr('src', 'http://localhost:9090/billiard/' + $(this).attr('src') + '.jsp') parent.window.
				parent.window.location.href = $(this).attr('src') + '.jsp';
			}

		})
		let height = window.innerHeight;
		$('#menuBar').css('height', height + 'px');
		window.addEventListener('resize', function() {
			let height = window.innerHeight;
			$('#menuBar').css('height', height + 'px');
		});
	})
</script>
</html>
