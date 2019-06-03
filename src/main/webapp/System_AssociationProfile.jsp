<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_AssociationProfile.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<title>协会简介</title>
<script>
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
<body>
	<div>
		<h4 class="text-title">协会简介</h4>
		<div class="row-div content-div">
			<form class="content-form">
				<textarea name="content"
					style="width: 100%; height: 400px; visibility: hidden;"></textarea>
			</form>
		</div>
		<div class="flex-between content-div-2">
			<button type="button" class="ivu-btn" onclick="cancel()">取消</button>
			<button type="button" class="ivu-btn ivu-btn-primary"
				onclick="insert()">提交</button>
		</div>
	</div>
	<input type="file" id="file" style="display: none;"
		onchange="UploadImage(this.files[0])" />
</body>
<script>
	request();
	function cancel() {
		editor.html('');
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
		$.ajax({
			type : "get",
			async : true,
			url : "${pageContext.request.contextPath}/index/association",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					editor.html('')
					editor.insertHtml("<p>"+data.result.introduction+"</p>");
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