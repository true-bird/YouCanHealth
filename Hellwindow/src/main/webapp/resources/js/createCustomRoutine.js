

$(document).ready(function(){
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');
		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});
	
	var routine = new Array();
	for(var i=0;i<7;i++) {
		routine[i] = new Array();
	}
	$("input[type='checkbox']").click(function () {
		var id = "#"+$(this).parents(".tab-content").attr('id')+"-result";
		var ul = $(".selectResult").find(id);
		var name = $('<p>', {
			text: $(this).closest("p").text()
		});
		var cnt = $('<p>', {
			html: [$("<input type='number' id='sportsSet' placeholder='세트'>"),
				$("<span> / </span>"),
				$("<input type='number' id='sportsCnt' placeholder='횟수'>")]
		});
		if($(this).is(":checked")) {
			var li = ul.append($('<li>',{
				id: $(this).val(),
				html: [name,cnt]
			}));
		} else {
			ul.children("#"+$(this).val()).remove();
		}
	});
	
	
	$("#floatingButton").click(function() {
		var day = new Array();
		day[0] = $("#tab-1-result").children();
		day[1] = $("#tab-2-result").children();
		day[2] = $("#tab-3-result").children();
		day[3] = $("#tab-4-result").children();
		day[4] = $("#tab-5-result").children();
		day[5] = $("#tab-6-result").children();
		day[6] = $("#tab-7-result").children();
		for(var d =0; d<day.length;d++) {
			for(var i =0; i<day[d].length;i++) {
				var dto = new Array();
				dto.push($(day[d][i]).attr('id'));
				dto.push($(day[d][i]).find('#sportsSet').val());
				dto.push($(day[d][i]).find('#sportsCnt').val());
				routine[d].push(dto);
			}
		}
		
		$.ajax({
			type : 'POST',
			data : {target: JSON.stringify(routine)},
			datatype : 'json',
			url : '/myHell/routine/checkCustomRoutine',
			succes : function() {
				
			},
			error : function() {
				alert("error!!");
			}
		});
	});
	
	
	$(".sportInfo").click(function() {
		$("#msg").val('back');
		$("#sportsSeq").val($(this).prev('input').val());
		$("#sportsInfo").submit();
	});


});