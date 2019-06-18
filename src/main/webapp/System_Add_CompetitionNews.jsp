<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加赛事新闻</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />

<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
</head>
<script>
	$.cookie('active-name', 'CompetitionList');
	$.cookie('active-src', 'System_CompetitionNews');
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
	<div>
		<div class="menuBar" id="menuBar">
			<iframe src="menuBar.jsp"
				class="iframe" id="iframe" scrolling="yes" frameborder="0"></iframe>
		</div>
		<div class="ivu-layout-content ivu-layout" style="margin-left: 200px;"
			id="mvvm">
			<div class="layout-header flex-between">
				<div></div>
				<div style="margin-right: 20px;">
					<p class="p-hover exit row-div" style="height:auto;">
						<i class="ivu-icon ivu-icon-ios-log-out" style="font-size:20px"></i>
						<span>退出</span>
					</p>
				</div>
			</div>

			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">赛事管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">添加新闻</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<!-- 标题图片 新闻标题 比赛名称 比赛地点 新闻简介 文本详情 -->
					<div style="width: 100%;" class="column-center">
						<form class="form-model column-start" label-width="100"
							id="form-model" style="width: 100%;">
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>标题图片</span>
								</p>
								<div class="form-input-parent flex-start">
									<label for="titleImage" class="row-div" style="width: 100px">
										<p style="margin-right: 20px;" class="ivu-btn">上传图片</p> <input
										type="file" id="titleImage" style="display: none;"
										onchange="TitleUploadImage(this.files[0])" />
									</label> <span id="titleImage-name"></span>

								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>新闻标题</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="title" autocomplete="off" spellcheck="false"
										v-model="title" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛名称</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="matchName" autocomplete="off" spellcheck="false"
										v-model="matchName" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛地点</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="place" autocomplete="off" spellcheck="false"
										v-model="place" />
								</div>
							</div>
							<div class="form-model-div flex-start"
								style="height: auto; margin-top: 10px; align-items: flex-start;">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>新闻简介</span>
								</p>
								<div class="form-input-parent" >
									<!-- <input type="text" class="ivu-input ivu-input-default"
										id="profile" autocomplete="off" spellcheck="false"
										v-model="profile" /> -->
									<textarea rows="3" cols="20"
										class="ivu-input ivu-input-default"
										style="height: 150px; resize: none;" id="profile"
										v-model="profile"></textarea>
								</div>
							</div>
							<div class="form-model-div flex-start"
								style="height: auto; margin-top: 20px; margin-bottom: 10px; align-items: flex-start;">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>文本详情</span>
								</p>
								<div class="form-input-parent" style="width: 50%;">
									<textarea class="content"
										style="width: 100%; height: 200px; visibility: hidden;"></textarea>
									<span class="form-message" id="content"></span>
								</div>

							</div>
							<div class="flex-start" style="width: 50%;">
								<div class="row-div" style="width: 100%;">
									<button type="button" class="ivu-btn"
										style="margin-right: 20px;" onclick="cancel()">返回</button>
									<button type="button" class="ivu-btn ivu-btn-primary"
										onclick="ok_click()">确定</button>
								</div>
							</div>

						</form>
					</div>



				</div>


			</div>
		</div>



		<input type="file" id="file" style="display: none;"
			onchange="UploadImage(this.files[0])" />
	</div>
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			id : null,
			title : '',// 标题
			matchName : '',// 比赛名称
			place : '',// 比赛地点
			profile : '',//新闻简介
			titleImage : null, // 标题图片
			content : '', //文本详情
		}
	});
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}

	function cancel() {
		editor.html('');
		$("#title").val('');
		$("#matchName").val('');
		$("#place").val('');
		$("#profile").val('');
		Imagesrc = null;
		window.location.href = "System_Add_CompetitionNews.jsp";
	};
	let RegExpEntity = {
		titleImage : {
			RegExptype : 'string',
			message : '请上传图片',
			trigger : 'change',
			id : 'titleImage'
		},
		title : {
			RegExptype : 'string',
			message : '请输入新闻标题',
			trigger : 'blur',
			id : 'title'
		},
		matchName : {
			RegExptype : 'string',
			message : '请输入比赛名称',
			trigger : 'blur',
			id : 'matchName'
		},
		place : {
			RegExptype : 'string',
			message : '请输入比赛地点',
			trigger : 'blur',
			id : 'place'
		},
		profile : {
			RegExptype : 'string',
			message : '请输入新闻简介',
			trigger : 'blur',
			id : 'profile'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function ok_click() {
		vm.content = editor.html()
		let entity = {
			title : vm.title,// 标题 
			matchName : vm.matchName,// 比赛名称
			place : vm.place,// 比赛地点
			profile : vm.profile,//新闻简介
			titleImage : vm.titleImage, // 标题图片
			content : editor.html()
		}
		let boo = true;
		for ( let i in entity) {
			if (!entity[i] && i !== 'content') {
				boo = false;
				RegExpEntity[i].Event.label_error(document.getElementById(i));
			}
		}
		if (!entity.content) {
			$("#content").html('请输入文本内容');
			boo = false;
		} else {
			$("#content").html('');
		}
		if (boo) {
			insertRequest();
		}
	};
	let url = window.location.search;
	let id = null;
	if (url.indexOf("?") !== -1) {
		let str = url.substr(1);
		let strs = str.split("&");
		for (let i = 0; i < strs.length; i++) {
			let arr = strs[i].split("=");
			id = arr[1];
			vm.id = arr[1];
		}
	}
	if (id) {
		request()
	}
	function insertRequest() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/news",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(vm._data),
			success : function(data) {
				if (data.code === 200) {
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					window.location.href = 'System_CompetitionNews.jsp'
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
		$.ajax({
			type : "get",
			async : true,
			url : "${pageContext.request.contextPath}/match/news/detail?nid="
					+ vm.id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(res) {
				if (res.code === 200) {
					console.log = (res.result.current)
					vm.title = res.result.current.title;// 标题
					vm.matchName = res.result.current.matchName;// 比赛名称
					vm.place = res.result.current.place;// 比赛地点
					vm.profile = res.result.current.profile;//新闻简介
					vm.titleImage = res.result.current.titleImage; // 标题图片
					vm.content = res.result.current.content; //文本详情
					$("#titleImage-name").text(res.result.current.titleImage)
					editor.insertHtml(res.result.current.content);
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
					editor.appendHtml('<img src="'+data.result+'" />');
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
		return entity;
	}
	function TitleUploadImage(file) {
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
					vm.titleImage = data.result
					$("#titleImage-name").text(file.name)
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
</script>
</html>