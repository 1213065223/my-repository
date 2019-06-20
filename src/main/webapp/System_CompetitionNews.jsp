<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>赛事新闻</title>
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
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
</head>
<script type="text/javascript">
	$.cookie('active-name', 'CompetitionList');
	$.cookie('active-src', 'System_CompetitionNews');
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
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">赛事管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">新闻赛事</span> <span
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
									<span>添加新闻</span>
								</button>
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">赛事名称</p>
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
									<!-- 新闻标题 赛事名称 比赛地点 新闻简介 创建时间 操作 -->
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">新闻标题</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">赛事名称</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">比赛地点</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">新闻简介</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">创建时间</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">操作</div>
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
											<p>确定要删除吗?</p>
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
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name: "${admin_user.nickname}",
			size : 10,
			pageNum : 1,
			match_name : '',
			table : [],
			state : null,
			delete_id: null
		}
	});
	$(".zxf_pagediv").createPage({
		backfun : function(e) {
			vm.pageNum = e.current;
			request();
		}
	});
	function add_click() {
		window.location.href = 'System_Add_CompetitionNews.jsp';
	}
	request();

	function compile_click(id) {
		window.location.href = 'System_Add_CompetitionNews.jsp?id='+id;
	}
	function delete_click(id) {
		vm.delete_id=id
		$("#transfer-dom").toggle(300);
		
	};
	function transfer_ok() {
		deleteRequest();
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};
	function deleteRequest() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/news/delete",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : vm.delete_id
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
			type : "GET",
			url : "${pageContext.request.contextPath}/match/news?size="
					+ vm.size + "&page=" + vm.pageNum + "&title=" + vm.match_name,
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
		// 新闻标题 赛事名称 比赛地点 新闻简介 创建时间 操作
		let html = '<tr class="ivu-table-row">'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">新闻标题</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">赛事名称</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">比赛地点</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">新闻简介</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">创建时间</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">操作</div></th>' + '</tr>';
		arr
				.forEach(function(item, index) {
					// title     matchName    place   profile  createTime
					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.title
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.matchName
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.place
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.profile
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.createTime
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ '<button type="button" class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click('
							+ item.id
							+ ')" style="margin-right: 5px;">编辑</button>'
							+ '<button type="button" class="ivu-btn ivu-btn-error" onclick="delete_click('
							+ item.id + ')">删除</button></div></td></tr>';

				})
		$("#tbody").html(html);
	}
</script>
</html>