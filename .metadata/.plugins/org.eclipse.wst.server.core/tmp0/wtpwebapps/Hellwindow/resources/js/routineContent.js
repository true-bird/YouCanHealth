
$(document).ready(function(){
	var cate = $("#title #category").text().split(' ')[0];
	var background = $(".section-background.background-image");
	switch (cate){
		case '인기':
			background.css("background-image","url('/myHell/images/routine/popular.jpg')");
			break;
		case '등':
			background.css("background-image","url('/myHell/images/routine/back.png')");
			break;
		case '가슴':
			background.css("background-image","url('/myHell/images/routine/chest.jpg')");
			break;
		case '삼분할':
			background.css("background-image","url('/myHell/images/routine/leg.png')");
			break;
		default:
			break;
	}
});