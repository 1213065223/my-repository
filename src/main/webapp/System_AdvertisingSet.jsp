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
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/dialog.css" />
<link rel="stylesheet" type="text/css" href="themes/default/default.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.dialog-modle.js" type="text/javascript"
	charset="utf-8"></script>
<script charset="utf-8" type="text/javascript"
	src="js/kindeditor-min.js" charset="utf-8"></script>
<script charset="utf-8" type="text/javascript" src="lang/zh_CN.js"
	charset="utf-8"></script>
<script>
var editor = null;
KindEditor.ready(function(K) {
	editor = K.create('textarea[name="content"]', {
		autoHeightMode : true,
		afterCreate : function() {
			this.loadPlugin('autoheight');
		}
	});
});
		</script>
</head>
<body>
	<div class="System_AdvertisingSet">
		<div class="flex-start form-div">
			<div>
				<button type="button" class="ivu-btn ivu-btn-warning" id="insert"
					onclick="(add_click())">添加</button>
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
						<div class="row-div gd-table-th">图片</div>
					</th>
					<th>
						<div class="row-div">图片位置</div>
					</th>
					<th>
						<div class="row-div">连接方式</div>
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


		<div class="modle-div" id="Modal-fu" style="display: none;">
			<div class="modle-body" style="width: 700px;">
				<div class="row-div modle-head">
					<p>添加广告</p>
					<p class="p-cancel modle-cancel">x</p>
				</div>
				<div class="column-div modle-content">
					<div class="row-div content-div">
						<p>添加图片</p>
						<div style="width: 60%;">
							<label for="file" class="file-label row-div">
								<p>上传图片</p> <input type="file" id="file" style="display: none;"
								onchange="file_change(this.files[0])" />
							</label>
						</div>
					</div>
					<div class="row-div content-div">
						<p>选择位置</p>
						<div style="width: 60%;">
							<select name="1" class="select" id="imageLocation">
								<option value="1">
									<div class="select-option">banner</div>
								</option>
								<option value="2">理事</option>
								<option value="3">赞助商</option>
								<option value="4">赛事冠名广告位</option>
							</select>
						</div>
					</div>
					<div class="row-div content-div">
						<p>连接方式</p>
						<div style="width: 60%;" class="flex-around">
							<label for="radio-1" class="row-div">
								<p style="margin-right: 10px;">超连接</p> <input type="radio"
								id="radio-1" name="radio-name" value="1" checked="checked" />
							</label> <label for="radio-2" class="row-div">
								<p style="margin-right: 10px;">富文本</p> <input type="radio"
								id="radio-2" name="radio-name" value="2" />
							</label>
						</div>
					</div>
					<div class="row-div content-div" id="hyperlink"
						style="display: flex;">
						<p>超链接</p>
						<div style="width: 60%;">
							<input type="text" class="gd-input" style="height: 25px;"
								id="hrefUrl" />
						</div>
					</div>
					<div class="row-div content-div" id="richText"
						style="align-items: flex-start; display: none;">
						<p>富文本</p>
						<div style="width: 60%; position: relative;" class="row-div">
							<form>
								<textarea name="content" style="width: 100%; height: 200px;"></textarea>
							</form>
						</div>
					</div>
				</div>
				<div class="row-div modle-bottom">
					<button type="button" class="cancel-but modle-cancel">取消</button>
					<button type="button" class="ok-but" onclick="Ok_click()">确定</button>
				</div>
			</div>
		</div>


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
$('input[name=radio-name]').click(function () {
	if ($(this).val() === '1') {
		$('#richText').css('display','none');
		$('#hyperlink').css('display','flex');
	} else {
		$('#hyperlink').css('display','none');
		$('#richText').css('display','flex');
	};
})
$(".zxf_pagediv").createPage({
	backfun : function (e) {
		entity.size = e.current;
		request();
	}
});
$('.modle-cancel').click(function () {
	$('#Modal-fu').hide();
});
function request () {
	let nick_name = $("#nick_name").val();
	let phone = $("#phone").val();
	$.ajax({
		type : "GET",
		url : "${pageContext.request.contextPath}/index/list?size=" + 10 + "&nick_name="+nick_name+"&phone="+phone,
		dataType : "json",
		success : function (data) {
			if (data.code === 200) {
				entity.pageNum = data.result.pages;
				dataList.table = data.result.all;
				let arr = data.result.all;
				let innhtml = '<tr><th><div class="row-div gd-table-th">图片</div></th><th><div class="row-div">图片位置</div></th><th><div class="row-div">连接方式</div></th><th><div class="row-div">状态</div></th><th><div class="row-div">创建时间</div></th><th><div class="row-div">操作</div></th></tr>'
				arr.forEach( function (item,index) {
					let isHidden = item.isHidden ? '禁用': '显示';
					innhtml += '<tr>' +
					'<td><div class="row-div"><img src="'+item.imageUrl+'" style="widht:80px;height:80px;"/></div></td>'+
					'<td><div class="row-div">'+item.imageLocationDetail+'</div></td>'+
					'<td><div class="row-div">'+item.hrefUrl+'</div></td>'+
					'<td><div class="row-div">'+(item.isHidden ? '禁用': '显示')+'</div></td>'+
					'<td><div class="row-div">'+item.createTime+'</div></td>'+
					'<td style="width: 200px;"><div class="row-div">'+
							'<button type="button" class="ivu-btn ivu-btn-info operation-but"data-modal="modal-1" onclick="compile_click()">编辑</button>'+
							'<button type="button" class="ivu-btn ivu-btn-error">删除</button>'+
						'</div></td></tr>';
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
function add_click () {
	$('#Modal-fu').show();
}
var file_Entity = {};
let file_change = (file) => {
	let reader = new FileReader()
	file_Entity ={
		file: file
	};
	 reader.onload = (e) => {
	        file_Entity = {
	          name: file.name,
	          file: file,
	          imgOrigin: e.target.result
	        };
	      };
	      reader.readAsDataURL(file);
};
function UploadImage () {
	let entity = null;
	 let formdata = new FormData();
    formdata.append("file", file_Entity.file)
	$.ajax({
		type : "POST",
		url : "${pageContext.request.contextPath}/file/upload",
		data: formdata,
		contentType: false,
		 processData: false,
		 async: false,
		success : function (data) {
			if (data.code === 200) {
				entity = data.result;
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
	return entity;
}
function Ok_click () {
	let url = UploadImage();
	let imageLocation = $("#imageLocation").val();
	let hrefUrl = null;
	let jumpType = null;
	if ($('input[name=radio-name]:checked').val() ==='1') {
		hrefUrl = $("#hrefUrl").val();
		jumpType = 0
	} else {
		hrefUrl = editor.html();
		jumpType = 1
	};
	$.ajax({
		type : "POST",
		async: true,
		url : "${pageContext.request.contextPath}/admin/index",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		data: JSON.stringify({
			"imageUrl":url,
			"hrefUrl":hrefUrl,
			"imageLocation": imageLocation,
			"jumpType": jumpType,
			"isHidden": false
		}),
		success : function (data) {
			if (data.code === 200) {
				entity = 'sss';
				console.log(data)
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
	/* spop({
		template : '3 seconds autoclose',
		autoclose : 3000
	}); */
	
</script>
</html>