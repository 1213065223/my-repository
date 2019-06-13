$(function() {
	$(".div-hover>p").click(function() {
		console.log($(this).text())
		if ($(this).text() === '请登录') {
			window.location.href = 'PC-login.jsp'
		}
	})
})