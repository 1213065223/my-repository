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
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
</head>
<script type="text/javascript">
	$.cookie('active-name', 'AdvertisingSet');
	$.cookie('active-src', 'System_AdvertisingSet');
</script>
<body>
	<div>
		<div class="menuBar" id="menuBar">
			<iframe
				src="http://localhost:9090/billiard/menuBar.jsp"
				class="iframe" scrolling="yes" frameborder="0"></iframe>
		</div>



		<div class="ivu-layout-content ivu-layout" style="margin-left: 200px;"
			id="mvvm">
			<div class="layout-header"></div>
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">广告管理</span>
						<span class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">广告设置</span>
						<span class="ivu-breadcrumb-item-separator">/</span>
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
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="name" />
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
												id="form-model">
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>用户名</span>
													</p>
													<div class="form-input-parent">
														<input type="text" class="ivu-input ivu-input-default"
															id="loginName" autocomplete="off" spellcheck="false"
															v-model="details.loginName" />
													</div>
												</div>
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>密码</span>
													</p>
													<div class="form-input-parent">
														<input type="password" class="ivu-input ivu-input-default"
															id="password" autocomplete="off" spellcheck="false"
															v-model="details.password" value="" />
													</div>
												</div>
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>昵称</span>
													</p>
													<div class="form-input-parent">
														<input type="text" class="ivu-input ivu-input-default"
															id="nickname" autocomplete="off" spellcheck="false"
															v-model="details.nickname" />
													</div>
												</div>
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>手机号</span>
													</p>
													<div class="form-input-parent">
														<input type="email" class="ivu-input ivu-input-default"
															id="phone" autocomplete="off" spellcheck="false"
															v-model="details.phone" />
													</div>
												</div>
												<div class="form-model-div flex-start">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>选择用户组</span>
													</p>
													<div class="form-input-parent">
														<!-- <input type="email" class="ivu-input ivu-input-default" /> -->
														<select name="" class="ivu-input ivu-input-default">
															<option value="1">管理员</option>
														</select>
													</div>
												</div>
												<div class="form-model-div flex-start"
													style="display: none;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>启用状态</span>
													</p>
													<div class="form-input-parent flex-around" id="User-state">
														<!-- <input type="email" class="ivu-input ivu-input-default" /> -->
														<label for="radio-1" class="row-div"> <span
															style="margin-right: 5px">启用</span> <input type="radio"
															name="radio-name" id="radio-1" value="1"
															checked="checked" />
														</label> <label for="radio-2" class="row-div"> <span
															style="margin-right: 5px">禁用</span> <input type="radio"
															name="radio-name" id="radio-2" value="2" />
														</label>
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
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			Add_header : '添加广告',
			name : '',
			number : '',
			size : 10,
			pageNum : 1,
			table : [],
			transfer: '确定要删除吗?'
			delete_id: null,
			details : {
				createUser : "",
				id : null,
				isStop : false,
				loginName : "",
				nickname : "",
				password : "",
				phone : "",
				salt : "",
				userType : "",
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
	Request();
	function Request() {
		let url = "/index/list?size=" + vm.size + "&page=" + vm.pageNum;
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					vm.table = res.result.all;
					addTable(res.result.all)
					/* $(".zxf_pagediv").createPage({
						pageNum : res.result.pages,
						current : vm.pageNum,
						total : res.result.total
					}); */
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
							+ ',-1)">'+isHidden_but+'</button>'
							+ '<button type="button" class="ivu-btn ivu-btn-error ivu-btn-small" style="margin-right: 5px;" onclick="forbidden('
							+ index
							+ ',1)">删除</button>'
							+'</div></td></tr>'
				})
		$("#tbody").html(html);
	}
	

	let entity = {
		phone : {
			RegExptype : 'phone',
			message : '请输入手机号',
			trigger : 'blur',
			id : 'phone'
		},
		loginName : {
			RegExptype : 'string',
			message : '请输入用户名',
			trigger : 'blur',
			id : 'loginName'
		},
		nickname : {
			RegExptype : 'string',
			message : '请输入昵称',
			trigger : 'blur',
			id : 'nickname'
		},
		password : {
			RegExptype : 'string',
			message : '请输密码',
			trigger : 'blur',
			id : 'password'
		}
	}
	let formRegExpList = []
	for ( let i in entity) {
		formRegExpList.push(new formRegExp(entity[i], 'form-model'))
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}

	function Modal_show(index) {
		let entity = vm.table[index];
		if (entity) {
			vm.Add_header = "编辑管理员"
			vm.details = entity;
			$('#password').parent().parent().hide();
			$('#loginName').attr('readonly', 'readonly');
			//$('#User-state').parent().show();
		} else {
			vm.Add_header = "添加管理员"
			vm.details = {
				id : null,
				isStop : false,
				loginName : "",
				nickname : "",
				password : "",
				phone : "",
			}
			$('#password').parent().parent().show()
			$('#loginName').removeAttr('readonly');
			//$('#User-state').parent().hide()
		}
		$("#Modal-Add").toggle(300);
	};
	function Modal_ok() {
	
	};
	function Modal_cancel() {
		$("#Modal-Add").toggle(300);
	};
	function forbidden(index,state) {
		vm.delete_id = vm.table[index].id
		vm.state = state;
		if (state ===1) {
			vm.transfer = '确定要删除吗?'
		} else {
			vm.transfer = !vm.table[index].isHidden ? '确定要隐藏吗?' : '确定要显示吗?'
		}
		$("#transfer-dom").toggle(300);
	};
	function transfer_ok() {
		
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};
	function insertRequesr() {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"nickname" : vm.details.nickname,
				"loginName" : vm.details.loginName,
				"password" : vm.details.password,
				"phone" : vm.details.phone
			}),
			success : function(data) {
				if (data.code === 200) {
					$("#Modal-Add").toggle(300);
					Request();
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
				;
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template : '添加接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	}
	function updataRequesr() {
		// "isStop":$("input[name='radio-1']:checked").val()=== '1' ? false : true
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/update",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"nickname" : vm.details.nickname,
				"loginName" : vm.details.loginName,
				"password" : '',
				"phone" : vm.details.phone,
				"id" : vm.details.id
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
					$("#Modal-Add").toggle(300);
				} else {
					spop({
						template : data.message,
						group : 'submit-satus',
						style : 'warning',
						autoclose : 5000
					});
				}
				;
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
</script>
</html>
