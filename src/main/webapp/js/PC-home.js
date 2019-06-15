$(function() {
	$(".div-hover>p").click(function() {
		console.log($(this).text())
		if ($(this).text() === '请登录') {
			window.location.href = 'PC-login.jsp'
		}
	})
	
	$("#menuBar > dl > dd").click(
			function() {
				$("#menuBar > dl > dd").css('background', '#F8F8F8').css(
						'color', '#464c5b');
				$(this).css('background', '#2974B6').css('color', 'white');
				
				if ($(this).attr('src')) {
				
					window.location.href = 'PC-'+$(this).attr('src') + '.jsp';
				}
			})
	$('#menuBar').css('height', $(".content-div-1").css('height'));
	window.addEventListener('resize', function() {
		$('#menuBar').css('height', $(".content-div-1").css('height'));
	});
})