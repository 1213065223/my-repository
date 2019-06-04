<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加赛事回顾</title>
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
				<p>比赛名称</p>
				<input type="text" class="gd-input" style="width: 40%;" id="title" />
			</div>
			<div class="flex-start">
				<p>参赛队伍-主</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="teamOneName" />
			</div>
			<div class="flex-start">
				<p>参赛队伍-次</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="teamTwoName" />
			</div>
			<div class="flex-start">
				<p>比赛地点</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="coursePlace" />
			</div>
			<div class="flex-start">
				<p>比赛时间</p>
				<div class="jeinpbox">
					<input type="text" class="jeinput" id="courseTime"
						autocomplete="off" placeholder="请选择比赛时间">
				</div>
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
	jeDate("#courseTime", {
		format : "YYYY-MM-DD hh:mm:ss"
	});
	function cancel() {
		editor.html('');
		$("#title").val('');
		$("#courseTime").val('');
		$("#coursePlace").val('');
		$("#teamOneName").val('');
		$("#teamTwoName").val('');
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
					url : "${pageContext.request.contextPath}/admin/match/review",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"title" : $("#title").val(),
						"courseTime" : $("#courseTime").val(),
						"coursePlace" : $("#coursePlace").val(),
						"teamOneName" : $("#teamOneName").val(),
						"teamTwoName" : $("#teamTwoName").val(),
						"matchDetail" : editor.html()
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
											'http://localhost:9090/billiard/System_EventReview.jsp');
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
			url : "${pageContext.request.contextPath}/match/detail?mid=" + id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(res) {
				if (res.code === 200) {
					editor.insertHtml(res.result.details);
					$("#title").val(res.result.title);
					$("#courseTime").val(res.result.courseTime);
					$("#coursePlace").val(res.result.coursePlace);
					$("#teamOneName").val(res.result.teamOneName);
					$("#teamTwoName").val(res.result.teamTwoName);
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
</script>
</html>