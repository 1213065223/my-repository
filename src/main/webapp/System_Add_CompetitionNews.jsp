<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加赛事新闻</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_Add_CompetitionList.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />

<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
</head>
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
<body>
	<div class="Add_CompetitionList column-div">
		<div class="column-start Add_CompetitionList-div-1">
			<div class="flex-start">
				<p>标题图片</p>
				<label for="titleImage" class="row-div">
					<p style="margin-right: 20px;" class="ivu-btn">上传图片</p> <input type="file" id="titleImage" style="display: none;" onchange="TitleUploadImage(this.files[0])"/>
					<span id="titleImage-name"></span>
				</label>
			</div>
			<div class="flex-start">
				<p>标题</p>
				<input type="text" class="gd-input" style="width: 40%;" id="title" />
			</div>
			<div class="flex-start">
				<p>比赛名称</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="matchName" />
			</div>
			<div class="flex-start">
				<p>比赛地点</p>
				<input type="text" class="gd-input" style="width: 40%;" id="place" />
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>新闻简介</p>
				<textarea rows="3" cols="20" class="gd-input"
					style="width: 40%; height: 150px" id="profile"></textarea>
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>文本详情</p>
				<textarea class="content"
					style="width: 40%; height: 200px; visibility: hidden;"></textarea>
			</div>
			<div class="flex-start" style="width: 50%;">
				<div class="row-div" style="width: 100%;">
					<button class="ivu-btn" style="margin-right: 20px;"
						onclick="cancel()">取消</button>
					<button class="ivu-btn ivu-btn-primary" onclick="ok_click()">确定</button>
				</div>
			</div>
		</div>
		<input type="file" id="file" style="display: none;"
			onchange="UploadImage(this.files[0])" />
	</div>
</body>
<script type="text/javascript">
	function cancel() {
		editor.html('');
		$("#title").val('');
		$("#matchName").val('');
		$("#place").val('');
		$("#profile").val('');
		Imagesrc = null;
	};
	function ok_click() {
		insertRequest();
	};
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
		request()
	}
	function insertRequest() {
		$
				.ajax({
					type : "POST",
					async : true,
					url : "${pageContext.request.contextPath}/admin/match/news",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"id" : id,
						"title" : $("#title").val(),
						"matchName" : $("#matchName").val(),
						"place" : $("#place").val(),
						"profile" : $("#profile").val(),
						"titleImage" : Imagesrc,
						"content" : editor.html()
					}),
					success : function(data) {
						if (data.code === 200) {
							spop({
								template : '成功',
								group : 'submit-satus',
								style : 'success',
								autoclose : 5000
							});
							parent
									.$(window.parent.document)
									.find('.iframe')
									.attr('src',
											'http://localhost:9090/billiard/System_CompetitionNews.jsp');
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
		$.ajax({
			type : "get",
			async : true,
			url : "${pageContext.request.contextPath}/match/news/detail?nid="
					+ id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(res) {
				if (res.code === 200) {
					console.log=(res)
					editor.insertHtml(res.result.content);
					$("#title").val(res.result.title);
					$("#matchName").val(res.result.matchName);
					$("#place").val(res.result.place);
					$("#profile").val(res.result.profile);
					$("#content").val(res.result.content);
					let str = res.result.titleImage.split('/');
					$("#titleImage-name").text(str[str.length-1])
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
	let Imagesrc = null;
	function TitleUploadImage(file) {
		$("#titleImage-name").text(file.name)
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
					Imagesrc = data.result
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