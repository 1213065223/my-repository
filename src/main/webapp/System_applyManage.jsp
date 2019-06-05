<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>报名管理</title>
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
			<div class="row-div form-data">
				<p style="width: 80px;">比赛名称</p>
				<input type="text" class="gd-input" id="match_name" />
			</div>
			<div class="row-div form-data">
				<p style="width: 80px;">手机号</p>
				<input type="text" class="gd-input" id="phone" />
			</div>
			<div class="row-div form-data">
				<p style="width: 80px;">邮箱</p>
				<input type="text" class="gd-input" id="email" />
			</div>
			<div>
				<button type="button" class="ivu-btn ivu-btn-primary"
					onclick="request()">查询</button>
			</div>
		</div>
		<div class="gd-table-div">
			<table border="0" cellspacing="0" cellpadding="0" class="gd-table"
				id="table">
				<tr>
					<th><div class="row-div">比赛名称</div></th>
					<th>
						<div class="row-div">姓</div>
					</th>
					<th>
						<div class="row-div">名</div>
					</th>
					<th>
						<div class="row-div">性别</div>
					</th>
					<th>
						<div class="row-div">生日</div>
					</th>
					<th>
						<div class="row-div">联系电话</div>
					</th>
					<th>
						<div class="row-div">照片头像</div>
					</th>
					<th>
						<div class="row-div">邮箱</div>
					</th>
					<th>
						<div class="row-div">参赛报名费用</div>
					</th>
					<th>
						<div class="row-div">状态</div>
					</th>
					<th>
						<div class="row-div">操作</div>
					</th>
				</tr>
				<tr>
					<td colspan="10">
						<div class="row-div">没有数据</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="zxf_pagediv"></div>

	</div>


	<div class="modle-div" id="Modal-fu" style="display: none;">
		<div class="modle-body" style="width: 700px;">
			<div class="row-div modle-head">
				<p>添加广告</p>
				<p class="p-cancel modle-cancel">x</p>
			</div>
			<div class="column-div modle-content">
				<div class="row-div content-div">
					<p style="width: 60px">审核</p>
					<div style="width: 70%;" class="flex-around">
						<div>
							<label for="radio_yes" class="row-div"> <input
								type="radio" name="radio-name" id="radio_yes" value="1" style="margin: 0px 5px;" checked="checked"/>
								<p style="width: 60px">审核通过</p>
							</label>
						</div>
						<div>
							<label for="radio_no" class="row-div"> <input
								type="radio" name="radio-name" id="radio_no" value="2" style="margin: 0px 5px;"/>
								<p style="width: 60px">审核拒绝</p>
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="row-div modle-bottom">
				<button type="button" class="cancel-but modle-cancel">取消</button>
				<button type="button" class="ok-but" onclick="Ok_click()">确定</button>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">
	var entity = {
		size : 10,
		pageNum : 1,
		id: null
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
	function Modal_show_click(id) {
		if (id===-1) return;
		entity.id=id
		$('#Modal-fu').show();
	}
	$('.modle-cancel').click(function() {
		$('#Modal-fu').hide();
	});
	function Ok_click () {
		auditRequest(entity.id,$("input[name^='radio-name']:checked").val())
	};
	request();
	function request() {
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/admin/match/enroll/list?size="
							+ entity.size
							+ "&page="
							+ entity.pageNum
							+ "&phone="
							+ $("#phone").val()
							+ "&email="
							+ $("#email").val()
							+ "&match_name="
							+ $("#match_name").val(),
					dataType : "json",
					success : function(data) {
						if (data.code === 200) {
							entity.pageNum = data.result.pages;
							dataList.table = data.result.list;
							let arr = data.result.list;
							let innhtml = '<tr>'
									+ '<th><div class="row-div">比赛名称</div></th>'
									+ '<th><div class="row-div">姓</div></th>'
									+ '<th><div class="row-div">名</div></th>'
									+ '<th><div class="row-div">性别</div></th>'
									+ '<th><div class="row-div">生日</div></th>'
									+ '<th><div class="row-div">联系电话</div></th>'
									+ '<th><div class="row-div">照片头像</div></th>'
									+ '<th><div class="row-div">邮箱</div></th>'
									+ '<th><div class="row-div">参赛报名费用</div></th>'
									+ '<th><div class="row-div">审核状态</div></th>'
									+ '<th><div class="row-div">比赛状态</div></th>'
									+ '<th><div class="row-div">赛事状态</div></th>'
									+ '<th><div class="row-div">操作</div></th>'
									+ '</tr>';
							arr
									.forEach(function(item, index) {
										let tml = item.enroll_type !== 2 ? '<button type="button" class="ivu-btn ivu-btn-disabled operation-but" onclick="Modal_show_click(-1)" style="cursor:not-allowed" disabled>审核</button>'
												: '<button type="button" class="ivu-btn ivu-btn-warning operation-but" onclick="Modal_show_click('+item.id+')">审核</button>'
										let is_end = item.is_end ? '已结束'
												: '进行中';
										let match_del = item.match_del > 0 ? '已删除'
												: '存在';
										let sex = item.sex === 1 ? '男' : '女'
										innhtml += '<tr>'
												+ '<td><div class="row-div">'
												+ item.match_name
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.surname
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.user_name
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ sex
												+ '</div></td>'
												+ '<td style="width:150px;"><div class="row-div" >'
												+ item.birthday
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.phone
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ '<img src="'+item.head_image+'" style="width: 40px;height: 40px;" />'
												+ '</div></td>'
												+ '<td style="width:150px;"><div class="row-div" >'
												+ item.email
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.cost
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ item.user_status
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ is_end
												+ '</div></td>'
												+ '<td><div class="row-div">'
												+ match_del
												+ '</div></td>'
												+ '<td style="width: 230px;"><div class="row-div">'
												+ tml
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
	
	function auditRequest (id, number) {
		let type = number==1 ? 3 : 4
		$
		.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/admin/match/enroll/verify",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"id":id,
				"enrollType":type
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
					$('#Modal-fu').hide();
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