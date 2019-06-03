<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>后台管理</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div>
		<div class="menuBar" id="menuBar">
			<dl class="column-div">
				<dt>
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>管理员管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</dt>
				<dd src='System_add_admin'>
					<span>管理员列表</span>
				</dd>
				<dt>
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>广告管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</dt>
				<dd src='System_AdvertisingSet'>
					<span>广告设置</span>
				</dd>
				<dt >
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>协会管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
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
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>赛事管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</dt>
				<dd>
					<span>赛事管理</span>
				</dd>
				<dd>
					<span>报名管理</span>
				</dd>
				<dd>
					<span>赛事新闻</span>
				</dd>
				<dd>
					<span>赛事回顾</span>
				</dd>
				<dt>
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>赛事管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</dt>
				<dd>
					<span>赛事管理</span>
				</dd>
				<dd>
					<span>报名管理</span>
				</dd>
				<dd>
					<span>赛事新闻</span>
				</dd>
				<dd>
					<span>赛事回顾</span>
				</dd>
				<dt>
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>赛事管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</dt>
				<dd>
					<span>赛事管理</span>
				</dd>
				<dd>
					<span>报名管理</span>
				</dd>
				<dd>
					<span>赛事新闻</span>
				</dd>
				<dd>
					<span>赛事回顾</span>
				</dd>
				<dt>
					<i class="fa fa-address-book" aria-hidden="true"></i> <span>赛事管理</span>
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</dt>
				<dd>
					<span>赛事管理</span>
				</dd>
				<dd>
					<span>报名管理</span>
				</dd>
				<dd>
					<span>赛事新闻</span>
				</dd>
				<dd>
					<span>赛事回顾</span>
				</dd>
			</dl>
		</div>


		<div class="Content">
			<div class="layout-header"></div>
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content">
				<div class="layout-breadcrumb">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li><a href="#">Library</a></li>
						<li class="active">Data</li>
					</ol>
				</div>

				<div class="ivu-card ivu-card-bordered" id="ivu-card-div">
					<iframe
						src="http://localhost:9090/billiard/System_Add_associationAffiche.jsp"
						class="iframe" scrolling="yes" frameborder="0"></iframe>
				</div>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">


</script>
</html>
