$(function() {
	$("#menuBar > dl > dd").hide();
	let dl = $("#menuBar> dl > dt[active-name='display']");
	dl.nextUntil("#menuBar > dl >dt").slideDown(300);
	dl.children('i:last-child').attr('class', 'ivu-icon ivu-icon-ios-arrow-up');
	$("#menuBar> dl > dt").click(function() {
		if ($(this).nextUntil("#menuBar > dl >dt").eq(0).css('display') === 'none') {
			$(this).children('i:last-child').attr('class', 'ivu-icon ivu-icon-ios-arrow-down')
			$(this).nextUntil("#menuBar > dl >dt").slideDown(300);
		} else {
			$(this).children('i:last-child').attr('class', 'ivu-icon ivu-icon-ios-arrow-up')
			$(this).nextUntil("#menuBar > dl >dt").slideUp(300);
		}
	});

	$("#menuBar > dl > dd").click(function() {
//		$("#menuBar > dl > dd").css('background', '#363E4F').css('color', 'hsla(0, 0%, 100%, .7)');
//		$("#menuBar > dl > dd").css('');
//		$(this).css('background', '#2b85e4').css('color', 'white');dd-choice
//		$(this).attr('class','dd-choice');
//		if ($(this).attr('src')) {
//			$('iframe').eq(0).attr('src', 'http://localhost:9090/billiard/' + $(this).attr('src') + '.jsp')
//		}
		
	})
	let height = window.innerHeight;
	$('#menuBar').css('height', height + 'px');
	window.addEventListener('resize', function () {
		let height = window.innerHeight;
		$('#menuBar').css('height', height + 'px');
	});
})
