<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>赛事新闻</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_EventReview.css" />
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
					onclick="add_click()">添加新闻</button>
			</div>
			<div class="row-div form-data">
				<p style="width: 80px;">赛事名称</p>
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
						<div class="row-div">新闻标题</div>
					</th>
					<th>
						<div class="row-div">赛事名称</div>
					</th>
					<th>
						<div class="row-div">比赛地点</div>
					</th>
					<th>
						<div class="row-div">新闻简介</div>
					</th>
					<th>
						<div class="row-div">创建时间</div>
					</th>
					<th>
						<div class="row-div">操作</div>
					</th>
				</tr>
				<tr>
					<td colspan="6">
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
		pageNum : 1,
		size : 10
	};
	var dataList = {
		table : []
	};
	$(".zxf_pagediv").createPage({
		backfun : function(e) {
			entity.pageNum = e.current;
			request();
		}
	});
	function add_click() {
		parent
				.$(window.parent.document)
				.find('.iframe')
				.attr('src',
						'http://localhost:9090/billiard/System_Add_CompetitionNews.jsp');
	}
	request();
	function request() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/match/news?size="
							+ entity.size + "&page=" + entity.pageNum
							+ "&title=" + $("#match_name").val(),
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							entity.pageNum = data.result.pages;
							dataList.table = data.result.list;
							let arr = data.result.list;
							let innhtml = '<tr><th><div class="row-div">新闻标题</div></th>'
									+ '<th><div class="row-div">赛事名称</div></th>'
									+ '<th><div class="row-div">比赛地点</div></th>'
									+ '<th><div class="row-div">新闻简介</div></th>'
									+ '<th><div class="row-div">创建时间</div></th>'
									+ '<th><div class="row-div">操作</div></th></tr>';
							arr
									.forEach(function(item, index) {
										innhtml += '<tr>'
												+ '<td><div class="row-div">'
												+ item.title
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.matchName
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.place
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.profile
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.createTime
												+ '</div></td>'
												+ '<td style="width: 200px;"><div class="row-div">'
												+ '<button type="button" class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click('
												+ item.id
												+ ')">编辑</button>'
												+ '<button type="button" class="ivu-btn ivu-btn-error" onclick="delete_click('
												+ item.id + ')">删除</button>'
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
	function compile_click(id) {
		parent.$(window.parent.document).find('.iframe').attr(
				'src',
				'http://localhost:9090/billiard/System_Add_CompetitionNews.jsp?id='
						+ id);
	}
	function delete_click(id) {
		$.dialog.confirm({
			content : "你确定要删除吗",
			callback : "deleteRequest(" + id + ");"
		});
	};
	function deleteRequest(id) {
		$
				.ajax({
					type : "POST",
					async : true,
					url : "${pageContext.request.contextPath}/admin/match/news/delete",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"id" : id
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