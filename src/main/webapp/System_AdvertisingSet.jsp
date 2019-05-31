<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_AdvertisingSet.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="System_AdvertisingSet">
		<div class="flex-start form-div">
			<div>
				<button type="button" class="ivu-btn ivu-btn-warning" id="insert">添加</button>
			</div>
			<div class="row-div form-data">
				<p style="width: 80px;">昵称</p>
				<input type="text" class="gd-input" id="nick_name" />
			</div>
			<div class="row-div form-data">
				<p style="width: 80px;">手机号</p>
				<input type="text" class="gd-input" id="phone" />
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
					<th>
						<div class="row-div gd-table-th">账号</div>
					</th>
					<th>
						<div class="row-div">手机</div>
					</th>
					<th>
						<div class="row-div">昵称</div>
					</th>
					<th>
						<div class="row-div">状态</div>
					</th>
					<th>
						<div class="row-div">创建时间</div>
					</th>
					<th>
						<div class="row-div">操作</div>
					</th>
				</tr>
				<tr>
					<td>
						<div class="row-div">Data</div>
					</td>
					<td>
						<div class="row-div">Data</div>
					</td>
					<td>
						<div class="row-div">Data</div>
					</td>
					<td>
						<div class="row-div">Data</div>
					</td>
					<td>
						<div class="row-div">Data</div>
					</td>
					<td style="width: 200px;">
						<div class="row-div">
							<button type="button" class="ivu-btn ivu-btn-info operation-but"
								data-modal="modal-1">编辑</button>
							<button type="button" class="ivu-btn ivu-btn-error">删除</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="md-overlay"></div>
	</div>
</body>
<script type="text/javascript">
request();
var entity = {
		size: 1,
		pageNum: 0
};
var dataList = {
		table: []
};
function request () {
	let nick_name = $("#nick_name").val();
	let phone = $("#phone").val();
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/index/list?size=" + 1 + "&nick_name="+nick_name+"&phone="+phone,
		dataType : "json",
		success : (data) => {
			if (data.code === 200) {
				entity.pageNum = data.result.pages;
				dataList.table = data.result.list;
				let arr = data.result.list;
				let innhtml ='<tr><th><div class="row-div gd-table-th">账号</div></th><th><div class="row-div">手机</div></th><th><div class="row-div">昵称</div></th><th><div class="row-div">状态</div></th><th><div class="row-div">创建时间</div></th><th><div class="row-div">操作</div></th></tr>';
				arr.forEach((item,index) => {
					let isStop = !item.isStop ? '启用' : '禁用';
					let isStopstr = item.isStop ? '启用' : '禁用';
					let JSONstr = JSON.stringify(item);
					innhtml +="<tr>";
					innhtml +="<td><div class='row-div'>"+item.loginName+"</div></td>";
					innhtml +="<td><div class='row-div'>"+item.phone+"</div></td>";
					innhtml +="<td><div class='row-div'>"+item.nickname+"</div></td>";
					innhtml +="<td><div class='row-div'>"+isStop+"</div></td>";
					innhtml +="<td><div class='row-div'>"+item.createTime+"</div></td>";
					
					innhtml +="<td style='width: 200px;'><div class='row-div'>"+
					"<button type='button' class='ivu-btn ivu-btn-info operation-but' onclick='compile("+JSONstr+")' data-modal='modal-1' href='javascript:;'>编辑</button><button type='button' class='ivu-btn ivu-btn-error'  onclick='deleteRequest("+JSONstr+")'>"+isStopstr+"</button></div></td>";
					innhtml +="</tr>";
					
				})
				$("#table>tbody").html(innhtml);
				$(".zxf_pagediv").createPage({
					pageNum : data.result.pages,
					current : data.result.pageNum,
					total: data.result.total
				});
			} else {
				spop({template: data.message,group: 'submit-satus',style: 'warning',autoclose: 5000});
			}
		},
		error : function(jqXHR) {
			console.log("Error: " + jqXHR.status);
			spop({
				template: '查询接口访问失败,请与系统管理员联系',
				group: 'submit-satus',
				style: 'error',
				autoclose: 5000
			});
		}
	});
}

	/* spop({
		template : '3 seconds autoclose',
		autoclose : 3000
	}); */
</script>
</html>