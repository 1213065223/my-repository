<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>报名管理</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_CompetitionList.css" />
<link rel="stylesheet" type="text/css" href="css/dialog.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />

<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.dialog.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
</head>
<script type="text/javascript">
	$.cookie('active-name', 'CompetitionList');
	$.cookie('active-src', 'System_applyManage');
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
					</span> <span> <span class="ivu-breadcrumb-item-link">报名管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
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
								<p style="width: 100px;" class="ivu-form-item-label">比赛名称</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="match_name" />
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
									class="ivu-input ivu-input-default" v-model="email" />
							</div>
						</div>
						<div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content" style="width: 200px">
								<button type="button" class="ivu-btn ivu-btn-primary"
									onclick="request()">
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
										<div class="ivu-table-cell">比赛名称</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">姓</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">名</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">性别</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">生日</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">联系电话</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">照片头像</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">邮箱</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">参赛报名费用</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">审核状态</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">比赛状态</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">赛事状态</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">报名时间</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">操作</div>
									</th>
								</tr>
								<tr class="ivu-table-row">
									<td class="ivu-table-column-center" colspan="14">
										<div class="ivu-table-cell">没有数据</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="zxf_pagediv"></div>

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
						<div class="ivu-modal-header-inner">报名审核</div>
					</div>
					<div class="ivu-modal-body">
						<div style="width: 100%;" class="column-center">
							<form class="form-model column-start" label-width="100"
								id="form-model">
								<div class="form-model-div flex-start">
									<p class="flex-end form-p" style="width:100px;">
										<span class="form-span">*</span> <span>审核</span>
									</p>
									<div class="form-input-parent flex-around">
										<!-- <input type="email" class="ivu-input ivu-input-default" /> -->
										<label for="radio-1" class="row-div"> <span
											style="margin-right: 5px">审核通过</span> <input type="radio"
											name="radio-name" id="radio-1" value="3" checked="checked" />
										</label> <label for="radio-2" class="row-div"> <span
											style="margin-right: 5px">审核拒绝</span> <input type="radio"
											name="radio-name" id="radio-2" value="4" />
									</div>
								</div>

							</form>
						</div>
					</div>
					<div class="ivu-modal-footer">
						<button type="button" class="ivu-btn ivu-btn-text ivu-btn-large"
							onclick="Modal_cancel()">取消</button>
						<button type="button"
							class="ivu-btn ivu-btn-primary ivu-btn-large"
							onclick="Modal_ok()">确定</button>
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
			// phone email match_name size pageNum
			phone : '',
			email : '',
			match_name : '',
			size : 10,
			pageNum : 1,
			table : [],
			id: null
		}
	});
	var entity = {
		size : 10,
		pageNum : 1,
		id : null
	};
	var dataList = {
		table : []
	};
	$(".zxf_pagediv").createPage({
		pageNum : 1,
		current : 1,
		total : 0,
		backfun : function(e) {
			vm.pageNum = e.current;
			request();
		}
	});
	function Modal_show_click(id) {
		vm.id = id
		$('#Modal-Add').show();
	}
	function Modal_ok() {
		auditRequest(vm.id, $("input[name^='radio-name']:checked").val())
	}
	function Modal_cancel() {
		$('#Modal-Add').hide();
	}
	request();
	function auditRequest(id, number) {
		$
				.ajax({
					type : "POST",
					async : true,
					url : "${pageContext.request.contextPath}/admin/match/enroll/verify",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"id" : id,
						"enrollType" : number
					}),
					success : function(data) {
						if (data.code === 200) {
							spop({
								template : '成功',
								group : 'submit-satus',
								style : 'success',
								autoclose : 5000
							});
							request();
							$('#Modal-Add').hide();
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
	function request() { // phone email match_name size pageNum
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/admin/match/enroll/list?size="
							+ vm.size
							+ "&page="
							+ vm.pageNum
							+ "&phone="
							+ vm.phone
							+ "&email="
							+ vm.email
							+ "&match_name="
							+ vm.match_name,
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							vm.table = data.result.list;
							addTable(data.result.list);
							$(".zxf_pagediv").createPage({
								pageNum : data.result.pages,
								current : data.result.pageNum,
								total : data.result.total
							});
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
							template : '查询接口访问失败,请与系统管理员联系',
							group : 'submit-satus',
							style : 'error',
							autoclose : 5000
						});
					}
				});
	}
	function addTable(arr) {
		// 比赛名称   姓   名  性别  生日  联系电话  照片头像  邮箱  参赛报名费用 审核状态 比赛状态
		let html = '<tr class="ivu-table-row">'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">比赛名称</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">姓</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">名</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">性别</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">生日</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">联系电话</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">照片头像</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">邮箱</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">参赛报名费用</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">审核状态</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">比赛状态</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">赛事状态</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">报名时间</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">操作</div></th></tr>';
		arr
				.forEach(function(item, index) {
					// 1 待付款 2 待审核 3 审核通过 4 审核拒绝 5用户已取消
					let enroll_type = item.enroll_type === 1 ? '待付款'
							: item.enroll_type === 2 ? '待审核'
									: item.enroll_type === 3 ? '审核通过'
											: item.enroll_type === 4 ? '审核拒绝'
													: '用户已取消';
					let tml = item.enroll_type !== 2 ? '<button type="button" class="ivu-btn ivu-btn-disabled operation-but" style="cursor:not-allowed" disabled>审核</button>'
							: '<button type="button" class="ivu-btn ivu-btn-warning operation-but" onclick="Modal_show_click('
									+ item.id + ')">审核</button>';
					let is_end = item.is_end ? '已结束' : '进行中';
					let match_del = item.match_del > 0 ? '已删除' : '存在';
					let sex = item.sex === 1 ? '男' : '女';
					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'// surname user_name sex birthday phone head_image email cost user_status is_end match_del tml
							+ item.match_name
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.surname
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.user_name
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ sex
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.birthday
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.phone
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ '<img src="'+item.head_image+'" style="width: 50px;height: 50px;"/>'
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.email
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.cost
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ enroll_type
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ is_end
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ match_del
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.create_time
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ tml
							+ '</div></td></tr>';

				})
		$("#tbody").html(html);
	}
</script>
</html>