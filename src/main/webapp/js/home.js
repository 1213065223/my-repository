$(function() {
	$("#menuBar > dl > dd").hide();
	$("#menuBar").css('height', window.innerHeight + 'px');
	$("#menuBar> dl > dt").click(function() {
		if ($(this).nextUntil("#menuBar > dl >dt").eq(0).css('display') === 'none') {
			$(this).children('i:last-child').attr('class', 'fa fa-angle-down')
			$(this).nextUntil("#menuBar > dl >dt").slideDown(300);
		} else {
			$(this).children('i:last-child').attr('class', 'fa fa-angle-up')
			$(this).nextUntil("#menuBar > dl >dt").slideUp(300);
		}
	});

	$("#menuBar > dl > dd").click(function() {
		$("#menuBar > dl > dd").css('background', '#363E4F').css('color', 'hsla(0, 0%, 100%, .7)');
		$(this).css('background', '#2b85e4').css('color', 'white');
		if ($(this).attr('src')) {
			$('iframe').eq(0).attr('src', 'http://localhost:9090/billiard/' + $(this).attr('src') + '.jsp')
		}
		
	})
	let height = window.innerHeight;
	let contentHeight = height - 4 - $('#ivu-card-div').offset().top;
	$('#menuBar').css('height', height + 'px');
	$('#ivu-card-div').css('height', contentHeight  + 'px');
	window.addEventListener('resize', function () {
		let height = window.innerHeight;
		let contentHeight = height - 4 - $('#ivu-card-div').offset().top;
		$('#menuBar').css('height', height + 'px');
		$('#ivu-card-div').css('height', contentHeight  + 'px');
	});
})
