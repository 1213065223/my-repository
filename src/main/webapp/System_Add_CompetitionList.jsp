<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加赛事</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />

<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
</head>
<script>
	$.cookie('active-name', 'CompetitionList');
	$.cookie('active-src', 'System_CompetitionList');
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
			<iframe src="menuBar.jsp" class="iframe" id="iframe" scrolling="yes"
				frameborder="0"></iframe>
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
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">赛事管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">添加赛事</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>
				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<div style="width: 100%;" class="column-div">
						<form class="form-model column-start" label-width="100"
							id="form-model" style="width: 100%;">
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>标题图片</span>
								</p>
								<div class="form-input-parent flex-start">
									<label for="result" class="row-div" style="width: 100px">
										<p style="margin-right: 20px;" class="ivu-btn">上传图片</p> <input
										type="file" id="result" style="display: none;"
										onchange="TitleUploadImage(this.files[0])" />
									</label> <span id="titleImage-name"></span>

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
									<span class="form-span">*</span> <span>组织机构</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="organization" autocomplete="off" spellcheck="false"
										v-model="organization" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛积分</span>
								</p>
								<div class="form-input-parent">
									<input type="number" class="ivu-input ivu-input-default"
										id="enrollCost" autocomplete="off" spellcheck="false"
										v-model="enrollCost" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛地点</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="matchPlace" autocomplete="off" spellcheck="false"
										v-model="matchPlace" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛项目内容</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="matchContent" autocomplete="off" spellcheck="false"
										v-model="matchContent" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛规则</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="planning" autocomplete="off" spellcheck="false"
										v-model="planning" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>日程安排</span>
								</p>
								<div class="form-input-parent jeinpbox">
									<input type="text" class="ivu-input ivu-input-default"
										id="schedule" autocomplete="off" spellcheck="false"
										v-model="schedule" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛日期</span>
								</p>
								<div class="form-input-parent jeinpbox">
									<input type="text" readonly
										class="ivu-input ivu-input-default jeinput" id="timeQuantum"
										autocomplete="off" spellcheck="false" v-model="timeQuantum" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>比赛时间</span>
								</p>
								<div class="form-input-parent jeinpbox">
									<input type="text" readonly
										class="ivu-input ivu-input-default jeinput" id="matchTime"
										autocomplete="off" spellcheck="false" v-model="matchTime" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>开放报名时间</span>
								</p>
								<div class="form-input-parent jeinpbox">
									<input type="text" readonly
										class="ivu-input ivu-input-default jeinput" id="enrollTime"
										autocomplete="off" spellcheck="false" v-model="enrollTime" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>报名截止时间</span>
								</p>
								<div class="form-input-parent jeinpbox">
									<input type="text" readonly
										class="ivu-input ivu-input-default jeinput" id="enrollTimeEnd"
										autocomplete="off" spellcheck="false" v-model="enrollTimeEnd" />
								</div>
							</div>

							<div class="form-model-div flex-start"
								style="height: auto; margin-top: 20px; margin-bottom: 20px; align-items: flex-start;">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>文本详情</span>
								</p>
								<div class="form-input-parent" style="width: 60%">
									<div>
										<textarea class="content"
											style="width: 100%; height: 350px; visibility: hidden;"></textarea>
									</div>
									<span class="form-message" id="details"></span>
								</div>
							</div>
							<div class="form-model-div">
								<div class="row-div" style="width: 40%">
									<button type="button" class="ivu-btn"
										style="margin-right: 20px;" onclick="cancel()">取消</button>
									<button type="button" class="ivu-btn ivu-btn-primary"
										onclick="modle_click()">确定</button>
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
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			result : null,
			matchName : '',
			organization : '',
			matchContent : '',
			matchTime : '',
			matchPlace : '',
			planning : '',
			schedule : '',
			enrollTime : '',
			enrollTimeEnd : '',
			timeQuantum : '',
			enrollCost : '',
			details : ''
		}
	});
	jeDate("#timeQuantum", {
		format : "YYYY年MM月DD日",
		multiPane : false,
		range : " - ",
		donefun : function(obj) {
			RegExpEntity.timeQuantum.Event.onceEvent();
			vm.timeQuantum = obj.val;
		}
	});
	jeDate("#matchTime", {
		format : "YYYY-MM-DD hh:mm:ss",
		donefun : function(obj) {
			RegExpEntity.matchTime.Event.onceEvent();
			vm.matchTime = obj.val;
		}
	});
	jeDate("#enrollTime", {
		format : "YYYY-MM-DD hh:mm:ss",
		donefun : function(obj) {
			RegExpEntity.enrollTime.Event.onceEvent();
			vm.enrollTime = obj.val;
		}
	});
	jeDate("#enrollTimeEnd", {
		format : "YYYY-MM-DD hh:mm:ss",
		donefun : function(obj) {
			RegExpEntity.enrollTimeEnd.Event.onceEvent();
			vm.enrollTimeEnd = obj.val;
		}
	});
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
	function cancel() {
		editor.html('');
		for ( let i in vm._data) {
			vm._data[i] = ''
		}
		/* $("#matchName").val('');
		$("#organization").val('');
		$("#matchContent").val('');
		$("#matchTime").val('');
		$("#matchPlace").val('');
		$("#planning").val('');
		$("#schedule").val('');
		$("#enrollTime").val('');
		$("#enrollTimeEnd").val('');
		$("#timeQuantum").val('');
		$("#enrollCost").val(''); */
	};

	let RegExpEntity = {
			result : {
			RegExptype : 'string',
			message : '请上传图片',
			trigger : 'change',
			id : 'result'
		},
		matchName : {
			RegExptype : 'string',
			message : '请输入比赛名次',
			trigger : 'blur',
			id : 'matchName'
		},
		organization : {
			RegExptype : 'string',
			message : '请选择比赛时间',
			trigger : 'blur',
			id : 'organization'
		},
		matchContent : {
			RegExptype : 'string',
			message : '请输入比赛积分',
			trigger : 'blur',
			id : 'matchContent'
		},
		matchTime : {
			RegExptype : 'string',
			message : '请选择比赛',
			trigger : 'blur',
			id : 'matchTime'
		},
		matchPlace : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'matchPlace'
		},
		planning : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'planning'
		},
		schedule : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'schedule'
		},
		enrollTime : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'enrollTime'
		},
		enrollTimeEnd : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'enrollTimeEnd'
		},
		timeQuantum : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'timeQuantum'
		},
		enrollCost : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'blur',
			id : 'enrollCost'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function modle_click() {
		vm.details = editor.html();
		let entity = vm._data;
		let boo = true;
		for ( let i in entity) {
			if (!entity[i] && i !== 'details') {
				try {
					RegExpEntity[i].Event.label_error(document
							.getElementById(i));
				} catch (err) {
					console.log(i)
				}
				boo = false;
			}
		}
		if (!vm.details) {
			$("#details").html('请输入富文本内容');
			boo = false;
		} else {
			$("#details").html('');
		}
		if (id && boo) {
			updateRequest();
		} else if (boo) {
			insertRequest();
		}
	}
	function insertRequest() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match",
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
					window.location.href = 'System_CompetitionList.jsp'
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

	function updateRequest() {
		let entity = vm._data
		entity.id = id
		entity.details = editor.html()
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/update",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(entity),
			success : function(data) {
				if (data.code === 200) {
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					window.location.href = 'System_CompetitionList.jsp'
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
					for ( let i in vm._data) {
						vm._data[i] = res.result[i]
					}
					vm.result = res.result.result
					$("#titleImage-name").text(res.result.result)
					/* $("#matchName").val(res.result.matchName);
					$("#organization").val(res.result.organization);
					$("#matchContent").val(res.result.matchContent);
					$("#matchTime").val(res.result.matchTime);
					$("#matchPlace").val(res.result.matchPlace);
					$("#planning").val(res.result.planning);
					$("#schedule").val(res.result.schedule);
					$("#enrollTime").val(res.result.enrollTime);
					$("#enrollTimeEnd").val(res.result.enrollTimeEnd);
					$("#timeQuantum").val(res.result.timeQuantum);
					$("#enrollCost").val(res.result.enrollCost); */
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
					vm.result = data.result
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
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}
</script>
</html>