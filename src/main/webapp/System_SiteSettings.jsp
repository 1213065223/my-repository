<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>网站设置</title>
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/System_public.css" />
<link rel="stylesheet" type="text/css" href="css/System_home.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="js/home.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$.cookie('active-name', 'SiteSettings');
	$.cookie('active-src', 'System_SiteSettings');
</script>
</head>
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
					</span> <span> <span class="ivu-breadcrumb-item-link">系统管理</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span> <span> <span class="ivu-breadcrumb-item-link">网站设置</span> <span
						class="ivu-breadcrumb-item-separator">/</span>
					</span>
				</div>

				<div class="ivu-card ivu-card-body" id="ivu-card-div">
					<div style="width: 100%;" class="column-center">
						<form class="form-model column-start" label-width="120"
							id="form-model" style="width: 100%;">
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>网站名称</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="webName" autocomplete="off" spellcheck="false"
										v-model="webName" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>网址</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="website" autocomplete="off" spellcheck="false"
										v-model="website" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>网站描述</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="webDescribe" autocomplete="off" spellcheck="false"
										v-model="webDescribe" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>地区</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="region" autocomplete="off" spellcheck="false"
										v-model="region" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>公司详细地址</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="address" autocomplete="off" spellcheck="false"
										v-model="address" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>电话热线</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="phone" autocomplete="off" spellcheck="false"
										v-model="phone" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>备案</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="authority" autocomplete="off" spellcheck="false"
										v-model="authority" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>版权信息</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="copyright" autocomplete="off" spellcheck="false"
										v-model="copyright" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>银行账号</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="account" autocomplete="off" spellcheck="false"
										v-model="account" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>银行名称</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="bankName" autocomplete="off" spellcheck="false"
										v-model="bankName" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>开户行</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="bank" autocomplete="off" spellcheck="false" v-model="bank" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>会社名称</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="society" autocomplete="off" spellcheck="false"
										v-model="society" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>注意事项</span>
								</p>
								<div class="form-input-parent">
									<input type="text" class="ivu-input ivu-input-default"
										id="attention" autocomplete="off" spellcheck="false"
										v-model="attention" />
								</div>
							</div>
							<div class="form-model-div flex-start">
								<p class="flex-end form-p">
									<span class="form-span">*</span> <span>排行榜规则设定</span>
								</p>
								<div class="form-input-parent">
									<input type="number" class="ivu-input ivu-input-default"
										id="weeks" autocomplete="off" spellcheck="false"
										v-model="weeks" />
								</div>
							</div>
							<div class="form-model-div row-div" style="width: 38%;">
								<button type="button"
									class="ivu-btn ivu-btn-primary ivu-btn-small"
									style="width: 50%; margin-right: 5px;" onclick="add_model()">保存</button>
							</div>
						</form>
					</div>



				</div>
			</div>
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
									<p>确定要保存信息吗?</p>
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

</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			user_name : "${admin_user.nickname}",
			webName : '',//  网站名称
			website : '',//网址
			webDescribe : '',//网站描述
			region : '',//地区
			address : '',//公司详细地址
			phone : '',//电话热线
			authority : '',//备案
			copyright : '',//版权信息
			account : '',//银行账号
			bankName : '',//银行名称
			bank : '',//开户行
			society : '',//会社名称
			weeks : '',
			attention : ''//注意事项
		}
	});
	Request();
	function Request() {
		let url = "/admin/config/detail";
		$.ajax({
			type : 'get',
			url : "${pageContext.request.contextPath}" + url,
			dataType : "json",
			data : {},
			success : function(res) {
				if (res.code === 200) {
					console.log(res)
					vm.webName = res.result.config.webName;//  网站名称
					vm.website = res.result.config.website;//网址
					vm.webDescribe = res.result.config.webDescribe;//网站描述
					vm.region = res.result.config.region;//地区
					vm.address = res.result.config.address;//公司详细地址
					vm.phone = res.result.config.phone;//电话热线
					vm.authority = res.result.config.authority;//备案
					vm.copyright = res.result.config.copyright;//版权信息
					vm.account = res.result.config.account;//银行账号
					vm.bankName = res.result.config.bankName;//银行名称
					vm.bank = res.result.config.bank;//开户行
					vm.society = res.result.config.society;//会社名称
					vm.attention = res.result.config.attention;//注意事项
					if (res.result.week) {
						vm.weeks = res.result.week.weeks;
					}
					//addTable(res.result)
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(e) {
				console.log(e)
			}
		});
	};

	let RegExpEntity = {
		webName : {
			RegExptype : 'string',
			message : '请输入网站名称',
			trigger : 'blur',
			id : 'webName'
		},
		website : {
			RegExptype : 'string',
			message : '请输入网址',
			trigger : 'blur',
			id : 'website'
		},
		webDescribe : {
			RegExptype : 'string',
			message : '请输入网站描述',
			trigger : 'blur',
			id : 'webDescribe'
		},
		region : {
			RegExptype : 'string',
			message : '请输入地区',
			trigger : 'blur',
			id : 'region'
		},
		address : {
			RegExptype : 'string',
			message : '请输入公司详细地址',
			trigger : 'blur',
			id : 'address'
		},
		phone : {
			RegExptype : 'string',
			message : '请输入电话热线',
			trigger : 'blur',
			id : 'phone'
		},
		authority : {
			RegExptype : 'string',
			message : '请输入备案',
			trigger : 'blur',
			id : 'authority'
		},
		copyright : {
			RegExptype : 'string',
			message : '请输入版权信息',
			trigger : 'blur',
			id : 'copyright'
		},
		account : {
			RegExptype : 'string',
			message : '请输入银行账号',
			trigger : 'blur',
			id : 'account'
		},
		bankName : {
			RegExptype : 'string',
			message : '请输入银行名称',
			trigger : 'blur',
			id : 'bankName'
		},
		bank : {
			RegExptype : 'string',
			message : '请输入开户行',
			trigger : 'blur',
			id : 'bank'
		},
		society : {
			RegExptype : 'string',
			message : '请输入会社名称',
			trigger : 'blur',
			id : 'society'
		},
		attention : {
			RegExptype : 'string',
			message : '请输入注意事项',
			trigger : 'blur',
			id : 'attention'
		},
		weeks : {
			RegExptype : 'string',
			message : '请输入排行榜规则设定',
			trigger : 'blur',
			id : 'weeks'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}
	function add_model() {
		let entityt = vm._data;
		let boo = true;
		for ( let i in entityt) {
			if (!entityt[i]) {
				RegExpEntity[i].Event.label_error(document.getElementById(i));
				boo = false;
			}
		}
		if (boo) {
			$("#transfer-dom").toggle(300);
		}
	};
	function transfer_ok() {
		insertRequesr();
		insertRequesrweek();
	};
	function transfer_cancel() {
		$("#transfer-dom").toggle(300);
	};
	function insertRequesr() {
		let entity = {};
		for ( let i in vm._data) {
			if (i !== 'weeks' && i!=='user_name') {
				entity[i] = vm._data[i];
			}
		}
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/config",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(entity),
			success : function(data) {
				if (data.code === 200) {
					$("#transfer-dom").toggle(300);
					Request();
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
				}else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				} else {
					spop({
						template : data.message,
						group : 'submit-satus',
						style : 'warning',
						autoclose : 5000
					});
				}
				;

			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template : '添加接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	}
	function insertRequesrweek() {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/admin/config/week",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				weeks: vm.weeks
			}),
			success : function(data) {
				if (data.code !== 200) {
					spop({
						template : data.message,
						group : 'submit-satus',
						style : 'warning',
						autoclose : 5000
					});
				} else if (res.code === 100005) {
					window.location.href = "System_login.jsp";
				}
			},
			error : function(jqXHR) {
				console.log("Error: " + jqXHR.status);
				spop({
					template : '添加接口访问失败,请与系统管理员联系',
					group : 'submit-satus',
					style : 'error',
					autoclose : 5000
				});
			}
		});
	}
</script>
</html>
