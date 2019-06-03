<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>赛事列表</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_CompetitionList.css" />
<link rel="stylesheet" type="text/css" href="css/dialog.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.dialog.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div>
		<div class="flex-start form-div">
			<div>
				<button type="button" class="ivu-btn ivu-btn-warning" id="insert"
					onclick="add_click()">添加赛事</button>
			</div>
			<div class="row-div form-data">
				<p style="width: 80px;">比赛名称</p>
				<input type="text" class="gd-input" id="match_name" />
			</div>
			<!-- <div class="row-div form-data">
				<p style="width: 80px;">手机号</p>
				<input type="text" class="gd-input" id="phone" />
			</div> -->
			<div>
				<button type="button" class="ivu-btn ivu-btn-primary"
					onclick="request()">查询</button>
			</div>
		</div>
		<div class="gd-table-div">
			<table border="0" cellspacing="0" cellpadding="0" class="gd-table"
				id="table">
				<tr>
					<th>
						<div class="row-div gd-table-th">比赛名称</div>
					</th>
					<th>
						<div class="row-div gd-table-th">组织机构</div>
					</th>
					<th>
						<div class="row-div">比赛项目内容</div>
					</th>
					<th>
						<div class="row-div">时间地点</div>
					</th>
					<th>
						<div class="row-div">规则</div>
					</th>
					<th>
						<div class="row-div">日程安排</div>
					</th>
					<th>
						<div class="row-div">开放报名时间</div>
					</th>
					<th>
						<div class="row-div">报名截止时间</div>
					</th>
					<th>
						<div class="row-div">操作</div>
					</th>
				</tr>
				<tr>
					<td colspan="9">
						<div class="row-div">没有数据</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="zxf_pagediv"></div>

	</div>
</body>

<script type="text/javascript">
	var entity = {
		size : 10,
		pageNum : 1
	};
	var dataList = {
		table : []
	};
	$(".zxf_pagediv").createPage({
		backfun : function(e) {
			entity.size = e.current;
			request();
		}
	});
	request();
	function request() {
		let match_name = $('#match_name').val();
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/match?size="
							+ entity.size + "&page=" + entity.pageNum
							+ "&match_name=" + match_name,
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							entity.pageNum = data.result.pages;
							dataList.table = data.result.list;
							let arr = data.result.list;
							let innhtml = '<tr>'
									+ '<th><div class="row-div gd-table-th">比赛名称</div></th>'
									+ '<th><div class="row-div gd-table-th">组织机构</div></th>'
									+ '<th><div class="row-div">比赛项目内容</div></th>'
									+ '<th><div class="row-div">时间地点</div></th>'
									+ '<th><div class="row-div">规则</div></th>'
									+ '<th><div class="row-div">日程安排</div></th>'
									+ '<th><div class="row-div">开放报名时间</div></th>'
									+ '<th><div class="row-div">报名截止时间</div></th>'
									+ '<th><div class="row-div">比赛情况</div></th>'
									+ '<th><div class="row-div">操作</div></th>'
									+ '</tr>';
							arr
									.forEach(function(item, index) {
										let isEnd = item.isEnd? "已结束" : "进行中";
										let tml = item.isEnd? '' : '<button type="button" class="ivu-btn ivu-btn-warning operation-but" onclick="hint('+index+',-1)">结束比赛</button>'
										innhtml += '<tr>'
												+ '<td><div class="row-div">'
												+ item.matchName
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.organization
												+ '</div></td>'
												+ '<td style="width:150px;"><div class="row-div" >'
												+ item.matchContent
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.matchPlace
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.planning
												+ '</div></td>'
												+ '<td style="width:150px;"><div class="row-div" >'
												+ item.schedule
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.enrollTime
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.enrollTimeEnd
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ isEnd
												+ '</div></td>'
												+ '<td style="width: 230px;"><div class="row-div">'
												+ tml
												+ '<button type="button" class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click()">编辑</button>'
												+ '<button type="button" class="ivu-btn ivu-btn-error" onclick="hint('+index+',1)">删除</button>'
												+ '</div></td></tr>';
									})

							$("#table>tbody").html(innhtml);
							$(".zxf_pagediv").createPage({
								pageNum : data.result.pages,
								current : data.result.pageNum,
								total : data.result.total
							});
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
	
	function hint (index,s) {
		let str = s === 1 ? '你确定要删除吗?' : '你确定要结束比赛吗?'
		$.dialog.confirm({content:str,callback:"callback("+index+","+s+");"});
	};
	function callback (index,s) {
		if (s !== -1) {
			deleteRequest(index);
		} else {
			overRequest(index);
		}
	}
	function deleteRequest (index) {
		$
		.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/update ",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : dataList.table[index].id,
				matchDel: 1
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
	function overRequest (index) {
		$
		.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/update",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id" : dataList.table[index].id,
				isEnd: 1
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