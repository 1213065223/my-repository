<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>积分排名管理</title>
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
	$.cookie('active-name', 'With-integral');
	$.cookie('active-src', 'System_integral');
</script>
<style type="text/css">
.je-select {
	width: 100%;
}
</style>
</head>
<body id="mvvm">
	<div>
		<div class="menuBar" id="menuBar">
			<iframe src="menuBar.jsp" class="iframe" id="iframe" scrolling="yes"
				frameborder="0"></iframe>
		</div>
		<div class="ivu-layout-content ivu-layout" style="margin-left: 200px;"
			id="mvvm">
			<div class="layout-header flex-between">
				<div></div>
				<div style="margin-right: 20px;" class="row-div">
					<p class="p-hover row-div"
						style="height: auto; margin-right: 20px;">
						<i class="ivu-icon ivu-icon-ios-contact-outline"
							style="font-size: 20px"></i> <span>{{user_name}}</span>
					</p>
					<p class="p-hover exit row-div" style="height: auto;">
						<i class="ivu-icon ivu-icon-ios-log-out" style="font-size: 20px"></i>
						<span>退出</span>
					</p>
				</div>
			</div>
			<!-- style="padding: 0px 16px 16px;" -->
			<div class="layout-content" style="padding: 0px 16px 16px;">
				<div class="ivu-breadcrumb" style="padding: 16px 16px;">
					<span> <span class="ivu-breadcrumb-item-link">首页</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">排名管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">积分排名管理</span>
						<span class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">


					<!-- <form autocomplete="off"
						class="ivu-form ivu-form-label-right ivu-form-inline">
						<div class="ivu-form-item ivu-form-item-required">
							<div class="ivu-form-item-content">
								<button type="button" class="ivu-btn ivu-btn-warning"
									onclick="Modal_show()">
									<span>添加管理员</span>
								</button>
							</div>
						</div>
					 <div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">昵称</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="name" />
							</div>
						</div>
						<div class="ivu-form-item ">
							<div class="ivu-form-item-content row-div" style="width: 260px">
								<p style="width: 100px;" class="ivu-form-item-label">手机号</p>
								<input type="text" spellcheck="false" autocomplete="off"
									class="ivu-input ivu-input-default" v-model="number" />
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
					</form> -->
					<div class="ivu-table-body">
						<table cellspacing="0" cellpadding="0" border="0"
							style="width: 100%" class="ivu-table ivu-table-border">
							<tbody class="ivu-table-tbody" id="tbody">
								<tr class="ivu-table-row">
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">排名</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">头像</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">姓名</div>
									</th>
									<th class="ivu-table-column-center">
										<div class="ivu-table-cell">积分</div>
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

				</div>
			</div>
		</div>
	</div>


</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name : "${admin_user.nickname}",
		}
	});
	Request();
	function Request() {
		let url = "/match/rank/integral";
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					console.log(res)
					addTable(res.result)
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(e) {
				console.log("Error: " + e.status);
				spop({
					template : '查询接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	};
	function addTable(arr) {
		let html = '<tr class="ivu-table-row">'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">排名</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">头像</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">姓名</div></th>'
				+ '<th class="ivu-table-column-center">'
				+ '<div class="ivu-table-cell">积分</div></th></tr>';

		arr
				.forEach(function(item, index) {
					html += '<tr class="ivu-table-row">'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ item.rank
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">'
							+ '<img src="'+item.head_image+'" style="width: 50px;height: 50px;"/>'
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">' + item.nickname
							+ '</div></td>'
							+ '<td class="ivu-table-column-center">'
							+ '<div class="ivu-table-cell">' + item.s
							+ '</div></td></tr>';

				})
		$("#tbody").html(html);
	}
</script>
</html>
