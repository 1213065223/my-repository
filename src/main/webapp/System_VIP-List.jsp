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
	$.cookie('active-name', 'VIP-List');
	$.cookie('active-src', 'System_VIP-List');
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
			<iframe src="menuBar.jsp"
				class="iframe" id="iframe" scrolling="yes" frameborder="0"></iframe>
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
					</span> <span> <span class="ivu-breadcrumb-item-link">会员管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">会员列表</span>
						<span class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">


					<form autocomplete="off"
						class="ivu-form ivu-form-label-right ivu-form-inline">
						<!-- <div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content">
								<button type="button" class="ivu-btn ivu-btn-warning"
									onclick="Modal_show()">
									<span>添加战绩</span>
								</button>
							</div>
						</div> nickname   loginName  phone   paramStart  paramEnd-->
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">用户名称</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="nickname" />
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">手机号</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="phone" />
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">邮箱</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="loginName" />
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
										<div class="ivu-table-cell">会员ID</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">头像</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">姓氏</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">名称</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">性别</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">生日</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">邮箱</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">手机号码</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">积分</div>
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
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">登录状态</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">创建日期</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">操作</div>
									</th>
								</tr>
								<tr class="ivu-table-row">
									<td class="ivu-table-column-center" colspan="15">
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
													<p>{{lable_name}}</p>
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

				</div>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">
	/* jeDate("#matchTime", {
		format : "YYYY-MM-DD hh:mm:ss",
		donefun : function(obj) {
			RegExpEntity.matchTime.Event.onceEvent();
			vm.details.matchTime = obj.val;
		}
	}); */
	$(".zxf_pagediv").createPage({
		pageNum : 1,
		current : 1,
		total : 0,
		backfun : function(e) {
			vm.pageNum = e.current;
			Request();
		}
	});
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name: "${admin_user.nickname}",
			lable_name: '确定要禁用吗?',
			nickname : '',
			loginName : '',
			phone : '',
			size : 10,
			pageNum : 1,
			userID : '',
			table : [],
			state : null
		}
	});
	Request();
	function Request() {
		let url = "/admin/user?size=" + vm.size + "&page=" + vm.pageNum+ "&loginName=" + vm.loginName+ "&nickname=" + vm.nickname+ "&phone=" + vm.phone;
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					console.log(res)
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
				+ '<div class="ivu-table-cell">会员ID</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">头像</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">姓氏</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">名称</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">性别</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">生日</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">邮箱</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">手机号码</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">积分</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">胜</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">平</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">负</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">登录状态</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">创建日期</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">操作</div></th>' + '</tr>';
		arr
				.forEach(function(item, index) {
					let id = item.id;
					let isStop = item.isStop === 1 ? '禁用'
							: item.isStop === 2 ? '邮箱未验证' : '正常'
					let but = '';
					if (item.isStop == 1) {
						but += '<button type="button" class="ivu-btn ivu-btn-success ivu-btn-small" style="margin-right: 5px;" onclick="Modal_show('
								+ index + ',0)">启用</button>'
					} else if (item.isStop == 2) {
						but += '<button type="button" class="ivu-btn ivu-btn-success ivu-btn-small" disabled style="margin-right: 5px;" onclick="Modal_show('
								+ index + ')">启用</button>'
					} else {
						but += '<button type="button" class="ivu-btn ivu-btn-error ivu-btn-small" style="margin-right: 5px;" onclick="Modal_show('
								+ index + ',1)">禁用</button>'
					}
					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.id
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ '<img src="'+item.head_image+'" style="width: 50px;height: 50px;"/>'
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.surname
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.nickname
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.sex
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.birthday
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.login_name
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.phone
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.intg
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.wins
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.lose
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.plan
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ isStop
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.create_time
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ but
							+ '</div></td></tr>';

				})
		$("#tbody").html(html);
	}
	function Modal_show(index, state) {
		if (state===0) {
			vm.lable_name = '确定要启用吗?'
		} else {
			vm.lable_name = '确定要禁用吗?'
		}
		vm.state = state
		vm.userID = vm.table[index].id
		$("#transfer-dom").toggle(300);
	}
	function transfer_ok() {
		insertRequesr()
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};
	function insertRequesr() {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/user/forbidden",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : vm.userID,
				"isstop" : vm.state
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
				} else if (data.code === 100005) {
					window.location.href = "System_login.jsp";
				}  else {
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
