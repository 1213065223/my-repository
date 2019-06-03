<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_associationAffiche.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/dialog.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.dialog.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>

<title>协会公告</title>
</head>
<body>
	<div>
		<div class="gd-table-div">
			<table cellspacing="0" cellpadding="0" class="gd-table" id="table">
				<tr class="gd-table-tr">
					<th>
						<div class="row-div gd-table-th">标题</div>
					</th>
					<th>
						<div class="row-div">介绍</div>
					</th>
					<th>
						<div class="row-div">发布时间</div>
					</th>
					<th>
						<div class="row-div">操作</div>
					</th>
				</tr>
				<tr class="gd-table-tr">
					<td colspan="4">
						<div class="row-div">没有数据</div>
					</td>
				</tr>
			</table>
		</div>
		<!-- 分页 -->
		<div class="zxf_pagediv"></div>
	</div>
</body>
<script type="text/javascript">
let entity ={
		page: 1,
		size: 10
}
let data_arr = []
	request();
	$(".zxf_pagediv").createPage({
		backfun : function(e) {
			entity.page = e.current;
			request();
		}
	});
	function request() {
		$
				.ajax({
					type : "get",
					async : true,
					url : "${pageContext.request.contextPath}/index/announcement?page="
							+ entity.page + "&size=" + entity.size,
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(res) {
						if (res.code === 200) {
							data_arr = res.result.list
							let arr = res.result.list;
							let innhtml = '<tr class="gd-table-tr"><th><div class="row-div gd-table-th">标题</div></th>'
									+ '<th><div class="row-div">介绍</div></th>'
									+ '<th><div class="row-div">发布时间</div></th>'
									+ '<th><div class="row-div">操作</div></th></tr>';
							arr
									.forEach(function(item, index) {
										innhtml += '<tr class="gd-table-tr">'
												+ '<td><div class="row-div">'
												+ item.title
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.introduce
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.createTime
												+ '</div></td>'
												+ '<td style="width: 200px;"><div class="row-div">'
												+ '<button type="button" class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click('+item.id+')">编辑</button>'
												+ '<button type="button" class="ivu-btn ivu-btn-error" onclick="hint('+item.id+')">删除</button>'
												+ '</div></td></tr>';
									});
							$("#table>tbody").html(innhtml);
							$(".zxf_pagediv").createPage({
								pageNum : res.result.pages,
								current : res.result.pageNum,
								total : res.result.total
							});
						} else {
							spop({
								template : res.message,
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
	
	function compile_click (id) {
		parent.$(window.parent.document).find('.iframe').attr('src','http://localhost:9090/billiard/System_Add_associationAffiche.jsp?id='+id);
	}
	function hint (id) {
		$.dialog.confirm({content:"你确定要删除吗",callback:"callback("+id+");"});
	};
	function callback (id) {
		deleteRequest(id);
	}
	function deleteRequest (id) {
		$
		.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/association/announcement/delete",
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