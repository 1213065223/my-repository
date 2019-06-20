<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加广告</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" href="jeui/css/jeui.css">
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
<script src="jeui/js/modules/jeSelect.js" charset="utf-8"></script>
</head>
<script>
	$.cookie('active-name', 'AdvertisingSet');
	$.cookie('active-src', 'System_AdvertisingSet');
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
				<div style="margin-right: 20px;" class="row-div">
					<p class="p-hover row-div" style="height: auto;margin-right: 20px;">
						<i class="ivu-icon ivu-icon-ios-contact-outline" style="font-size: 20px"></i>
						<span>{{user_name}}</span>
					</p>
					<p class="p-hover exit row-div" style="height: auto;">
						<i class="ivu-icon ivu-icon-ios-log-out" style="font-size: 20px"></i>
						<span>退出</span>
					</p>
				</div>
			</div>

			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">广告管理 </span>
						<span class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">添加广告</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<div style="width: 100%;" class="column-center">
						<form class="form-model column-start" label-width="100"
							id="form-model" style="width: 100%;">
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>广告图片</span>
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
									<span class="form-span">*</span> <span>选择位置</span>
								</p>
								<div class="form-input-parent" style="width: 20%;">
									<select class="je-select" v-model="insert.imageLocation"
										id="imageLocation">
										<option class="je-select-open" value="1" id="select-1">banner</option>
										<option class="je-select-open" value="2" id="select-2">理事</option>
										<option class="je-select-open" value="3" id="select-3">赞助商</option>
										<option class="je-select-open" value="4" id="select-4">赛事冠名广告位</option>
									</select>
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>连接方式</span>
								</p>
								<div class="form-input-parent flex-around" style="width: 20%;">
									<!-- <input type="email" class="ivu-input ivu-input-default" /> -->
									<label for="radio-1" class="row-div"> <span
										style="margin-right: 5px">超连接</span> <input type="radio"
										name="radio-name" id="radio-1" value="0" checked="checked" />
									</label> <label for="radio-2" class="row-div"> <span
										style="margin-right: 5px">富文本</span> <input type="radio"
										name="radio-name" id="radio-2" value="1" />
									</label>
								</div>
							</div>
							<div class="form-model-div flex-start" id="hyperlink">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>超链接</span>
								</p>
								<div class="form-input-parent" style="width: 30%;">
									<input type="text" class="ivu-input ivu-input-default"
										id="hrefUrl" autocomplete="off" spellcheck="false"
										v-model="insert.hrefUrl" />

								</div>
							</div>
							<div class="form-model-div flex-start" id="richText-p"
								style="height: auto; margin-top: 20px; margin-bottom: 10px; align-items: flex-start; display: none;">
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
	$.jeSelect("#imageLocation", {
		size : 8, //设置高度(个数)
		zIndex : 2099, //下拉弹层的层级高度
		currCls : "on",
		itemfun : function(elem, index, val) {
			vm.insert.imageLocation = index + 1
		}, //点击当前的回调，elem：当前Select的ID index：索引 val：选中的值
		success : null,
		sosList : false
	})
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name: "${admin_user.nickname}",
			insert : {
				imageUrl : '',
				hrefUrl : '',
				imageLocation : '1',
				jumpType : 0,
				isHidden : false
			},
			id : null,
			title : '',// 标题
			matchName : '',// 比赛名称
			place : '',// 比赛地点
			profile : '',//新闻简介
			titleImage : null, // 标题图片
			content : '' //文本详情
		}
	});
	$('input[name=radio-name]').click(function() {
		$('#richText-p').hide();
		$('#hyperlink').hide();
		vm.insert.jumpType = $(this).val();
		if ($(this).val() === '1') {
			$('#hyperlink').hide();
			$('#richText-p').show();
		} else {
			$('#hyperlink').show();
			$('#richText-p').hide();
		}
		;
	});
	let label_width = $("#form-model").attr('label-width');
	$(".form-p").css('width', label_width + 'px');

	function cancel() {
		editor.html('');
		window.location.href = "System_AdvertisingSet.jsp";
	};
	let RegExpEntity = {
		hrefUrl : {
			RegExptype : 'string',
			message : '请输入网站地址',
			trigger : 'blur',
			id : 'hrefUrl'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function label_error(vm, str) {
		let brother = vm.getElementsByTagName("span");
		if (!brother.length) {
			let span = document.createElement("span");
			span.innerText = str;
			span.setAttribute('class', 'form-message');
			vm.appendChild(span);
		}
	}
	function label_succeed(vm) {
		let brother = vm.getElementsByTagName("span");
		if (brother.length) {
			vm.removeChild(brother[0])
			vm.style.borderColor = '#dcdee2';
		}
	}
	function ok_click() {
		let boo = true;
		if (!vm.insert.imageUrl) {
			$("#titleImage-name").text("请上传图片");
			$("#titleImage-name").css("color", "red");
			boo = false;
		} else {
			$("#titleImage-name").text("");
			$("#titleImage-name").css("color", "#515a6e");
		}
		if (vm.insert.jumpType == 0 && !vm.insert.hrefUrl) {
			boo = false;
			RegExpEntity.hrefUrl.Event.label_error(document
					.getElementById('hrefUrl'), '请输入网站地址')
		}
		if (vm.insert.jumpType == 1 && !editor.html()) {
			boo = false;
			spop({
				template : '请填写富文本内容',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
		}
		if (boo)
			insertRequesr()
	};
	let url = window.location.search;
	if (url.indexOf("?") !== -1) {
		let str = url.substr(1);
		let strs = str.split("&");
		for (let i = 0; i < strs.length; i++) {
			let arr = strs[i].split("=");
			vm.id = arr[1];
			console.log(vm.id)
		}
	}
	if (vm.id) {
		request()
	}
	function insertRequesr() {
		let url = ''
		if (vm.id) {
			vm.insert.id = vm.id
			url = "/admin/index/update";
		} else {
			url = '/admin/index'
		}
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}" + url,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(vm.insert),
			success : function(data) {
				if (data.code === 200) {
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					window.location.href = "System_AdvertisingSet.jsp";
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
			url : "${pageContext.request.contextPath}/index/detail/" + vm.id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			success : function(res) {
				if (res.code === 200) {
					console.log(res)
					// je-select-open selected select-1
					vm.insert.imageLocation = '' + res.result.imageLocation
					$(".je-select-open").removeAttr("selected");
					$("#select-" + res.result.imageLocation).attr("selected",
							"selected");
					$('#imageLocation').next().text(
							res.result.imageLocationDetail)
					console.log();
					vm.insert.jumpType = res.result.jumpType;
					if (res.result.imageUrl) {
						vm.insert.imageUrl = res.result.imageUrl;
						$("#titleImage-name").text(res.result.imageUrl);
					}
					$('input[name=radio-name]').removeAttr("checked");
					if (vm.insert.jumpType == 0) {
						$('#radio-1').attr("checked", "checked");
						vm.insert.hrefUrl = res.result.hrefUrl;
						$('#hyperlink').show();
						$('#richText-p').hide();
					} else {
						$('#radio-2').attr("checked", "checked");
						editor.html(res.result.hrefUrl)
						$('#hyperlink').hide();
						$('#richText-p').show();
					}
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
					vm.insert.imageUrl = data.result
					$("#titleImage-name").text(file.name);
					$("#titleImage-name").css("color", "#515a6e");
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