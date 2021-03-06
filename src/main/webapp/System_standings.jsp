<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>战绩排名管理</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" href="jeui/css/jeui.css">
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="jeui/js/modules/jeSelect.js" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$.cookie('active-name', 'With-integral');
	$.cookie('active-src', 'System_standings');
</script>
<style type="text/css">
.je-select {
	width: 100%;
}
</style>
</head>
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
					<p class="p-hover row-div"
						style="height: auto; margin-right: 20px;">
						<i class="ivu-icon ivu-icon-ios-contact-outline"
							style="font-size: 20px"></i> <span>{{user_name}}</span>
					</p>
					<p class="p-hover exit row-div" style="height: auto;">
						<i class="ivu-icon ivu-icon-ios-log-out" style="font-size: 20px"></i>
						<span>退出</span>
					</p>
				</div>
			</div>
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">排名管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">战绩排名管理</span>
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
									<span>添加战绩</span>
								</button>
							</div>
						</div>
						<!-- <div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">昵称</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="name" />
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">手机号</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="number" />
							</div>
						</div>
						<div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content" style="width: 200px">
								<button type="button" class="ivu-btn ivu-btn-primary"
									onclick="Request()">
									<span>查询</span>
								</button>
							</div>
						</div> -->
					</form>
					<div class="ivu-table-body">
						<table cellspacing="0" cellpadding="0" border="0"
							style="width: 100%" class="ivu-table ivu-table-border">
							<tbody class="ivu-table-tbody" id="tbody">
								<tr class="ivu-table-row">
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">排名</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">头像</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">姓名</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">胜</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">平</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">负</div>
									</th>
								</tr>
								<tr class="ivu-table-row">
									<td class="ivu-table-column-center" colspan="6">
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
													<p>确定要禁用吗?</p>
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
												<div class="form-model-div flex-start" style="width: 100%;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>赛事</span>
													</p>
													<div class="form-input-parent" style="width: 80%;">
														<!-- <select name="" class="ivu-input ivu-input-default"
															v-model="details.matchId" id="matchId">
															<option value="1">管理员</option>
															<option value="2">管理员</option>
															<option value="3">管理员</option>
														</select> -->
														<select class="je-select" v-model="details.matchId"
															id="matchId">
														</select>
													</div>
												</div>
												<div class="form-model-div flex-start" style="width: 100%;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>用户</span>
													</p>
													<div class="form-input-parent" style="width: 80%;">
														<!-- <select name="" class="ivu-input ivu-input-default"
															v-model="details.userId" id="userId">
															<option value="1">管理员</option>
															<option value="2">管理员</option>
															<option value="3">管理员</option>
														</select> -->
														<select class="je-select User-select"
															v-model="details.userId" id="userId">
														</select>
													</div>
												</div>
												<div class="form-model-div flex-start" style="width: 100%;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>比赛时间</span>
													</p>
													<div class="form-input-parent" style="width: 80%;">
														<input type="text" class="ivu-input ivu-input-default"
															id="matchTime" autocomplete="off" spellcheck="false"
															v-model="details.matchTime" />
													</div>
												</div>
												<div class="form-model-div flex-start" style="width: 100%;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>积分</span>
													</p>
													<div class="form-input-parent" style="width: 80%;">
														<input type="number" class="ivu-input ivu-input-default"
															id="integral" autocomplete="off" spellcheck="false"
															v-model="details.integral" />
													</div>
												</div>
												<div class="form-model-div flex-start" style="width: 100%;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>比赛排名</span>
													</p>
													<div class="form-input-parent" style="width: 80%;">
														<input type="email" class="ivu-input ivu-input-default"
															id="ranking" autocomplete="off" spellcheck="false"
															v-model="details.ranking" />
													</div>
												</div>
												<div class="form-model-div flex-start" style="width: 100%;">
													<p class="flex-end form-p">
														<span class="form-span">*</span> <span>输赢状态</span>
													</p>
													<div class="form-input-parent flex-around"
														style="width: 80%;">
														<!-- <input type="email" class="ivu-input ivu-input-default" /> -->
														<label for="radio-1" class="row-div"> <span
															style="margin-right: 5px">胜</span> <input type="radio"
															name="radio-name" id="radio-1" value="1"
															checked="checked" />
														</label> <label for="radio-2" class="row-div"> <span
															style="margin-right: 5px">平</span> <input type="radio"
															name="radio-name" id="radio-2" value="0" />
														</label> <label for="radio-3" class="row-div"> <span
															style="margin-right: 5px">负</span> <input type="radio"
															name="radio-name" id="radio-3" value="-1" />
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
	jeDate("#matchTime", {
		format : "YYYY-MM-DD hh:mm:ss",
		donefun : function(obj) {
			RegExpEntity.matchTime.Event.onceEvent();
			vm.details.matchTime = obj.val;
		}
	});
	$.jeSelect("#matchId", {
		size : 8, //设置高度(个数)
		zIndex : 2099, //下拉弹层的层级高度
		sosList : false
	});
	$.jeSelect("#userId", {
		size : 8, //设置高度(个数)
		zIndex : 2099, //下拉弹层的层级高度
		itemfun : function(elem, index, val) {
			if (elem.attr('id') === 'matchId') {
				RegExpEntity.matchId.Event.onceEvent();
				RequestUser(vm.matchIdSelect[index].id);
				vm.details.matchId = vm.matchIdSelect[index].id
			} else {
				RegExpEntity.userId.Event.onceEvent();
				vm.details.userId = vm.userIdSelect[index].userId
			}
		}, //点击当前的回调，elem：当前Select的ID index：索引 val：选中的值
		success : null,
		sosList : false
	})

	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name : "${admin_user.nickname}",
			Add_header : '添加战绩排名',
			matchIdSelect : [],
			userIdSelect : [],
			details : {
				ranking : "", //比赛名次
				matchTime : "",//比赛时间
				integral : '', // 积分
				matchId : "", // 赛事ID
				userId : "", // 用户ID
				winning : null
			// 1胜 0平 -1 负
			}
		}
	});
	Request();
	function Request() {
		let url = "/match/rank/wins";
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					console.log(res)
					vm.table = res.result;
					addTable(res.result)
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(e) {
				console.log(e)
			}
		});
	};
	RequestMatch()
	function RequestMatch() {
		let url = "/admin/match/all/match";
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					vm.matchIdSelect = res.result;
					addSelect(res.result)
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(e) {
				console.log(e)
			}
		});
	};
	function RequestUser(value) {
		let url = "/admin/match/match/members/" + value;
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					vm.userIdSelect = res.result;
					addSelectUser(res.result)
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(e) {
				console.log(e)
			}
		});
	};
	function addSelect(arr) {
		let html = ''
		arr.forEach(function(item) {
			html += '<option class="je-select-open" value="'+item.id+'">'
					+ item.matchName + '</option>'
		})

		$("#matchId").html(html);
	};
	function addSelectUser(arr) {
		let html = ''
		arr.forEach(function(item) {
			html += '<option class="je-select-open" value="'+item.userId+'">'
					+ (item.surname + item.userName) + '</option>'
		})
		$("#userId").html(html);
	};
	function addTable(arr) {
		let html = '<tr class="ivu-table-row">'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">排名</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">头像</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">姓名</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">胜</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">平</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">负</div></th></tr>';
		arr
				.forEach(function(item, index) {
					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.rank
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ '<img src="'+item.head_image+'" style="width: 50px;height: 50px;"/>'
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.nickname
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.win
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.previous
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.lose
							+ '</div></td>' + '</tr>';

				})
		$("#tbody").html(html);
	}
	let RegExpEntity = {
		ranking : {
			RegExptype : 'string',
			message : '请输入比赛名次',
			trigger : 'blur',
			id : 'ranking'
		},
		matchTime : {
			RegExptype : 'string',
			message : '请选择比赛时间',
			trigger : 'blur',
			id : 'matchTime'
		},
		integral : {
			RegExptype : 'string',
			message : '请输入比赛积分',
			trigger : 'blur',
			id : 'integral'
		},
		matchId : {
			RegExptype : 'string',
			message : '请选择比赛',
			trigger : 'change',
			id : 'matchId'
		},
		userId : {
			RegExptype : 'string',
			message : '请选择用户',
			trigger : 'change',
			id : 'userId'
		}
	}

	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}

	function Modal_show() {
		$("#Modal-Add").toggle(300);
	};
	function Modal_ok() {
		let entity = vm.details;
		console.log(entity);
		entity.winning = $('input[name="radio-name"]:checked').val()
		let boo = true;
		for ( let i in entity) {
			if (!entity[i] && i !== 'winning') {
				RegExpEntity[i].Event.label_error(document.getElementById(i));
				boo = false;
			}
		}
		if (boo) {
			insertRequesr()
		}
	};
	function Modal_cancel() {
		$("#Modal-Add").toggle(300);
	};
	function forbidden(id, isStop) {
		vm.id = id;
		vm.isStop = isStop;
		$("#transfer-dom").toggle(300);
	};
	function transfer_ok() {
		DisabledRequesr();
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};
	function insertRequesr() {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/match/integral",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(vm.details),
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
				} else if (data.code === 100021) {
					spop({
						template : data.message,
						group : 'submit-satus',
						style : 'warning',
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
</script>
</html>
