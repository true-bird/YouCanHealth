

$(document).ready(function(){
	$(".section-background.background-image").css("background-image","url('/myHell/images/routine/popular.jpg')");
	$("select[name='category']").change(function() {
		$("#list").load("/myHell/routine/routineList",{ category: $(this).val()});
	});
	
	$("#makeRoutine").submit(function(e) {
		if(!$("#userId").text()) {
			alert("로그인이 필요합니다.");
			e.preventDefault();
		}
	});
});