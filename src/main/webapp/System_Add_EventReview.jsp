<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加赛事回顾</title>
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
	$.cookie('active-src', 'System_EventReview');
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
									<span class="form-span">*</span> <span>比赛名称</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="title" autocomplete="off" spellcheck="false"
										v-model="title" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>参赛队伍-主</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="teamOneName" autocomplete="off" spellcheck="false"
										v-model="teamOneName" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>参赛队伍-次</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="teamTwoName" autocomplete="off" spellcheck="false"
										v-model="teamTwoName" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛地点</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="coursePlace" autocomplete="off" spellcheck="false"
										v-model="coursePlace" />

								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛时间</span>
								</p>
								<div class="form-input-parent jeinpbox">
									<input type="text" readonly class="ivu-input ivu-input-default jeinput"
										id="courseTime" autocomplete="off" spellcheck="false"
										v-model="courseTime" />

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
										style="margin-right: 20px;" onclick="cancel()">取消</button>
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
</body>
<script type="text/javascript">
	jeDate("#courseTime", {
		format : "YYYY-MM-DD hh:mm:ss",
		donefun : function(obj) {
			RegExpEntity.courseTime.Event.onceEvent();
			vm.courseTime = obj.val;
		}
	});
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			id : null,
			title : '',// 标题 title
			teamOneName : '',// 参赛队伍-主
			teamTwoName : '',// 参赛队伍-次
			coursePlace : '',//比赛地点
			courseTime : null, // 比赛时间
			matchDetail : '', //文本详情
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
		vm.title = '';// 标题 
		vm.teamOneName = '';// 参赛队伍-主
		vm.teamTwoName = '';// 参赛队伍-次
		vm.coursePlace = '';//比赛地点
		vm.courseTime = ''; //比赛时间
	};
	let RegExpEntity = {
		title : {
			RegExptype : 'string',
			message : '请输入比赛名称',
			trigger : 'blur',
			id : 'title'
		},
		teamOneName : {
			RegExptype : 'string',
			message : '请输入参赛队伍-主',
			trigger : 'blur',
			id : 'teamOneName'
		},
		teamTwoName : {
			RegExptype : 'string',
			message : '请输入参赛队伍-次',
			trigger : 'blur',
			id : 'teamTwoName'
		},
		coursePlace : {
			RegExptype : 'string',
			message : '请输入比赛地点',
			trigger : 'blur',
			id : 'coursePlace'
		},
		courseTime : {
			RegExptype : 'string',
			message : '请输入比赛时间',
			trigger : 'blur',
			id : 'courseTime'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function ok_click() {
		vm.matchDetail = editor.html()
		let entity = {
			title : vm.title,// 标题 
			teamOneName : vm.teamOneName,// 参赛队伍-主
			teamTwoName : vm.teamTwoName,// 参赛队伍-次
			coursePlace : vm.coursePlace,//比赛地点
			courseTime : vm.courseTime //比赛时间
		}
		let boo = true;
		for ( let i in entity) {
			if (!entity[i]) {
				boo = false;
				RegExpEntity[i].Event.label_error(document.getElementById(i));
			}
		}
		if (!vm.matchDetail) {
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
			url : "${pageContext.request.contextPath}/admin/match/review",
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
					window.location.href = 'System_EventReview.jsp'
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
			url : "${pageContext.request.contextPath}/match/review/detail?cid="
					+ id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(res) {
				if (res.code === 200) {
					editor.insertHtml(res.result.current.matchDetail);
					vm.matchDetail = res.result.current.matchDetail;
					vm.title = res.result.current.title;// 标题 
					vm.teamOneName = res.result.current.teamOneName;// 参赛队伍-主
					vm.teamTwoName = res.result.current.teamTwoName;// 参赛队伍-次
					vm.coursePlace = res.result.current.coursePlace;//比赛地点
					vm.courseTime = res.result.current.courseTime; //比赛时间
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
</script>
</html>