<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>添加赛事</title>
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css"
	href="css/System_Add_CompetitionList.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />

<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
</head>
<script>
	KindEditor.plugin('image', function(K) {
		var self = this, name = 'image';
		self.clickToolbar(name, function() {
			document.getElementById('file').click()
		});
	})
	var editor = null;
	KindEditor.ready(function(K) {
		editor = K.create('.content', {
			autoHeightMode : true,
			afterCreate : function() {
				this.loadPlugin('autoheight');
			}
		});
	});
</script>
<body>
	<div class="Add_CompetitionList column-div">
		<div class="column-start Add_CompetitionList-div-1">
			<div class="flex-start">
				<p>比赛名称</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="matchName" />
			</div>
			<div class="flex-start">
				<p>组织机构</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="organization" />
			</div>
			<div class="flex-start">
				<p>比赛积分</p>
				<input type="number" class="gd-input" style="width: 40%;"
					id="enrollCost" />
			</div>
			<div class="flex-start">
				<p>比赛地点</p>
				<input type="text" class="gd-input" style="width: 40%;"
					id="matchPlace" />
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>比赛项目内容</p>
				<textarea rows="3" cols="20" style="width: 40%;" class="gd-textarea"
					id="matchContent"></textarea>
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>规则</p>
				<textarea rows="3" cols="20" style="width: 40%;" class="gd-textarea"
					id="planning"></textarea>
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>日程安排</p>
				<textarea rows="3" cols="20" style="width: 40%;" class="gd-textarea"
					id="schedule"></textarea>
			</div>
			<div class="flex-start">
				<p>比赛日期</p>
				<div class="jeinpbox">
					<input type="text" class="jeinput" id="timeQuantum"
						placeholder="请选择比赛日期范围" style="width: 300px;">
				</div>
			</div>
			<div class="flex-start">
				<p>比赛时间</p>
				<div class="jeinpbox">
					<input type="text" class="jeinput" id="matchTime"
						placeholder="请选择比赛时间">
				</div>

			</div>
			<div class="flex-start">
				<p>开放报名时间</p>
				<div class="jeinpbox">
					<input type="text" class="jeinput" id="enrollTime"
						placeholder="请选择开放报名时间">
				</div>
			</div>
			<div class="flex-start">
				<p>报名截止时间</p>
				<div class="jeinpbox">
					<input type="text" class="jeinput" id="enrollTimeEnd"
						placeholder="请选择报名截止时间">
				</div>
			</div>
			<div class="flex-start" style="align-items: flex-start;">
				<p>文本详情</p>
				<textarea class="content"
					style="width: 40%; height: 200px; visibility: hidden;"></textarea>
			</div>
			<div class="flex-start" style="width: 50%;">
				<div class="row-div" style="width: 100%;">
					<button class="ivu-btn" style="margin-right: 20px;"
						onclick="cancel()">取消</button>
					<button class="ivu-btn ivu-btn-primary" onclick="insertRequest()">确定</button>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	jeDate("#timeQuantum", {
		format : "YYYY年MM月DD日",
		multiPane : false,
		range : " - "
	});
	jeDate("#matchTime", {
		format : "YYYY-MM-DD hh:mm:ss"
	});
	jeDate("#enrollTime", {
		format : "YYYY-MM-DD hh:mm:ss"
	});
	jeDate("#enrollTimeEnd", {
		format : "YYYY-MM-DD hh:mm:ss"
	});
	function cancel() {
		editor.html('');
		$("#matchName").val('');
		$("#organization").val('');
		$("#matchContent").val('');
		$("#matchTime").val('');
		$("#matchPlace").val('');
		$("#planning").val('');
		$("#schedule").val('');
		$("#enrollTime").val('');
		$("#enrollTimeEnd").val('');
		$("#timeQuantum").val('');
		$("#enrollCost").val('');
	};
	function insertRequest() {
		$
				.ajax({
					type : "POST",
					async : true,
					url : "${pageContext.request.contextPath}/admin/match",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					data : JSON.stringify({
						"matchName" : $("#matchName").val(),
						"organization" : $("#organization").val(),
						"matchContent" : $("#matchContent").val(),
						"matchTime" : $("#matchTime").val(),
						"matchPlace" : $("#matchPlace").val(),
						"planning" : $("#planning").val(),
						"schedule" : $("#schedule").val(),
						"enrollTime" : $("#enrollTime").val(),
						"enrollTimeEnd" : $("#enrollTimeEnd").val(),
						"timeQuantum" : $("#timeQuantum").val(),
						"enrollCost" : $("#enrollCost").val(),
						"details" : editor.html()
					}),
					success : function(data) {
						if (data.code === 200) {
							spop({
								template : '成功',
								group : 'submit-satus',
								style : 'success',
								autoclose : 5000
							});
							parent
									.$(window.parent.document)
									.find('.iframe')
									.attr('src',
											'http://localhost:9090/billiard/System_CompetitionList.jsp');
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