
$(document).ready(function(){
	var background = $(".section-background.background-image");
	var url = $("#url").text();
	$(".daySports").click(function() {
		$("#sportsSeq").val($(this).find('.seq').text());
		$("#sportsInfo").submit();
	});
	
	$("#routineEnroll").submit(function(e) {
		if(!$("#userId").text()) {
			alert("로그인이 필요합니다.");
			e.preventDefault();
		}
	});
	if(url) background.css("background-image",url);
//	href="<%=contextPath%>/sports/sportsDetails?seq=${shoulder.seq}"
});