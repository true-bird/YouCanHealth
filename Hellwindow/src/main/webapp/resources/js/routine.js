

$(document).ready(function(){
	$(".section-background.background-image").css("background-image","url('/myHell/images/routine/popular.jpg')");
	$("select[name='category']").change(function() {
		$("#list").load("routineList",{ category: $(this).val()});
	});
});