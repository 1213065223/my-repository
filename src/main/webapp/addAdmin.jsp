<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link rel="stylesheet" type="text/css" href="css/System_add_admin.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.dialog.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript"
	charset="utf-8"></script>
<title></title>
</head>
<body>
	<div class=System_add_admin>

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
		<div class="zxf_pagediv"></div>
		<a href="javascript:;" class="md-trigger btn btn-primary btn-sm"
			data-modal="modal-1" id="data-modal" style="display: none">编辑</a>
	</div>
	<div class="md-modal md-effect-1" id="modal-1">
		<div class="md-content">
			<h3 id="title">用户修改</h3>
			<div>
				<ul class="md-modal-ul">
					<li class="flex-start" id="loginName">
						<p>用户名</p> <input type="text" class="gd-input"></input>
					</li>
					<li class="flex-start" id="password">
						<p>密码</p> <input type="text" class="gd-input"></input>
					</li>
					<li class="flex-start" id="nickname">
						<p>昵称</p> <input type="text" class="gd-input"></input>
					</li>
					<li class="flex-start" id="phone">
						<p>手机号</p> <input type="text" class="gd-input"></input>
					</li>
					<li class="flex-start" id="">
						<p>选择用户组</p> <select class="gd-input">
							<option value="1">管理员</option>
					</select>
					</li>
					<li class="flex-start label-radio" id="isStop">
						<p>启用状态</p> <label for="ok" class="row-div"> <span>启用</span>
							<input type="radio" value="1" name="radio-1" id="ok" />

					</label> <label for="no" class="row-div "> <span>禁用</span> <input
							type="radio" value="2" name="radio-1" id="no" />
					</label>
					</li>
				</ul>
				<div class="flex-around">
					<button class="md-close ivu-btn" id="cancel">取消</button>
					<button class="ivu-btn ivu-btn-primary" onclick="butupdata()">提交</button>
				</div>
			</div>
		</div>
	</div>
	<div class="md-overlay"></div>
</body>
<script src="js/classie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/modalEffects.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var entity = {
			size: 1,
			pageNum: 0
	};
	var dataList = {
			table: []
	};
	$('#insert').click(function () {
		$("#title").val('添加用户');
		$("#loginName>input").val('');
		$("#password").css('display','flex');
		$("#phone>input").val('');
		$("#nickname>input").val('');
		$("#isStop").css('display','none');
		document.getElementById('data-modal').click();
	});
	let request = function () {
		let nick_name = $("#nick_name").val();
		let phone = $("#phone").val();
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/admin/list?size=" + entity.size + "&nick_name="+nick_name+"&phone="+phone,
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					entity.pageNum = data.result.pages;
					dataList.table = data.result.list;
					let arr = data.result.list;
					let innhtml ='<tr><th><div class="row-div gd-table-th">账号</div></th><th><div class="row-div">手机</div></th><th><div class="row-div">昵称</div></th><th><div class="row-div">状态</div></th><th><div class="row-div">创建时间</div></th><th><div class="row-div">操作</div></th></tr>';
					arr.forEach(function(item,index) {
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
	request();
	$(".zxf_pagediv").createPage({
						backfun : function(e) {
							entity.size = e.current;
							request();
						}
					});
	let userId = null;
	let compile = function(value)  {
		userId = value.id
		$("#title").val('用户修改');
		$("#loginName>input").val(value.loginName);
		$("#password").css('display','none');
		$("#phone>input").val(value.phone);
		$("#nickname>input").val(value.nickname);
		if (value.isStop) {
			$("#ok").removeAttr("checked");
			$("#no").attr('checked',true);
		} else {
			$("#no").removeAttr("checked");
			$("#ok").attr('checked',true);
			
		}
		document.getElementById('data-modal').click();
		/* $("#data-modal").click() */
	}
	let deleteRequest = (value) => {
		let entity = value;
		//console.log();
		let str = JSON.stringify(entity);
		$.dialog.confirm({content:entity.isStop?"你确定要禁用吗":"你确定要启用吗", callback:"DisabledRequesr("+entity.id+","+entity.isStop+");"});
	}
	function callback(id,isStop){
		DisabledRequesr(id,isStop);
	}
	function DisabledRequesr (id,isStop) {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/update",
			 contentType: "application/json; charset=utf-8",
			 dataType: "json",
			data: JSON.stringify({
				"isStop":isStop,
				"id":id
			}),
			success : function(data)  {
				console.log(data)
				if (data.code === 200) {
					request()
				} else {
					spop({template: data.message,group: 'submit-satus',style: 'warning',autoclose: 5000});
				}
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template: '禁用或启用接口访问失败,请与系统管理员联系',
					group: 'submit-satus',
					style: 'error',
					autoclose: 5000
				});
			}
		});
	}
	function insertRequesr () {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin",
			 contentType: "application/json; charset=utf-8",
			 dataType: "json",
			data: JSON.stringify({
				"nickname":$("#nickname>input").val(),
				"loginName":$("#loginName>input").val(),
				"password":$("#password>input").val(),
				"phone":$("#phone>input").val()
			}),
			success : function(data)  {
				if (data.code === 200) {
					request();
					document.getElementById('cancel').click();
					spop('<h4 class="spop-title">成功</h4>'+data.message, 'success');
				} else {
					spop({
						template: data.message,
						group: 'submit-satus',
						style: 'warning',
						autoclose: 5000
					});
				};
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template: '添加接口访问失败,请与系统管理员联系',
					group: 'submit-satus',
					style: 'error',
					autoclose: 5000
				});
			}
		});
	}
	function butupdata (){
		if ($("#title").val() === '添加用户') {
			insertRequesr();
		} else {
			updataRequesr();
		};
	}
	function updataRequesr () {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/update",
			 contentType: "application/json; charset=utf-8",
			 dataType: "json",
			data: JSON.stringify({
				"nickname":$("#nickname>input").val(),
				"loginName":$("#loginName>input").val(),
				"password":"",
				"phone":$("#phone>input").val(),
				"id": userId,
				"isStop":$("input[name='radio-1']:checked").val()=== '1' ? false : true
			}),
			success : function(data)  {
				if (data.code === 200) {
					request();
					document.getElementById('cancel').click();
					spop('<h4 class="spop-title">成功</h4>'+data.message, 'success');
				} else {
					spop({
						template: data.message,
						group: 'submit-satus',
						style: 'warning',
						autoclose: 5000
					});
				};
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template: '修改接口访问失败,请与系统管理员联系',
					group: 'submit-satus',
					style: 'error',
					autoclose: 5000
				});
			}
		});
	}
	
	
</script>
</html>
