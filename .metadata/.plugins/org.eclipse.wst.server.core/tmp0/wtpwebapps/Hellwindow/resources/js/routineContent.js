
$(document).ready(function(){
	var cate = $("#title #category").text().split(' ')[0];
	var background = $(".section-background.background-image");
	var url = "url('/myHell/images/routine/";
	$(".sectionWrapper").click(function() {
		$("#url").val(url);
		$("#routineId").val($(this).attr('id'));
		$("#routineName").val($(this).find('.title').text());
		$("#routineDifficulty").val($(this).find('.difficulty').attr('id'));
		$("#routineCategory").val($(this).find('.category').text());
		$("#routineDetails").submit();
	});
	
	
	switch (cate){
		case '인기':
			url += "popular.jpg')";
			break;
		case '등':
			url += "back.png')";
			break;
		case '가슴':
			url += "chest.jpg')";
			break;
		case '삼분할':
			url += "leg.png')";
			break;
		default:
			break;
	}
	background.css("background-image",url);
});