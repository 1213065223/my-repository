<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>广告管理</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" href="jeui/css/jeui.css">
<link rel="stylesheet" type="text/css"
	href="css/System_AdvertisingSet.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="jeui/js/modules/jeSelect.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
</head>
<script type="text/javascript">
	$.cookie('active-name', 'AdvertisingSet');
	$.cookie('active-src', 'System_AdvertisingSet');
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
<body>
	<div>
		<div class="menuBar" id="menuBar">
			<iframe src="menuBar.jsp"
				class="iframe" scrolling="yes" frameborder="0"></iframe>
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
					</span> <span> <span class="ivu-breadcrumb-item-link">广告管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">广告设置</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">


					<form autocomplete="off"
						class="ivu-form ivu-form-label-right ivu-form-inline">
						<div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content">
								<button type="button" class="ivu-btn ivu-btn-warning"
									onclick="Modal_show()">
									<span>添加广告</span>
								</button>
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">图片位置</p>
								<select class="je-select" v-model="type" id="type">
									<option class="je-select-open" value="0">全部</option>
									<option class="je-select-open" value="1">banner</option>
									<option class="je-select-open" value="2">理事</option>
									<option class="je-select-open" value="3">赞助商</option>
									<option class="je-select-open" value="4">赛事冠名广告位</option>
								</select>
							</div>
						</div>
						<div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content" style="width: 200px">
								<button type="button" class="ivu-btn ivu-btn-primary"
									onclick="Request()">
									<span>查询</span>
								</button>
							</div>
						</div>
					</form>
					<div class="ivu-table-body">
						<table cellspacing="0" cellpadding="0" border="0"
							style="width: 100%" class="ivu-table ivu-table-border">
							<tbody class="ivu-table-tbody" id="tbody">
								<tr class="ivu-table-row">
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">图片</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">图片位置</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">连接方式</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">状态</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">创建时间</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">操作</div>
									</th>
								</tr>
								<tr class="ivu-table-row">
									<td class="ivu-table-column-center" colspan="7">
										<div class="ivu-table-cell">没有数据</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="zxf_pagediv"></div>


					<!-- 提示框 -->
					<div class="v-transfer-dom" id="transfer-dom"
						style="display: none;">
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
													<p>{{transfer}}</p>
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
					<!-- Modal框 -->
					<div class="v-transfer-dom" id="Modal-Add" style="display: none;">
						<div class="ivu-modal-mask" style="z-index: 1002;"></div>
						<div class="ivu-modal-wrap" style="z-index: 1002;">
							<div class="ivu-modal" style="width: 520px;">
								<div class="ivu-modal-content">
									<a class="ivu-modal-close" onclick="Modal_cancel()"><i
										class="ivu-icon ivu-icon-ios-close"></i></a>
									<div class="ivu-modal-header">
										<div class="ivu-modal-header-inner">{{Add_header}}</div>
									</div>
									<div class="ivu-modal-body">
										<div style="width: 100%;" class="column-center">
											<form class="form-model column-start" label-width="100"
												id="form-model" style="width: 100%;">
												<div class="form-model-div flex-start" >
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>添加图片</span>
													</p>
													<div class="form-input-parent" id="imageUrl">
														<label for="file" class="flex-start">
															<p class="ivu-btn ivu-btn-primary ivu-btn-large">上传图片</p>
															<input type="file" id="file" style="display: none;"
															onchange="file_change(this.files[0])" />
														</label>
													</div>
													<span style="width: 70%; margin-left: 10px;">{{image_name}}</span>
												</div>
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>选择位置</span>
													</p>
													<div class="form-input-parent" style="width: 100%;">
														<select class="je-select" v-model="insert.imageLocation"
															id="imageLocation">
															<option class="je-select-open" value="1">banner</option>
															<option class="je-select-open" value="2">理事</option>
															<option class="je-select-open" value="3">赞助商</option>
															<option class="je-select-open" value="4">赛事冠名广告位</option>
														</select>
													</div>
												</div>
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>连接方式</span>
													</p>
													<div class="form-input-parent flex-around" style="width: 100%;">
														<!-- <input type="email" class="ivu-input ivu-input-default" /> -->
														<label for="radio-1" class="row-div"> <span
															style="margin-right: 5px">超连接</span> <input type="radio"
															name="radio-name" id="radio-1" value="1"
															checked="checked" />
														</label> <label for="radio-2" class="row-div"> <span
															style="margin-right: 5px">富文本</span> <input type="radio"
															name="radio-name" id="radio-2" value="0" />
														</label>
													</div>
												</div>
												<div class="form-model-div flex-start" id="hyperlink">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>超链接</span>
													</p>
													<div class="form-input-parent" style="width: 100%;">
														<input type="text" class="ivu-input ivu-input-default"
															id="hrefUrl" autocomplete="off" spellcheck="false" v-model="insert.hrefUrl" />
															
													</div>
												</div>
												<div class="form-model-div flex-start"
													style="align-items: flex-start; min-height: 200px; margin-top: 15px; display: none;"
													id="richText-p">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>富文本</span>
													</p>
													<div class="form-input-parent" style="width: 100%;">
														<form>
															<textarea name="content" style="width: 100%;"
																id="richText"></textarea>
														</form>
														<span class="form-message" id="richText-d"></span>
													</div>
												</div>

											</form>
										</div>
									</div>
									<div class="ivu-modal-footer">
										<button type="button"
											class="ivu-btn ivu-btn-text ivu-btn-large"
											onclick="Modal_cancel()">取消</button>
										<button type="button"
											class="ivu-btn ivu-btn-primary ivu-btn-large"
											onclick="Modal_ok()">确定</button>
									</div>
								</div>

							</div>
						</div>
					</div>



				</div>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">
	$.jeSelect("#imageLocation", {
		size : 8, //设置高度(个数)
		zIndex : 2099, //下拉弹层的层级高度
		currCls : "on",
		itemfun : function(elem, index, val) {
			console.log(elem, index, val)
		}, //点击当前的回调，elem：当前Select的ID index：索引 val：选中的值
		success : null,
		sosList : false
	})
	$.jeSelect("#type", {
		size : 8, //设置高度(个数)
		zIndex : 2099, //下拉弹层的层级高度
		itemfun : function(elem, index, val) {
			let arr = [ '', 1, 2, 3, 4 ]
			let arrList = [ 1, 2, 3, 4 ]
			if (elem.attr('id') === 'type') {
				vm.type = arr[index]
			} else {
				vm.insert.imageLocation = arrList[index]
			}
		}, //点击当前的回调，elem：当前Select的ID index：索引 val：选中的值
		success : null,
		sosList : false
	})

	var vm = new MVVM({
		el : '#mvvm',
		data : {
			Add_header : '添加广告',
			size : 10,
			pageNum : 1,
			file : null,
			table : [],
			type : '',
			transfer : '确定要删除吗?',
			state : null,
			delete_id : null,
			image_name : '',
			insertType : 1,
			insert : {
				imageUrl : '',
				hrefUrl : '',
				imageLocation : '1',
				jumpType : 0,
				isHidden : false
			}
		}
	});
	$(".zxf_pagediv").createPage({
		pageNum : 1,
		current : 1,
		total : 0,
		backfun : function(e) {
			vm.pageNum = e.current;
			Request();
		}
	});
	$('input[name=radio-name]').click(function() {
		if ($(this).val() === '1') {
			$('#richText-p').hide();
			$('#hyperlink').show();
			vm.insert.jumpType = 0
		} else {
			$('#hyperlink').hide();
			$('#richText-p').show();
			vm.insert.jumpType = 1
		}
		;
	});
	function file_change(file) {
		label_succeed(document.getElementById('imageUrl'))
		let reader = new FileReader()
		vm.file = file
		reader.onload = function(e) {
			vm.image_name = file.name
		};
		reader.readAsDataURL(file);
	};
	Request();
	function Request() {
		let url = "/admin/index/list?size=" + vm.size + "&page=" + vm.pageNum
				+ "&type=" + vm.type;
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					vm.table = res.result.list;
					addTable(res.result.list)
					$(".zxf_pagediv").createPage({
						pageNum : res.result.pages,
						current : vm.pageNum,
						total : res.result.total
					});
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(e) {
				console.log(e)
			}
		});
	};
	function addTable(arr) {
		let html = '<tr class="ivu-table-row">'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">图片</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">图片位置</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">连接方式</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">状态</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">创建时间</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">操作</div></th></tr>';
		arr
				.forEach(function(item, index) {
					let isHidden = item.isHidden ? '隐藏' : '显示'
					let isHidden_but = !item.isHidden ? '隐藏' : '显示'
					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ '<img src="'+item.imageUrl+'" style="width: 80px;height: 80px;"/>'
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.imageLocationDetail
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.jumpTypeDetail
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ isHidden
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.createTime
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" style="width: 20%;">'
							+ '<div class="ivu-table-cell">'
							+ '<button type="button" class="ivu-btn ivu-btn-primary ivu-btn-small" style="margin-right: 5px;" onclick="Modal_show('
							+ index
							+ ')">编辑</button>'
							+ '<button type="button" class="ivu-btn ivu-btn-warning ivu-btn-small" style="margin-right: 5px;" onclick="forbidden('
							+ index
							+ ',2)">'
							+ isHidden_but
							+ '</button>'
							+ '<button type="button" class="ivu-btn ivu-btn-error ivu-btn-small" style="margin-right: 5px;" onclick="forbidden('
							+ index + ',1)">删除</button>' + '</div></td></tr>'
				})
		$("#tbody").html(html);
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
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
	function Modal_show(index) {
		if (index) {
			let entity = vm.table[index];
			vm.image_name = entity.imageUrl;
			vm.insertType = 2
			vm.insert = {
				imageUrl : entity.imageUrl,
				hrefUrl : entity.hrefUrl,
				imageLocation : entity.imageLocation,
				isHidden : entity.isHidden,
			}
			if (entity.jumpType == 1) {
				$('input[name=radio-name]').removeAttr('checked')
				$('#radio-2').attr('checked', 'checked');
				$('#hyperlink').hide();
				$('#richText-p').show();
				editor.html(entity.hrefUrl)
			} else {
				$('input[name=radio-name]').removeAttr('checked')
				$('#radio-1').attr('checked', 'checked');
				$('#richText-p').hide();
				$('#hyperlink').show();
				editor.html('')
			}
		} else {
			cancel_modle();
			console.log('添加')
		}
		$("#Modal-Add").toggle(300);
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
	function Modal_ok() {
		console.log(vm.insert.hrefUrl)
		vm.insert.hrefUrl = $("#hrefUrl").val()
		let boo = true;
		if (!vm.file && !vm.image_name) {
			label_error(document.getElementById('imageUrl'), '请上传图片');
			boo = false;
		}
		if (!vm.insert.hrefUrl && vm.insert.jumpType === 0) {
			RegExpEntity.hrefUrl.Event.label_error(document
					.getElementById('hrefUrl'));
			boo = false;
		}
		if (!editor.html() && vm.insert.jumpType === 1) {
			$("#richText-d").text("请输入富文本内容")
			boo = false;
		} else {
			$("#richText-d").text("")
		}
		if (boo) {
			if (vm.insert.jumpType === 1) {
				vm.insert.hrefUrl = '<div>' + editor.html() + '</div>';
			}
			if (vm.file) {
				vm.insert.imageUrl = UploadImage();
			}
			insertRequesr();
		}

	};
	function Modal_cancel() {
		$("#Modal-Add").toggle(300);
	};
	function forbidden(index, state) {
		vm.delete_id = vm.table[index]
		vm.state = state;
		if (state === 1) {
			vm.transfer = '确定要删除吗?'
		} else {
			vm.transfer = !vm.table[index].isHidden ? '确定要隐藏吗?' : '确定要显示吗?'
		}
		$("#transfer-dom").toggle(300);
	};
	function transfer_ok() {
		if (vm.state === 1) {
			deleteRequesr()
		} else {
			updataShowRequesr()
		}
	};
	function cancel_modle () {
		vm.file = null;
		vm.image_name = '';
		vm.insert.jumpType = 0;
		vm.insert.hrefUrl = '';
		editor.html('');
		$("#hrefUrl").val('');
		$("#richText-d").text("");
		$('#richText-p').hide();
		$('#hyperlink').show();
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
		cancel_modle();
		console.log(1)
	};
	function insertRequesr() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/index",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(vm.insert),
			success : function(data) {
				if (data.code === 200) {
					cancel_modle();
					Request();
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					$("#Modal-Add").toggle(300);
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
	function updataShowRequesr() {
		// "isStop":$("input[name='radio-1']:checked").val()=== '1' ? false : true
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/index/update",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"isHidden" : !vm.delete_id.isHidden,
				"id" : vm.delete_id.id
			}),
			success : function(data) {
				if (data.code === 200) {
					Request();
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});

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
				;
				$("#transfer-dom").toggle(300);
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template : '修改接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	}
	function deleteRequesr() {
		// "isStop":$("input[name='radio-1']:checked").val()=== '1' ? false : true
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/index/delete/"
					+ vm.delete_id.id,
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : {},
			success : function(data) {
				if (data.code === 200) {
					Request();
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
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
				;
				$("#transfer-dom").toggle(300);
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template : '修改接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	}
	function UploadImage() {
		let entity = null;
		let formdata = new FormData();
		formdata.append("file", vm.file)
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/file/upload",
			data : formdata,
			contentType : false,
			processData : false,
			async : false,
			success : function(data) {
				if (data.code === 200) {
					entity = data.result;
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
