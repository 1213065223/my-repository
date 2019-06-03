<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_Add_associationAffiche.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<title>添加协会公告</title>
<script>
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
		<div  class="associationAffiche">
			<h4 class="text-title" id="h4lable">添加协会公告</h4>
			<div class="flex-start">
				<p>标题</p>
				<input type="text" id="title"/>
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>介绍</p>
				<textarea id="introduce"></textarea>
			</div>
			<div class="flex-start content-div" style="align-items: flex-start;">
				<p>文本</p>
				<textarea class="content"
						style="width: 98%; height: 200px; visibility: hidden;"></textarea>
			</div>
			<div class="flex-between" >
				<button type="button" class="ivu-btn" onclick="cancel()">取消</button>
				<button type="button" class="ivu-btn ivu-btn-primary"
					onclick="insert()">提交</button>
			</div>
		</div>
	</div>
	<input type="file" id="file" style="display: none;"
		onchange="UploadImage(this.files[0])" />
</body>
<script>
console.log(window.location.search);
let url = window.location.search;
let id = null;
if (url.indexOf("?") !== -1) {
	  let str = url.substr(1);  
	  let strs = str.split("&");  
      console.log(strs)
      for(let i =0; i<strs.length;i++){
    	 let arr = strs[i].split("=");
    	 id = arr[1]
      }
}
console.log('id',id)
if (id) {
	$('#h4lable').val('编辑协会公告');
	$("#title").val('');
	$("#introduce").val('');
	//editor.insertHtml();
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
		let html = editor.html();
		if (!html || !$("#title").val() || !$("#introduce").val()) {
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
			url : "${pageContext.request.contextPath}/admin/association/announcement",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id": id,
				"title": $("#title").val(),
				"introduce": $("#introduce").val(),
				"content" : html
			}),
			success : function(data) {
				if (data.code === 200) {
					id = null;
					$("#title").val('');
					$("#introduce").val('');
					editor.html('');
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
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
			type : "post",
			async : true,
			url : "${pageContext.request.contextPath}/index/association",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					editor.html('')
					editor
							.insertHtml("<p>" + data.result.introduction
									+ "</p>");
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