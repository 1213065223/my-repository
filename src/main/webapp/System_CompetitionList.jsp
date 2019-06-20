<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>赛事列表</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_CompetitionList.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
</head>
<script type="text/javascript">
	$.cookie('active-name', 'CompetitionList');
	$.cookie('active-src', 'System_CompetitionList');
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
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">赛事管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">赛事列表</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>


				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<form autocomplete="off"
						class="ivu-form ivu-form-label-right ivu-form-inline">
						<div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content">
								<button type="button" class="ivu-btn ivu-btn-warning"
									onclick="add_click()">
									<span>添加赛事</span>
								</button>
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">比赛名称</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="match_name" />
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
										<div class="ivu-table-cell">组织机构</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">比赛项目内容</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">时间地点</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">规则</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">日程安排</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">开放报名时间</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">报名截止时间</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">比赛情况</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">操作</div>
									</th>
								</tr>
								<tr class="ivu-table-row">
									<td class="ivu-table-column-center" colspan="10">
										<div class="ivu-table-cell">没有数据</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="zxf_pagediv"></div>
				</div>
			</div>
			<!-- 提示框 -->
			<div class="v-transfer-dom" id="transfer-dom" style="display: none;">
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
											<p>{{transfer_name}}</p>
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






</body>

<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name: "${admin_user.nickname}",
			id : null,
			transfer_name : '确定要删除吗?',
			size : 10,
			pageNum : 1,
			match_name : '',
			table : [],
			state : null,
			matchNow_tyoe: null
		}
	});
	var entity = {
		size : 10,
		pageNum : 1
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
	function add_click() {
		window.location.href = "System_Add_CompetitionList.jsp";
	};
	request();
	function hint(index, s) {
		vm.state = s;
		vm.id = vm.table[index].id
		let str = s === 1 ? '你确定要删除吗?' : s === -1 ?'你确定要结束比赛吗?' : '你确定要将此条记录修改为推荐吗?';
		vm.transfer_name = str;
		$("#transfer-dom").toggle(300);
	};
	function transfer_ok() {
		if (vm.state === 1) {
			deleteRequest();
		} if (vm.state === 2){
			Updata_matchNow();
		}else {
			overRequest()
		}
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};

	function compile_click(index) {
		window.location.href = "System_Add_CompetitionList.jsp?id="
				+ vm.table[index].id;
	};
	function Updata_matchNow () {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/current",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : vm.id
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
					$("#transfer-dom").toggle(300);
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
	function deleteRequest() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/update ",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : vm.id,
				matchDel : 1
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
					$("#transfer-dom").hide();
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
	function overRequest() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/update",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : vm.id,
				isEnd : 1
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
					$("#transfer-dom").toggle(300);
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
		let match_name = $('#match_name').val();
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match?size=" + vm.size
					+ "&page=" + vm.pageNum + "&match_name=" + vm.match_name,
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					vm.table = data.result.list;
					addTable(data.result.list)
					$(".zxf_pagediv").createPage({
						pageNum : data.result.pages,
						current : vm.pageNum,
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
		let html = '<tr class="ivu-table-row">'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">比赛名称</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">组织机构</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">比赛项目内容</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">时间地点</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">规则</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">日程安排</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">开放报名时间</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">报名截止时间</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">比赛情况</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">操作</div></th></tr>';
		arr
				.forEach(function(item, index) {
					let isEnd = '';
					let tml = '';
					let redactBut = '';
					if (item.isEnd) {
						isEnd = '已结束'
						tml = '<button type="button" class="ivu-btn ivu-btn-warning operation-but" onclick="hint('
								+ index + ',-1)" disabled>结束比赛</button>';
						redactBut = '<button type="button"  class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click('
								+ index + ')" disabled>编辑</button>';
					} else {
						redactBut = '<button type="button" class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click('
								+ index + ')">编辑</button>';
						tml = '<button type="button" class="ivu-btn ivu-btn-warning operation-but" onclick="hint('
								+ index + ',-1)">结束比赛</button>';
						isEnd = '进行中'
					}
					let matchNow = ''
					if (item.matchNow === 1) {
						matchNow = '<button type="button" class="ivu-btn ivu-btn-primary operation-but" data-modal="modal-1" disabled>推荐</button>';
					} else {
						matchNow = '<button type="button" class="ivu-btn ivu-btn-primary operation-but" data-modal="modal-1" onclick="hint('+index+',2)">推荐</button>';
					}

					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center" style="min-width:90px;">'
							+ '<div class="ivu-table-cell">'
							+ item.matchName
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" style="min-width:90px;">'
							+ '<div class="ivu-table-cell">'
							+ item.organization
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.matchContent
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.matchPlace
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.planning
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" >'
							+ '<div class="ivu-table-cell">'
							+ item.schedule
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" style="min-width:90px;">'
							+ '<div class="ivu-table-cell">'
							+ item.enrollTime
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" style="min-width:90px;">'
							+ '<div class="ivu-table-cell">'
							+ item.enrollTimeEnd
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" style="min-width:90px;">'
							+ '<div class="ivu-table-cell">'
							+ isEnd
							+ '</div></td>'
							+ '<td class="ivu-table-column-center" style="width:350px;">'
							+ '<div class="ivu-table-cell">'
							+ matchNow
							+ tml
							+ redactBut
							+ '<button type="button" class="ivu-btn ivu-btn-error" onclick="hint('
							+ index + ',1)">删除</button>' + '</div></td></tr>';

				})
		$("#tbody").html(html);
	}
</script>
</html>