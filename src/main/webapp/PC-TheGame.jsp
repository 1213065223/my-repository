<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>本场比赛</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/TheGame.css" />
<link rel="stylesheet" type="text/css" href="css/zxf_page.css" />
<link rel="stylesheet" type="text/css" href="skin/jedate.css" />
<link rel="stylesheet" type="text/css"
	href="iview/dist/styles/iview.css" />
<link rel="stylesheet" type="text/css" href="css/spop.css" />
<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/zxf_page.js" type="text/javascript" charset="utf-8"></script>
<script src="src/jedate.js" type="text/javascript" charset="utf-8"></script>
<script src="js/mvvm.js" type="text/javascript" charset="utf-8"></script>
<script src="js/formRegExp.js" type="text/javascript" charset="utf-8"></script>
<script src="js/spop.js" type="text/javascript" charset="utf-8"></script>
<script src="js/PC-home.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div id="mvvm">
		<div class="login-div-1 column-div">
			<div class="login-div-1-2">
				<p class="div-hover" onclick="href_url('home')">全国ビリヤード協会</p>
				<div class="row-div">
					<div class="login-div-1-div-even">
						<p class="div-hover" onclick="href_url('TheGame')">試合申し込み</p>
						<div class="CuttingLine-white"></div>
						<div class="row-div div-hover">
							<img src="img/home/home-vip.png" />
							<p onclick="href_url_login()">{{login_name}}</p>
						</div>
					</div>
					<img src="img/home/home-2.png" />
				</div>
			</div>
		</div>
		<div class="login-div-1-3 column-div" style="margin-bottom: 20px;">
			<div class="row row-around align-center">
				<p class="p-hover" onclick="href_url('home')">ホーム</p>
				<div class="CuttingLine-black"></div>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						協会について<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="column-div" onclick="href_url('AssociationProfile')">協会概要</li>
						<li class="column-div" onclick="href_url('AssociationNotice')">公告</li>
					</ul>
				</div>
				<div class="CuttingLine-black"></div>
				<div class="btn-group">
					<button class="btn btn-default btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						試合<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="column-div" onclick="href_url('TheGame')">試合予定</li>
						<li class="column-div" onclick="href_url('ScheduleIntroduce')">試合日程</li>
						<li class="column-div" onclick="href_url('ScheduleReview')">試合回顧</li>
						<li class="column-div" onclick="href_url('CompetitionNews')">ニュース</li>
					</ul>
				</div>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('ranking')">ランキング</p>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('introduce')">チャイニーズ8ボール</p>
				<div class="CuttingLine-black"></div>
				<p class="p-hover" onclick="href_url('MemberCenter')">会員センター</p>
			</div>
		</div>


		<div class="content-div column-div">
			<div class="content-div-title row justify-start align-center">
				<div></div>
				<p>
					試合><span>試合予定>詳細を見る</span>
				</p>
			</div>

			<div class="content-div-1 column-div">
				<div class="content-div-2 column-div">
					<p id="matchName">比赛通告比赛赛事名字填写位置</p>
					<p id="createTime">发布时间：2019-05-20</p>
					<button type="button" class="ivu-btn" onclick="add_click()"
						id="apply-key">試合申し込み</button>
				</div>
				<div
					style="width: 100%; height: 3px; background: rgba(226, 226, 226, 1); margin-bottom: 15px;"></div>

				<div style="width: 100%" id="result"></div>
				<div id="details" class="details-img"
					style="margin-bottom: 10px; width: 100%;">
					<img src="img/TheGame.png" width="100%"
						style="margin-bottom: 10px;" />
				</div>
				<div class="content-div-3 column-start">
					<p>比赛通告</p>
					<p>
						组织机构：<span id="organization"></span>
					</p>
					<p>
						比赛项目内容：<span id="matchContent"></span>
					</p>
					<p>
						时间地点：<span id="matchPlace"></span>
					</p>
					<p>规则</p>
					<p>
						日程安排：<span id="schedule"></span>
					</p>
					<p>
						开放报名时间：<span id="enrollTime"></span>
					</p>
					<p>
						报名截止时间：<span id="enrollTimeEnd"></span>
					</p>
				</div>
			</div>
		</div>

		<div class="v-transfer-dom" id="Modal-Add" style="display: none;">
			<div class="ivu-modal-mask" style="z-index: 1002;"></div>
			<div class="ivu-modal-wrap" style="z-index: 1002;">
				<div class="ivu-modal" style="width: 600px;">
					<div class="ivu-modal-content">
						<a class="ivu-modal-close" onclick="Modal_cancel()"><i
							class="ivu-icon ivu-icon-ios-close"></i></a>
						<div class="ivu-modal-header">
							<div class="ivu-modal-header-inner">試合申し込み</div>
						</div>
						<div class="ivu-modal-body">
							<div style="width: 100%;" class="column-center">
								<form class="form-model column-start" label-width="170"
									id="form-model" style="width: 100%;">
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>大会名：</span>
										</p>
										<div class="jeinpbox form-input-parent" style="width: 50%">
											<p>{{Entity.matchName}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>会員の氏名：</span>
										</p>
										<div class="form-input-parent" style="width: 130px">
											<input type="text" class="ivu-input ivu-input-default"
												id="surname" autocomplete="off" spellcheck="false"
												placeholder="例）ヤマダ" v-model="Entity.surname" maxlength="5"/>
										</div>
										<div class="row-div" style="width: 130px; margin-left: 10px;">
											<!-- <p class="flex-end form-p">
												<span class="form-span">*</span> <span>名</span> 
											</p>-->
											<div class="form-input-parent">
												<input type="text" class="ivu-input ivu-input-default"
													id="userName" autocomplete="off" spellcheck="false"
													placeholder="例）タロウ" v-model="Entity.userName" maxlength="5"/>
											</div>
										</div>
										<!-- <div style="width: 70%"></div> -->
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>性 别：</span>
										</p>
										<div class="form-input-parent flex-around" style="width: 50%">
											<label for="radio-1" class="row-div"> <input
												type="radio" name="radio-name" id="radio-1" value="1"
												checked="checked" />
												<p>男</p>
											</label> <label for="radio-2" class="row-div"> <input
												type="radio" name="radio-name" id="radio-2" value="0" />
												<p>女</p>
											</label>
										</div>
									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>生年月日：</span>
										</p>
										<div class="jeinpbox form-input-parent" style="width: 50%">
											<input type="text"
												class="jeinput ivu-input ivu-input-default" id="birthday"
												autocomplete="off" readonly="readonly" placeholder="生年月日"
												v-model="Entity.birthday">
										</div>
									</div>

									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>電話番号：</span>
										</p>
										<div class="form-input-parent" style="width: 50%">
											<input type="text" class="ivu-input ivu-input-default"
												id="phone" autocomplete="off" spellcheck="false"
												placeholder="電話番号" v-model="Entity.phone" />

										</div>

									</div>
									<div class="form-model-div flex-start">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>メールアドレス：</span>
										</p>
										<div class="form-input-parent" style="width: 50%">
											<input type="email" class="ivu-input ivu-input-default"
												id="email" autocomplete="off" spellcheck="false"
												placeholder="メールアドレス" v-model="Entity.email" />
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="align-items: flex-start; margin-top: 10px; margin-bottom: 10px;">
										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>プロフィール画像：</span>
										</p>
										<div class="form-input-parent" style="width: 50%">
											<label for="headImage" class="label-2"> <input
												type="file" id="headImage" style="display: none;"
												onchange="UploadImage(this.files[0],this,1)" id="headImage" />
											</label>
										</div>
									</div>

									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>报名费用</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>参加費：</span>
											<p style="color: #E60012FF; font-size: 18px;">{{Entity.enrollCost}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>银行汇款账号</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>口座番号：</span>
											<p>{{Entity.account}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>银行名称</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>銀行名：</span>
											<p>{{Entity.bankName}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>开户行</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>支店名：</span>
											<p>{{Entity.bank}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>会社名称</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>会社名：</span>
											<p>{{Entity.society}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>会社名称</span> -->
										</p>
										<div class="form-input-parent flex-start" style="width: 60%">
											<p style="color: red; font-size: 12px;">ご注意:お振込の際は必ず、ご登録のメールアドレスをご明記ください</p>
										</div>
									</div>
									<!-- <div class="form-model-div flex-start"
										style="align-items: flex-start; margin-top: 10px; margin-bottom: 10px;">

										<p class="flex-end form-p">
											<span class="form-span">*</span> <span>上传打款凭证</span>
										</p>
										<div class="form-input-parent">
											<label for="certificateImage" class="label-2"> <input
												type="file" id="certificateImage" style="display: none;"
												onchange="UploadImage(this.files[0],this,-1)"
												id="certificateImage" />
											</label>
										</div>
									</div> -->
								</form>
							</div>
						</div>
						<div class="ivu-modal-footer row-div">
							<!-- <button type="button" class="ivu-btn ivu-btn-text ivu-btn-large"
								onclick="Modal_cancel()">取消</button> -->
							<button type="button"
								class="ivu-btn ivu-btn-primary ivu-btn-large"
								onclick="Modal_ok()">次へ（払込受領書をアップロード）</button>
						</div>
					</div>

				</div>
			</div>
		</div>


		<div class="v-transfer-dom" id="Modal-payment" style="display: none;">
			<div class="ivu-modal-mask" style="z-index: 1002;"></div>
			<div class="ivu-modal-wrap" style="z-index: 1002;">
				<div class="ivu-modal" style="width: 600px;">
					<div class="ivu-modal-content">
						<a class="ivu-modal-close" onclick="Modal_payment_cancel()"><i
							class="ivu-icon ivu-icon-ios-close"></i></a>
						<div class="ivu-modal-header">
							<div class="ivu-modal-header-inner">銀行振込を確認</div>
						</div>
						<div class="ivu-modal-body">
							<div style="width: 100%;" class="column-center">
								<form class="form-model column-start" label-width="170"
									id="form-model" style="width: 100%;">
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>报名费用</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>参加費：</span>
											<p style="color: #E60012FF; font-size: 18px;">{{Entity.enrollCost}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>银行汇款账号</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>口座番号：</span>
											<p>{{Entity.account}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>银行名称</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>銀行名：</span>
											<p>{{Entity.bankName}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>开户行</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>支店名：</span>
											<p>{{Entity.bank}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>会社名称</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 50%">
											<span>会社名：</span>
											<p>{{Entity.society}}</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="min-height: 30px;">
										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>会社名称</span> -->
										</p>
										<div class="form-input-parent flex-start" style="width: 60%">
											<p style="color: red; font-size: 12px;">ご注意:お振込の際は必ず、ご登録のメールアドレスをご明記ください</p>
										</div>
									</div>
									<div class="form-model-div flex-start"
										style="align-items: flex-start; margin-top: 10px; margin-bottom: 10px;">

										<p class="flex-end form-p">
											<!-- <span class="form-span">*</span> <span>上传打款凭证</span> -->
										</p>
										<div class="form-input-parent flex-start span-titou"
											style="width: 60%; align-items: flex-start;">
											<span style="margin-right: 10px;">振込受領書をアップロード</span> <label
												for="certificateImage" class="label-2" style="width: 130px;">
												<input type="file" id="certificateImage"
												style="display: none;"
												onchange="UploadImage(this.files[0],this,-1)"
												id="certificateImage" />
											</label>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="ivu-modal-footer row-div">
							<button type="button"
								class="ivu-btn ivu-btn-primary ivu-btn-large"
								onclick="Modal_payment_ok()">申し込む</button>
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
										<p>报名成功,等待管理员审核</p>
									</div>
								</div>
								<div class="ivu-modal-confirm-footer">
									<!-- <button type="button" class="ivu-btn ivu-btn-small"
										style="margin-right: 5px;" onclick="transfer_cancel()">取消</button> -->
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

		<!-- 提示框 -->
		<div class="v-transfer-dom" id="succeed-dom" style="display: none;">
			<div class="ivu-modal-mask" style="z-index: 1003;"></div>
			<div class="ivu-modal-wrap" style="z-index: 1003;">
				<div class="ivu-modal" style="width: 416px;">
					<div class="ivu-modal-content">
						<div class="ivu-modal-body">
							<div class="ivu-modal-confirm">
								<!-- <div class="ivu-modal-confirm-head">
									<div
										class="ivu-modal-confirm-head-icon ivu-modal-confirm-head-icon-warning">
										<i class="ivu-icon ivu-icon-ios-alert"></i>
									</div>
									<div class="ivu-modal-confirm-head-title">警告</div>
								</div> -->
								<div class="ivu-modal-confirm-body" style="padding-left: 0px;">
									<div class="column-div">
										<img src="img/succeed.png" style="margin-bottom: 10px;">
										<p>お申し込みを受け付けました、</p>
										<p>当社からの審査をお待ちください</p>
									</div>
								</div>
								<div class="ivu-modal-confirm-footer">
									<!-- <button type="button" class="ivu-btn ivu-btn-small"
										style="margin-right: 5px;" onclick="transfer_cancel()">取消</button> -->
									<button type="button"
										class="ivu-btn ivu-btn-primary ivu-btn-large"
										onclick="succeed_ok()">确定</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="modle-div" id="Modal-dl" style="display: none;">
			<div class="modle-body" style="width: 500px;">
				<div class="row-div modle-head" style="border-bottom: none;">
					<p>ログイン</p>
					<!-- <p class="p-cancel modle-cancel">x</p> -->
				</div>
				<div class="column-div modle-content">

					<div class="column-div modle-content-div">
						<p style="width: 100%; text-align: left; margin-right: auto;">メ－ルアドレス入力：</p>
						<input type="text" id="email" class="gd-input"
							placeholder="メールアドレスが会員IDとなります" />
					</div>

					<div class="column-div modle-content-div-2">
						<p style="width: 100%">パスワ－ド：</p>
						<input type="password" id="password" class="gd-input"
							placeholder="6文字～32文字の半角英数字" />
					</div>
					<div class="column-div modle-content-div-2">
						<button type="button" class="login-but" onclick="login()">ログイン</button>
					</div>
					<div class="flex-between modle-content-div-2">
						<p>
							<!-- 报名后生成账号？立即<a onclick="apply_login()">注册</a> -->
							<a href="PC-ForgetPassword.jsp" class="a-href">パスワ－ドをお忘れの方</a>
						</p>
						<a onclick="apply_login()" class="a-href">非会員の方はこちら ></a>
					</div>
				</div>

				<div class="row-div modle-bottom"
					style="border-top: none; height: 20px;">
					<!-- <button type="button" class="cancel-but modle-cancel">取消</button>
						<button type="button" class="ok-but" onclick="Ok_click()">确定</button> -->
				</div>
			</div>
		</div>



		<div class="home-bottom-div column-div">
		<div class="flex-around">
			<img src="img/home/home-2-2.png" style="width: 150px;" />
			<div class="flex-around home-bottom-div-3" style="flex-wrap: wrap;">
				<ul class="column justify-start align-start">
					<li>一般社団法人</li>
					<li class="p-hover">全国ビリヤード協会</li>
					<li>JAPAN BILLIARD</li>
					<li>ASSOCIATION</li>
					<li class="row-div"><img src="img/home/home-number.png" />0411-xxxx-xxxx</li>
				</ul>
				<ul class="column justify-start align-start">
					<li class="p-hover" onclick="href_url('home')">ホーム</li>
				</ul>
				<ul class="column justify-start align-start">
					<li class="p-hover">協会について</li>
					<li class="p-hover" onclick="href_url('AssociationProfile')">協会概要</li>
					<li class="p-hover" onclick="href_url('AssociationNotice')">公告</li>

				</ul>
				<ul class="column justify-start align-start">
					<li class="p-hover">試合</li>
					<li class="p-hover" onclick="href_url('TheGame')">試合予定</li>
					<li class="p-hover" onclick="href_url('ScheduleIntroduce')">試合日程</li>
					<li class="p-hover" onclick="href_url('ScheduleReview')">試合回顧</li>
					<li class="p-hover" onclick="href_url('CompetitionNews')">ニュース</li>
				</ul>
				<ul class="column justify-start align-start">
					<li class="p-hover">ランキング</li>
					<li class="p-hover" onclick="href_url('ranking')">得点ランキング</li>
					<!-- <li class="p-hover" onclick="href_url('ranking')">ポイントランキング</li> -->
				</ul>
				<ul class="column justify-start align-start">
					<li class="p-hover" onclick="href_url('MemberCenter')">会員センター</li>
				</ul>
			</div>
		</div>
	</div>

	<div class="home-bottom-div-2 column-div">Copyright © 2015-2018
		WanPlus. All rights reserved. | 全国ビリヤード協会</div>
	</div>
</body>
<script type="text/javascript">
	var vm = new MVVM({
		el : '#mvvm',
		data : {
			login_name : '请登录',
			paymentID : null,
			matchId : null,
			Entity : {
				matchId : '',
				surname : '',
				userName : '',
				sex : '', // 性别
				birthday : '', // 生日
				phone : '', // 手机
				email : '', // 邮箱
				headImage : '', // 头像照片
				certificateImage : '',// 支付凭证
				matchName : '', // 赛事名称
				account : '', // 银行汇款账号
				society : '', // 会社名称
				bankName : '', //银行名称
				bank : '',// 开户行
				enrollCost : '' // 报名费用
			}
		}
	});
	function href_url_login() {
		if (vm.login_name === '请登录') {
			window.location.href = "PC-login.jsp";
		}
	}
	let label_width = document.getElementById('form-model').getAttribute(
			'label-width');
	let arr = document.getElementsByClassName('form-p')
	for (let i = 0; i < arr.length; i++) {
		arr[i].style.width = label_width + 'px';
	}

	if ("${user}") {
		vm.login_name = "${user.loginName}"
	} else {
		vm.login_name = "请登录"
	}
	jeDate("#birthday", {
		format : "YYYY-MM-DD",
		donefun : function(obj) {
			RegExpEntity.birthday.Event.onceEvent();
			vm.Entity.birthday = obj.val;
		}
	});
	let RegExpEntity = {
		phone : {
			RegExptype : 'phone',
			message : '携帯電話・ご職場など、緊急時に連絡が取れる電話番号をご入力ください',
			trigger : 'blur',
			id : 'phone'
		},
		email : {
			RegExptype : 'email',
			message : '请输入邮箱',
			trigger : 'blur',
			id : 'email'
		},
		surname : {
			RegExptype : 'string',
			message : 'カタカナ（セイ）',
			trigger : 'blur',
			id : 'surname'
		},
		userName : {
			RegExptype : 'string',
			message : 'カタカナ（メイ）',
			trigger : 'blur',
			id : 'userName'
		},
		birthday : {
			RegExptype : 'string',
			message : '生年月日',
			trigger : 'blur',
			id : 'birthday'
		},
		headImage : {
			RegExptype : 'string',
			message : '请上传头像',
			trigger : 'change',
			id : 'headImage'
		},
		certificateImage : {
			RegExptype : 'string',
			message : '请上传支付凭证',
			trigger : 'change',
			id : 'certificateImage'
		}
	}
	for ( let i in RegExpEntity) {
		RegExpEntity[i].Event = new formRegExp(RegExpEntity[i], 'form-model');
	}
	function Modal_ok() {
		vm.Entity.sex = $('input[name="radio-name"]:checked').val()
		let event = {
			"matchId" : vm.Entity.matchId,
			"surname" : vm.Entity.surname,
			"userName" : vm.Entity.userName,
			"sex" : vm.Entity.sex,
			"birthday" : vm.Entity.birthday,
			"phone" : vm.Entity.phone,
			"email" : vm.Entity.email,
			"headImage" : vm.Entity.headImage,
		// "certificateImage" : vm.Entity.certificateImage RegExpEntity[i].Event.label_error(entity)
		}
		let boo = true;
		for ( let i in event) {
			if (!event[i]) {
				let entity = document.getElementById(i);
				RegExpEntity[i].Event.label_error(entity)
				boo = false;
			}
		}
		if (boo) {
			submit(event)
		}
		// console.log(event)
	};
	function Modal_cancel() {
		$("#Modal-Add").toggle(300);
		$(document.body).css({
			"overflow-x" : "auto",
			"overflow-y" : "auto"
		});
	};

	function href_url(value) {
		window.location.href = 'PC-' + value + '.jsp';
	}
	function apply_login() {
		$("#Modal-dl").hide();
		$("#Modal-Add").show();
	};
	function add_click() {

		if ("${user}") {
			vm.login_name = "${user.loginName}"
			$("#Modal-Add").show();
		} else {
			vm.login_name = '请登录'
			$("#Modal-dl").show();
		}
		$(document.body).css({
			"overflow-x" : "hidden",
			"overflow-y" : "hidden"
		});
	}
	request();
	function request() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/match/current",
			dataType : "json",
			success : function(data) {
				if (data.code === 200) {
					console.log(data)
					let entity = data.result.match;
					let entity2 = data.result.config;
					let arr = entity.createTime.split(' ');
					$("#createTime").text('開催日時：' + arr[0]);
					$("#details").html(entity.details);
					$("#enrollTime").text(entity.enrollTime);
					$("#enrollTimeEnd").text(entity.enrollTimeEnd);
					$("#matchContent").text(entity.matchContent);
					$("#matchName").text(entity.matchName);
					$("#matchPlace").text(
							entity.matchTime + '   地点:' + entity.matchPlace);
					$("#organization").text(entity.organization);
					$("#schedule").text(entity.schedule);
					vm.Entity.matchName = entity.matchName;
					vm.Entity.matchId = entity.id;
					vm.Entity.account = entity2.account;
					vm.Entity.society = entity2.society;
					vm.Entity.bankName = entity2.bankName;
					vm.Entity.bank = entity2.bank;
					vm.Entity.enrollCost = '￥' + entity.enrollCost;
					if (entity.result) {
						$("#result").html(
								'<img src="' + entity.result
										+ '" width="100%" />');
					}
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
	function login() {
		if (!$('#password').val() || !$('#email').val()) {
			spop({
				template : '请输入账号和密码',
				group : 'submit-satus',
				style : 'warning',
				autoclose : 5000
			});
			return;
		}
		$.ajax({
			type : "post",
			async : false,
			url : "${pageContext.request.contextPath}/login",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				"loginName" : $('#email').val(),
				"password" : $('#password').val()
			}),
			success : function(data) {
				if (data.code === 200) {
					//window.location.href = "http://localhost:9090/billiard/System_home.jsp";
					let str = "${user.loginName}"
					console.log(str);
					$('#Modal-dl').hide();
					$('#Modal-fu').show();
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

	function Modal_payment_show() {
		$("#Modal-payment").show();
		$(document.body).css({
			"overflow-x" : "hidden",
			"overflow-y" : "hidden"
		});
	}
	function Modal_payment_ok() {
		let boo = true;
		if (!vm.Entity.certificateImage) {
			boo = false;
			RegExpEntity.certificateImage.Event.label_error(document
					.getElementById("certificateImage"));
		}
		if (boo) {
			AddModal_payment();
		}
	}
	function Modal_payment_cancel() {
		$("#Modal-payment").hide();
		$(document.body).css({
			"overflow-x" : "auto",
			"overflow-y" : "auto"
		});
	}
	function succeed_ok() {
		$("#succeed-dom").hide();
		$(document.body).css({
			"overflow-x" : "auto",
			"overflow-y" : "auto"
		});
	}
	function transfer_ok() {
		$("#transfer-dom").hide();
		Modal_payment_show();
		$(document.body).css({
			"overflow-x" : "auto",
			"overflow-y" : "auto"
		});

	}
	function AddModal_payment() {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/user/enroll/certificate",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify({
				userId : vm.paymentID,
				matchId : vm.matchId,
				certificateImage : vm.Entity.certificateImage
			}),
			success : function(data) {
				if (data.code === 200) {
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					$("#Modal-payment").hide();
					$("#succeed-dom").show();
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
	};
	function submit(event) {
		$.ajax({
			type : "POST",
			async : true,
			url : "${pageContext.request.contextPath}/match/enroll",
			contentType : "application/json; charset=utf-8",
			dataType : "json",
			data : JSON.stringify(event),
			success : function(data) {
				if (data.code === 200) {
					vm.paymentID = data.result.userId;
					vm.matchId = data.result.matchId
					spop({
						template : '成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
					});
					$("#Modal-Add").hide();
					$("#transfer-dom").show();
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
	function UploadImage(file, event, index) {
		let formdata = new FormData();
		formdata.append("file", file)
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/file/upload",
			data : formdata,
			contentType : false,
			processData : false,
			async : true,
			success : function(data) {
				if (data.code === 200) {
					$(event).attr('image', data.result)
					$(event).parent().css('background-image',
							'url(' + data.result + ')');
					$(event).parent().css('background-size', '100% 100%');
					if (index !== -1) {
						vm.Entity.headImage = data.result // 头像照片
					} else {
						vm.Entity.certificateImage = data.result// 支付凭证
					}
					spop({
						template : '图片上传成功',
						group : 'submit-satus',
						style : 'success',
						autoclose : 5000
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
