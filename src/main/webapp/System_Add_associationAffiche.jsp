<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_Add_associationAffiche.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<title>添加协会公告</title>
<script>
	$.cookie('active-name', 'AssociationProfile');
	$.cookie('active-src', 'System_Add_associationAffiche');
	KindEditor.plugin('image', function(K) {
		var self = this, name = 'image';
		self.clickToolbar(name, function() {
			document.getElementById('file').click()
		});
	})
	var editor = null;
	KindEditor.ready(function(K) {
		editor = K.create('.content', {
			autoHeightMode : true,
			afterCreate : function() {
				this.loadPlugin('autoheight');
			}
		});
	});
</script>
</head>
<body>
	<div>
		<div class="menuBar" id="menuBar">
			<iframe src="menuBar.jsp"
				class="iframe" id="iframe" scrolling="yes" frameborder="0"></iframe>
		</div>
		<div class="ivu-layout-content ivu-layout" style="margin-left: 200px;"
			id="mvvm">
			<div class="layout-header"></div>
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">协会管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">添加协会公告</span>
						<span class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>
				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<div style="width: 100%;" class="column-center">
						<h2 class="text-title" id="h4lable">添加协会公告</h2>
						<form class="form-model column-start" label-width="100"
							id="form-model" style="width: 100%;">
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>标题</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="title" autocomplete="off" spellcheck="false"
										v-model="title" />
								</div>
							</div>
							<div class="form-model-div flex-start"
								style="height: 100px; margin-top: 20px; align-items: flex-start;">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>介绍</span>
								</p>
								<div class="form-input-parent">
									<textarea type="text" class="ivu-input ivu-input-default"
										id="introduce" v-model="introduce"
										style="resize: none; height: 100px;"></textarea>
								</div>
							</div>
							<div class="form-model-div flex-start"
								style="height: auto; margin-top: 20px; align-items: flex-start;">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>富文本</span>
								</p>
								<div class="form-input-parent" style="width: 50%;">
									<textarea class="content"
										style="width: 100%; height: 200px; visibility: hidden;"></textarea>
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span"></span> <span></span>
								</p>
								<div class="form-input-parent flex-around">
									<button type="button"
										class="ivu-btn ivu-btn-text ivu-btn-large" onclick="cancel()">取消</button>
									<button type="button"
										class="ivu-btn ivu-btn-primary ivu-btn-large"
										onclick="Modal_ok()">确定</button>
								</div>
							</div>
						</form>

					</div>
				</div>

			</div>

		</div>
		<input type="file" id="file" style="display: none;"
			onchange="UploadImage(this.files[0])" />
</body>
<script>
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			id : null,
			title : null,
			introduce : null,
			content : null
		}
	});
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
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
		vm.id = id;
		request();
	}
	function cancel() {
		editor.html('');
		$("#title").val('');
		$("#introduce").val('');
	};
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

	let RegExpEntity = {
		title : {
			RegExptype : 'string',
			message : '请输入标题',
			trigger : 'blur',
			id : 'title'
		},
		introduce : {
			RegExptype : 'string',
			message : '请输入介绍',
			trigger : 'blur',
			id : 'introduce'
		}
	}
	for ( let i in RegExpEntity) {
		if (i !== 'winning') {
			RegExpEntity[i].Event = new formRegExp(RegExpEntity[i],
					'form-model');
		}
	}
	function Modal_ok() {
		let entity = {
			id : vm.id,
			title : vm.title,
			introduce : vm.introduce,
			content : editor.html()
		}
		let boo = true;
		if (!entity.title) {
			boo = false;
			RegExpEntity.title.Event.label_error(document
					.getElementById('title'));
		}
		if (!entity.introduce) {
			boo = false;
			RegExpEntity.title.Event.label_error(document
					.getElementById('introduce'));
		}
		if (!entity.content) {
			boo = false;
			spop({
				template : '请输入文本内容在进行上传',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
		}
		if (boo) {
			insert();
		}
	};
	function insert() {
		let html = editor.html();
		$
				.ajax({
					type : "POST",
					async : true,
					url : "${pageContext.request.contextPath}/admin/association/announcement",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"id" : id,
						"title" : $("#title").val(),
						"introduce" : $("#introduce").val(),
						"content" : html
					}),
					success : function(data) {
						if (data.code === 200) {
							spop({
								template : '成功',
								group : 'submit-satus',
								style : 'success',
								autoclose : 5000
							});
							window.location.href = 'System_associationAffiche.jsp';
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

	function request() {
		/* 	let html = editor.html() */
		$
				.ajax({
					type : "get",
					async : true,
					url : "${pageContext.request.contextPath}/index/announcement/detail?aid="
							+ id,
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(res) {
						if (res.code === 200) {
							editor.html('');
							$('#h4lable').text('编辑协会公告');
							$("#title").val(res.result.title);
							$("#introduce").val(res.result.introduce);
							editor.insertHtml(res.result.content);
							vm.title = res.result.title
							vm.introduce = res.result.introduce
						}else if (res.code === 100005) {
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