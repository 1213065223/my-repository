<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>协会简介</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_AssociationProfile.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script type="text/javascript">
	$.cookie('active-name', 'AssociationProfile');
	$.cookie('active-src', 'System_AssociationProfile');
	KindEditor.plugin('image', function(K) {
		var self = this, name = 'image';
		self.clickToolbar(name, function() {
			document.getElementById('file').click()
		});
	})
	var editor = null;
	KindEditor.ready(function(K) {
		editor = K.create('textarea[name="content"]', {
			autoHeightMode : true,
			afterCreate : function() {
				this.loadPlugin('autoheight');
			}
		});
	});
</script>
</head>
<body id="mvvm">
	<div>
		<div class="menuBar" id="menuBar">
			<iframe src="menuBar.jsp" class="iframe" id="iframe" scrolling="yes"
				frameborder="0"></iframe>
		</div>
		<div class="ivu-layout-content ivu-layout" style="margin-left: 200px;"
			id="mvvm">
			<div class="layout-header flex-between">
				<div></div>
				<div style="margin-right: 20px;" class="row-div">
					<p class="p-hover row-div"
						style="height: auto; margin-right: 20px;">
						<i class="ivu-icon ivu-icon-ios-contact-outline"
							style="font-size: 20px"></i> <span>{{user_name}}</span>
					</p>
					<p class="p-hover exit row-div" style="height: auto;">
						<i class="ivu-icon ivu-icon-ios-log-out" style="font-size: 20px"></i>
						<span>退出</span>
					</p>
				</div>
			</div>
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">协会管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">协会简介</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<h1 class="text-title">协会简介</h1>
					<div style="width: 100%;" class="column-center">
						<form class="form-model column-start" label-width="120"
							id="form-model" style="width: 80%;">
							<div class="row-div content-div">
								<form class="content-form">
									<textarea name="content"
										style="width: 100%; height: 400px; visibility: hidden;"></textarea>
								</form>
							</div>

							<div class="form-model-div row-div"
								style="width: 30%; margin: auto;">
								<button type="button"
									class="ivu-btn ivu-btn-primary ivu-btn-small"
									style="width: 80%;" onclick="insert()">保存</button>
							</div>
						</form>
					</div>



				</div>
			</div>
		</div>
	</div>
	<!-- 提示框 -->
	<div class="v-transfer-dom" id="transfer-dom" style="display: none;">
		<div class="ivu-modal-mask" style="z-index: 1003;"></div>
		<div class="ivu-modal-wrap" style="z-index: 1003;">
			<div class="ivu-modal" style="width: 416px;">
				<div class="ivu-modal-content">
					<div class="ivu-modal-body">
						<div class="ivu-modal-confirm">
							<div class="ivu-modal-confirm-head">
								<div
									class="ivu-modal-confirm-head-icon ivu-modal-confirm-head-icon-warning">
									<i class="ivu-icon ivu-icon-ios-alert"></i>
								</div>
								<div class="ivu-modal-confirm-head-title">警告</div>
							</div>
							<div class="ivu-modal-confirm-body">
								<div>
									<p>确定要保存信息吗?</p>
								</div>
							</div>
							<div class="ivu-modal-confirm-footer">
								<button type="button" class="ivu-btn ivu-btn-small"
									style="margin-right: 5px;" onclick="transfer_cancel()">取消</button>
								<button type="button"
									class="ivu-btn ivu-btn-primary ivu-btn-large"
									onclick="transfer_ok()">确定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="file" id="file" style="display: none;"
		onchange="UploadImage(this.files[0])" />
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name : "${admin_user.nickname}",
		}
	});
	function transfer_ok() {

	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};
	request();
	function request() {
		/* 	let html = editor.html() */
		$.ajax({
			type : "get",
			async : true,
			url : "${pageContext.request.contextPath}/index/association",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					editor.html('')
					editor.insertHtml(data.result.introduction);
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
	function insert() {
		let html = editor.html()
		if (!html) {
			spop({
				template : '请输入文本内容在进行上传',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			return;
		}
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/association",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"introduction" : html
			}),
			success : function(data) {
				if (data.code === 200) {
					request();
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
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
					editor.appendHtml('<img src="'+data.result+'" />');
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
</script>
</html>
